# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-10-17 19:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('references', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='NAICS',
            fields=[
                ('code', models.TextField(primary_key=True, serialize=False)),
                ('description', models.TextField()),
            ],
            options={
                'db_table': 'naics',
                'managed': True,
            },
        ),
    ]
