#!/usr/bin/env python
#-*- coding: utf-8 -*-

from django import forms
from models import Event, Categorie

class EventForm(forms.ModelForm):

    street = forms.CharField(max_length=45)
    zipcode = forms.CharField(max_length=5)
    city =  forms.CharField(max_length=100)

    class Meta:
        model = Event
        exclude = ['participant', 'is_validated', 'addr']
        widgets = {
            "pro" : forms.HiddenInput()
            }


class SearchEventForm(forms.Form):
    PERIODE_CHOICES = (
        ("today", "Aujourd'hui"),
        ("tomorrow", "Demain"),
        ("this_we", "Ce week-end"),
        ("next_month", "Le mois prochain"),
    )

    category = forms.ModelChoiceField(queryset=Categorie.objects.all(),empty_label= None)
    localisation = forms.CharField()
    periode = forms.ChoiceField(choices=PERIODE_CHOICES)
