# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-06-16 12:52
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('lozapp', '0002_event_pro'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='addr',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='lozapp.Address'),
        ),
    ]