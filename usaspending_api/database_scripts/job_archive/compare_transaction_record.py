# Jira Ticket Number(s): <DEV-2479, DEV-3319>
# Expected CLI: $ python usaspending_api/database_scripts/job_archive/compare_transaction_record.py --detached_award_procurement_id <id>
# Purpose:
#   using the mutually exclusive flags, provide a broker surrogate key to
#   compare a transaction record between Broker and USAspending for
#   non-intential discrepancies. By default it reports the problematic fields (if any)
#   It can also dump the records to JSON to compare in a diff tool or visually inspect.


import argparse
import asyncio
import asyncpg
import json
import logging
import os

from compare_transaction_record_data import (
    ASSISTANCE_BROKER_USASPENDING_MAP,
    DETATCHED_AWARD_PROCURMENT,
    PROCUREMENT_BROKER_USASPENDING_MAP,
    PUBLISHED_AWARD_FINANCIAL_ASSISTANCE,
    TRANSACTION_FABS,
    TRANSACTION_FPDS,
)


class FailedQuery(Exception):
    pass


logger = logging.getLogger()
logger.setLevel(logging.INFO)
ls = logging.StreamHandler()
ls.setFormatter(logging.Formatter("[%(asctime)s] <%(levelname)s> %(message)s", datefmt="%Y/%m/%d %H:%M:%S %z (%Z)"))
logger.addHandler(ls)


broker_db = os.environ["DATA_BROKER_DATABASE_URL"]
usaspending_db = os.environ["DATABASE_URL"]


async def async_run_select(sql, dsn):
    conn = await asyncpg.connect(dsn=dsn)
    sql_result = await conn.fetch(sql)
    await conn.close()
    return sql_result


def convert_record_to_safe_dict(d):
    new_dict = {}
    for k, v in d.items():
        if v is None:
            new_dict[k] = v
        else:
            new_dict[k] = str(v).upper()

    return new_dict


def print_dict_as_json(header, d):
    header = "## {} ".format(header.upper())
    print(header + "#" * (50 - len(header)))
    print(json.dumps(convert_record_to_safe_dict(d), indent=4, sort_keys=True))
    print("---")


def query_systems(broker_sql, usaspending_sql):
    loop = asyncio.new_event_loop()
    broker_row = asyncio.ensure_future(async_run_select(broker_sql, broker_db), loop=loop)
    usaspending_row = asyncio.ensure_future(async_run_select(usaspending_sql, usaspending_db), loop=loop)
    try:
        loop.run_until_complete(asyncio.gather(broker_row, usaspending_row))
    except (asyncpg.exceptions.UndefinedObjectError, asyncpg.exceptions.UndefinedColumnError):
        logger.error("Failed to obtain records for comparision")
        raise FailedQuery
    loop.close()

    if len(broker_row.result()) == 0:
        logger.error("No Record from Broker")
        raise SystemExit
    if len(usaspending_row.result()) == 0:
        logger.error("No Record from USAspending")
        raise SystemExit
    return broker_row.result()[0], usaspending_row.result()[0]


def main(is_fpds, surrogate_key):
    discrepancies = 0
    if args.published_award_financial_assistance_id:
        broker_sql, usaspending_sql = get_sql_strings(is_fpds, surrogate_key)
    else:
        broker_sql, usaspending_sql = get_sql_strings(is_fpds, surrogate_key)
    try:
        broker_record, usaspending_record = query_systems(broker_sql, usaspending_sql)
    except FailedQuery:
        logger.error("UNABLE TO PROCESS {} ({})".format(surrogate_key, "FPDS" if is_fpds else "FABS"))
        raise SystemExit

    if is_fpds:
        mapper = PROCUREMENT_BROKER_USASPENDING_MAP
    else:
        mapper = ASSISTANCE_BROKER_USASPENDING_MAP

    broker_record_dict = convert_record_to_safe_dict(broker_record)
    usaspending_record_dict = convert_record_to_safe_dict(usaspending_record)

    for broker, usaspending in mapper.items():
        if (
                (broker_record_dict.get(broker, "Sentinel") != "Sentinel" and usaspending_record_dict.get(usaspending, "Sentinel") != "Sentinel")
                and
                ((broker_record_dict[broker] is None and usaspending_record_dict[usaspending] is not None)
            or (broker_record_dict[broker] is not None and usaspending_record_dict[usaspending] is None)
            or (broker_record_dict[broker] != usaspending_record_dict[usaspending]))
        ):
            discrepancies += 1
            msg = "-- [{} / {}] Broker: '{}' USAspending: '{}'"
            logger.info(msg.format(broker, usaspending, broker_record[broker], usaspending_record[usaspending]))

    if DUMP_JSON:
        print_dict_as_json("broker", broker_record_dict)
        print_dict_as_json("usaspending", usaspending_record_dict)

    if discrepancies:
        msg = "REPORT for ID {} ({}): {} Total discrepancies!"
        logger.warn(msg.format(surrogate_key, "FPDS" if is_fpds else "FABS", discrepancies))
    else:
        logger.info("REPORT for ID {} ({}): No discrepancies!!!".format(surrogate_key, "FPDS" if is_fpds else "FABS"))


def get_sql_strings(is_fpds, surrogate_key):
    return get_broker_string(is_fpds, surrogate_key), get_usaspending_string(is_fpds, surrogate_key)


def get_broker_string(is_fpds, surrogate_key):
    sql = "SELECT {cols} FROM {table} WHERE {table}_id = {key}"
    if is_fpds:
        return sql.format(cols=DETATCHED_AWARD_PROCURMENT, table="detached_award_procurement", key=surrogate_key)
    return sql.format(
        cols=PUBLISHED_AWARD_FINANCIAL_ASSISTANCE, table="published_award_financial_assistance", key=surrogate_key
    )


def get_usaspending_string(is_fpds, surrogate_key):
    sql = "SELECT {cols} FROM transaction_{type} WHERE {table}_id = {key}"

    if is_fpds:
        return sql.format(cols=TRANSACTION_FPDS, type="fpds", table="detached_award_procurement", key=surrogate_key)

    return sql.format(
        cols=TRANSACTION_FABS, type="fabs", table="published_award_financial_assistance", key=surrogate_key
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--dump-json", action="store_true")
    mutually_exclusive_group = parser.add_mutually_exclusive_group(required=True)
    mutually_exclusive_group.add_argument("--detached_award_procurement_id", type=int)
    mutually_exclusive_group.add_argument("--published_award_financial_assistance_id", type=int)
    args = parser.parse_args()

    DUMP_JSON = args.dump_json

    if args.published_award_financial_assistance_id:
        main(False, args.published_award_financial_assistance_id)
    else:
        main(True, args.detached_award_procurement_id)
