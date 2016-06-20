# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-06-16 14:12
from __future__ import unicode_literals

import autoslug.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('lozapp', '0003_auto_20160616_1452'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='slug',
            field=autoslug.fields.AutoSlugField(editable=False, null=True, populate_from='title', unique_with=('title',)),
        ),
    ]
