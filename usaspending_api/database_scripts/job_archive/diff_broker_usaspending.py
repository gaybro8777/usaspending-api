# Jira Ticket Number(s): <DEV-2479, DEV-3319>
# Expected CLI: $ python usaspending_api/database_scripts/job_archive/diff_broker_usaspending.py
# Purpose:
#   Create a table which includes identification details of transaction records which
#   contain discrepencies between Broker and USAspending outside of the intential
#   discrepencies being introduced (Types, column names, upper-casing strings, etc)

import argparse
import logging
import math
import os
import psycopg2
from psycopg2 import extras
import time

from pathlib import Path


CREATE_TEMP_TABLE = """
CREATE UNLOGGED TABLE IF NOT EXISTS {table} (
    system text,
    transaction_id bigint,
    broker_surrogate_id bigint,
    broker_derived_unique_key text,
    piid_fain_uri text,
    unique_award_key text,
    action_date date,
    record_last_modified date,
    broker_record_create timestamp with time zone,
    broker_record_update timestamp with time zone,
    usaspending_record_create timestamp with time zone,
    usaspending_record_update timestamp with time zone
)
"""

GET_MIN_MAX_FABS_SQL_STRING = """
SELECT
    MIN(published_award_financial_assistance_id), MAX(published_award_financial_assistance_id)
FROM
    published_award_financial_assistance
"""

GET_MIN_MAX_FPDS_SQL_STRING = """
SELECT
    MIN(detached_award_procurement_id), MAX(detached_award_procurement_id)
FROM
    detached_award_procurement
"""

GLOBALS = {
    "broker_db": os.environ["DATA_BROKER_DATABASE_URL"],
    "chunk_size": 250000,
    "ending_id": None,
    "fabs": {"min_max_sql": GET_MIN_MAX_FABS_SQL_STRING, "sql": "", "diff_sql_file": "fabs_diff_select.sql"},
    "fpds": {"min_max_sql": GET_MIN_MAX_FPDS_SQL_STRING, "sql": "", "diff_sql_file": "fpds_diff_select.sql", "test_sql_file": "fpds_test_sql.sql"},
    "script_dir": Path(__file__).resolve().parent,
    "starting_id": None,
    "temp_table": "temp_dev_3319_problematic_transaction_zito",
    "transaction_types": ["fabs", "fpds"],
    "usaspending_db": os.environ["DATABASE_URL"],
}


class Timer:
    def __enter__(self):
        self.start = time.perf_counter()
        return self

    def __exit__(self, *args, **kwargs):
        self.end = time.perf_counter()
        self.elapsed = self.end - self.start
        self.elapsed_as_string = self.pretty_print_duration(self.elapsed)

    def estimated_remaining_runtime(self, ratio):
        end = time.perf_counter()
        elapsed = end - self.start
        est = max((elapsed / ratio) - elapsed, 0.0)
        return self.pretty_print_duration(est)

    @staticmethod
    def pretty_print_duration(elapsed):
        f, s = math.modf(elapsed)
        m, s = divmod(s, 60)
        h, m = divmod(m, 60)
        return "%d:%02d:%02d.%04d" % (h, m, s, f * 10000)


def main():
    logger.info("STARTING SCRIPT")
    verify_or_create_table()
    for step in GLOBALS["transaction_types"]:
        logger.info("Running: {}".format(step))
        GLOBALS[step]["sql"] = read_sql(step)
        runner(step)

    if GLOBALS["run_indexes"]:
        create_indexes()


def verify_or_create_table():
    with psycopg2.connect(dsn=GLOBALS["usaspending_db"]) as connection:
        with connection.cursor() as cursor:
            if GLOBALS["drop_table"]:
                cursor.execute("DROP TABLE IF EXISTS {}".format(GLOBALS["temp_table"]))
            cursor.execute(CREATE_TEMP_TABLE.format(table=GLOBALS["temp_table"]))


def read_sql(transaction_type):
    if GLOBALS.get("diagnose",False):
        p = Path(GLOBALS["script_dir"]).joinpath(GLOBALS[transaction_type]["test_sql_file"])
    else:
        p = Path(GLOBALS["script_dir"]).joinpath(GLOBALS[transaction_type]["diff_sql_file"])
    with p.open() as f:
        return "".join(f.readlines())


def log(msg, transaction_type=None):
    if transaction_type:
        logger.info("{{{}}} {}".format(transaction_type, msg))
    else:
        logger.info(msg)


def return_min_max_ids(sql, cursor):
    cursor.execute(sql)
    results = cursor.fetchall()
    min_id, max_id = results[0]
    GLOBALS["starting_id"] = GLOBALS["starting_id"] or min_id
    GLOBALS["ending_id"] = GLOBALS["ending_id"] or max_id
    return GLOBALS["starting_id"], GLOBALS["ending_id"]


def runner(transaction_type):
    func_config = GLOBALS[transaction_type]
    with psycopg2.connect(dsn=GLOBALS["broker_db"]) as connection:
        with connection.cursor() as cursor:
            min_id, max_id = return_min_max_ids(func_config["min_max_sql"], cursor)
            total = max_id - min_id + 1

            log("Min {} ID: {:,}".format(transaction_type, min_id), transaction_type)
            log("Max {} ID: {:,}".format(transaction_type, max_id), transaction_type)
            log("=====> IDs in range: {:,} <=====".format(total), transaction_type)

    with psycopg2.connect(dsn=GLOBALS["usaspending_db"]) as connection:
        _min = min_id
        while _min <= max_id:
            _max = min(_min + GLOBALS["chunk_size"] - 1, max_id)
            progress = (_max - min_id + 1) / total

            if GLOBALS.get("diagnose", False):
                query = "{sql}".format(
                    sql=func_config["sql"].format(minid=_min, maxid=_max)
                )

                log("Processing records with IDs ({:,} => {:,})".format(_min, _max), transaction_type)
                with Timer() as chunk_timer:
                    with connection.cursor(cursor_factory=extras.DictCursor) as cursor:
                        cursor.execute(query)
                        for result in cursor.fetchall():
                            for row in result:
                                print(row)
                    connection.commit()

            else:
                query = "INSERT INTO {table} {sql}".format(
                    table=GLOBALS["temp_table"], sql=func_config["sql"].format(minid=_min, maxid=_max)
                )

                log("Processing records with IDs ({:,} => {:,})".format(_min, _max), transaction_type)
                with Timer() as chunk_timer:
                    with connection.cursor() as cursor:
                        cursor.execute(query)
                    connection.commit()

            log("---> Iteration Duration: {}".format(chunk_timer.elapsed_as_string), transaction_type)
            log("---> Est. Completion: {}".format(chunk_timer.estimated_remaining_runtime(progress)), transaction_type)
            # Move to next chunk
            _min = _max + 1

    log("Completed execution on {}".format(transaction_type), transaction_type)


def create_indexes():
    indexes = [
        "CREATE INDEX IF NOT EXISTS ix_{table}_action_date ON {table} USING BTREE(action_date, system) WITH (fillfactor=99)",
        "CREATE INDEX IF NOT EXISTS ix_{table}_broker_rec_create ON {table} USING BTREE(broker_record_create) WITH (fillfactor=99)",
        "CREATE INDEX IF NOT EXISTS ix_{table}_piid_fain_uri ON {table} USING BTREE(piid_fain_uri, system) WITH (fillfactor=99)",
        "CREATE INDEX IF NOT EXISTS ix_{table}_usa_record_create ON {table} USING BTREE(usaspending_record_create) WITH (fillfactor=99)",
        "CREATE INDEX IF NOT EXISTS ix_{table}_broker_rec_update ON {table} USING BTREE(broker_record_update) WITH (fillfactor=99)",
        "CREATE INDEX IF NOT EXISTS ix_{table}_usa_rec_update ON {table} USING BTREE(usaspending_record_update) WITH (fillfactor=99)",
        "CREATE UNIQUE INDEX IF NOT EXISTS ix_{table}_transaction_id ON {table} USING BTREE(transaction_id) WITH (fillfactor=99)",
    ]

    with psycopg2.connect(dsn=GLOBALS["usaspending_db"]) as connection:
        with connection.cursor() as cursor:
            for index in indexes:
                sql = index.format(table=GLOBALS["temp_table"])
                log("running '{}'".format(sql))
                cursor.execute(sql)


if __name__ == "__main__":
    logger = logging.getLogger()
    logger.setLevel(logging.INFO)
    ls = logging.StreamHandler()
    ls.setFormatter(logging.Formatter("[%(asctime)s] <%(levelname)s> %(message)s", datefmt="%Y/%m/%d %H:%M:%S %z (%Z)"))
    logger.addHandler(ls)

    parser = argparse.ArgumentParser()
    parser.add_argument("--chunk-size", type=int, default=GLOBALS["chunk_size"])
    parser.add_argument("--create-indexes", action="store_true")
    parser.add_argument("--max-id", type=int)
    parser.add_argument("--min-id", type=int)
    parser.add_argument("--one-type", choices=["fpds", "fabs"])
    parser.add_argument("--recreate-table", action="store_true")
    parser.add_argument("--diagnose")
    args = parser.parse_args()

    GLOBALS["chunk_size"] = args.chunk_size
    GLOBALS["drop_table"] = args.recreate_table
    GLOBALS["ending_id"] = args.max_id
    GLOBALS["run_indexes"] = args.create_indexes
    GLOBALS["starting_id"] = args.min_id
    if args.one_type:
        GLOBALS["transaction_types"] = [args.one_type]
    if args.diagnose:
        GLOBALS["diagnose"] = True

    main()
