# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-05-26 12:50
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import easy_thumbnails.fields
import userena.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('lozapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='LozProfile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mugshot', easy_thumbnails.fields.ThumbnailerImageField(blank=True, help_text='A personal image displayed in your profile.', upload_to=userena.models.upload_to_mugshot, verbose_name='mugshot')),
                ('privacy', models.CharField(choices=[(b'open', 'Open'), (b'registered', 'Registered'), (b'closed', 'Closed')], default=b'registered', help_text='Designates who can view your profile.', max_length=15, verbose_name='privacy')),
                ('address', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='lozapp.Address')),
                ('favorite_categories', models.ManyToManyField(to='lozapp.Categorie')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='lozprofile', to=settings.AUTH_USER_MODEL, verbose_name='utilisateur')),
            ],
            options={
                'abstract': False,
                'permissions': (('view_profile', 'Can view profile'),),
            },
        ),
        migrations.CreateModel(
            name='ProfilePart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('profile', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='particuler', to='lozprofile.LozProfile')),
            ],
        ),
        migrations.CreateModel(
            name='ProfilePro',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_name', models.CharField(max_length=200)),
                ('siret', models.IntegerField()),
                ('number', models.IntegerField()),
                ('profile', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='pro', to='lozprofile.LozProfile')),
            ],
        ),
    ]
