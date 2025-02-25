# -*- coding: utf-8 -*-
# Generated by Django 1.11.21 on 2019-09-18 00:00
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0062_awardsummarymatview'),
    ]

    operations = [
        migrations.AddField(
            model_name='award',
            name='officer_1_amount',
            field=models.DecimalField(blank=True, decimal_places=2, help_text='Executive Compensation Officer 1 Amount', max_digits=23, null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_1_name',
            field=models.TextField(blank=True, help_text='Executive Compensation Officer 1 Name', null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_2_amount',
            field=models.DecimalField(blank=True, decimal_places=2, help_text='Executive Compensation Officer 2 Amount', max_digits=23, null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_2_name',
            field=models.TextField(blank=True, help_text='Executive Compensation Officer 2 Name', null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_3_amount',
            field=models.DecimalField(blank=True, decimal_places=2, help_text='Executive Compensation Officer 3 Amount', max_digits=23, null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_3_name',
            field=models.TextField(blank=True, help_text='Executive Compensation Officer 3 Name', null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_4_amount',
            field=models.DecimalField(blank=True, decimal_places=2, help_text='Executive Compensation Officer 4 Amount', max_digits=23, null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_4_name',
            field=models.TextField(blank=True, help_text='Executive Compensation Officer 4 Name', null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_5_amount',
            field=models.DecimalField(blank=True, decimal_places=2, help_text='Executive Compensation Officer 5 Amount', max_digits=23, null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='officer_5_name',
            field=models.TextField(blank=True, help_text='Executive Compensation Officer 5 Name', null=True),
        ),
        migrations.AddField(
            model_name='award',
            name='earliest_transaction',
            field=models.ForeignKey(help_text='The earliest transaction by action_date and mod associated with this award', null=True, on_delete=django.db.models.deletion.CASCADE, related_name='earliest_for_award', to='awards.TransactionNormalized'),
        ),
    ]
