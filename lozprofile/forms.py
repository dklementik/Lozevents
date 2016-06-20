#!/usr/bin/env python
#-*- coding: utf-8 -*-

from django import forms
from django.utils.translation import ugettext_lazy as _
from django.forms.models import inlineformset_factory



from userena.forms import SignupForm
from models import ProfilePart, ProfilePro
from lozapp.models import Categorie, Address


class LozProfileSignupForm(SignupForm):
    first_name = forms.CharField(label=_(u'First name'),
                                max_length=30,
                                required=False)

    last_name = forms.CharField(label=_(u'Last name'),
                                max_length=30,
                                required=False)
    street = forms.CharField(max_length=45)
    zipcode = forms.CharField(max_length=5)
    city =  forms.CharField(max_length=100)
    favorite_categories = forms.ModelMultipleChoiceField(queryset=Categorie.objects.all())

    def save(self):
        new_user = super(LozProfileSignupForm, self).save()
        user_profile = new_user.lozprofile

        user_profile.first_name = self.cleaned_data['first_name']
        user_profile.last_name = self.cleaned_data['last_name']

        address = Address.objects.create(street=self.cleaned_data['street'],
        zipcode=self.cleaned_data['zipcode'],
        city=self.cleaned_data['city'])

        user_profile.address = address

        for g in self.cleaned_data['favorite_categories']:
            user_profile.favorite_categories.add(g)

        user_profile.save()

        return new_user


class SignupFormPart(LozProfileSignupForm):

    def save(self):
        new_user = super(SignupFormPart, self).save()
        ProfilePart.objects.create(profile=new_user.lozprofile)
        return new_user


class SignupFormPro(LozProfileSignupForm):

    company_name = forms.CharField(label=_(u'Company name'),
                                 max_length=200,
                                 required=False)

    siret = forms.IntegerField(label=_(u'siret'))
    number = forms.IntegerField(label=_(u'number'))

    def save(self):
        new_user = super(SignupFormPro, self).save()

        ProfilePro.objects.create(profile=new_user.lozprofile,
                                company_name = self.cleaned_data['company_name'],
                                siret = self.cleaned_data['siret'],
                                number = self.cleaned_data['number'])

        return new_user
