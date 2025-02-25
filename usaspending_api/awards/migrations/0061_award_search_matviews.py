# -*- coding: utf-8 -*-
# Generated by Django 1.11.21 on 2019-08-21 19:48
from __future__ import unicode_literals

import django.contrib.postgres.fields
import django.contrib.postgres.search
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0060_transactionfpds_solicitation_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pre2008AwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_pre2008_award_search',
            },
        ),
        migrations.CreateModel(
            name='ContractAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_contract_award_search',
            },
        ),
        migrations.CreateModel(
            name='DirectPaymentAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_directpayment_award_search',
            },
        ),
        migrations.CreateModel(
            name='GrantAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_grant_award_search',
            },
        ),
        migrations.CreateModel(
            name='IDVAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_idv_award_search',
            },
        ),
        migrations.CreateModel(
            name='LoanAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_loan_award_search',
            },
        ),
        migrations.CreateModel(
            name='OtherAwardSearchMatview',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'mv_other_award_search',
            },
        ),
        migrations.CreateModel(
            name='AwardSearchView',
            fields=[
                ('keyword_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('recipient_name_ts_vector', django.contrib.postgres.search.SearchVectorField()),
                ('award', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='awards.Award')),
                ('category', models.TextField()),
                ('type', models.TextField()),
                ('type_description', models.TextField()),
                ('piid', models.TextField()),
                ('fain', models.TextField()),
                ('uri', models.TextField()),
                ('total_obligation', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('description', models.TextField()),
                ('total_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_loan_value', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('total_obl_bin', models.TextField()),
                ('recipient_id', models.IntegerField()),
                ('recipient_name', models.TextField()),
                ('recipient_unique_id', models.TextField()),
                ('parent_recipient_unique_id', models.TextField()),
                ('business_categories', django.contrib.postgres.fields.ArrayField(base_field=models.TextField(), default=list, size=None)),
                ('action_date', models.DateField()),
                ('fiscal_year', models.IntegerField()),
                ('last_modified_date', models.TextField()),
                ('period_of_performance_start_date', models.DateField()),
                ('period_of_performance_current_end_date', models.DateField()),
                ('date_signed', models.DateField()),
                ('ordering_period_end_date', models.DateField(null=True)),
                ('original_loan_subsidy_cost', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('face_value_loan_guarantee', models.DecimalField(blank=True, decimal_places=2, max_digits=23, null=True)),
                ('awarding_agency_id', models.IntegerField()),
                ('funding_agency_id', models.IntegerField()),
                ('awarding_toptier_agency_name', models.TextField()),
                ('funding_toptier_agency_name', models.TextField()),
                ('awarding_subtier_agency_name', models.TextField()),
                ('funding_subtier_agency_name', models.TextField()),
                ('awarding_toptier_agency_code', models.TextField()),
                ('funding_toptier_agency_code', models.TextField()),
                ('awarding_subtier_agency_code', models.TextField()),
                ('funding_subtier_agency_code', models.TextField()),
                ('recipient_location_country_code', models.TextField()),
                ('recipient_location_country_name', models.TextField()),
                ('recipient_location_state_code', models.TextField()),
                ('recipient_location_county_code', models.TextField()),
                ('recipient_location_county_name', models.TextField()),
                ('recipient_location_zip5', models.TextField()),
                ('recipient_location_congressional_code', models.TextField()),
                ('recipient_location_city_name', models.TextField()),
                ('pop_country_code', models.TextField()),
                ('pop_country_name', models.TextField()),
                ('pop_state_code', models.TextField()),
                ('pop_county_code', models.TextField()),
                ('pop_county_name', models.TextField()),
                ('pop_city_code', models.TextField()),
                ('pop_zip5', models.TextField()),
                ('pop_congressional_code', models.TextField()),
                ('pop_city_name', models.TextField()),
                ('cfda_number', models.TextField()),
                ('sai_number', models.TextField()),
                ('pulled_from', models.TextField()),
                ('type_of_contract_pricing', models.TextField()),
                ('extent_competed', models.TextField()),
                ('type_set_aside', models.TextField()),
                ('product_or_service_code', models.TextField()),
                ('product_or_service_description', models.TextField()),
                ('naics_code', models.TextField()),
                ('naics_description', models.TextField()),
            ],
            options={
                'managed': False,
                'db_table': 'vw_award_search',
            },
        ),
    ]
