# -*- coding: utf-8 -*-
# Generated by Django 1.11.23 on 2019-08-15 11:50
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0057_auto_20190810_0246'),
    ]

    operations = [
        migrations.AddField(
            model_name='brokersubaward',
            name='place_of_perform_street',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='brokersubaward',
            name='sub_place_of_perform_street',
            field=models.TextField(blank=True, null=True),
        ),
    ]
