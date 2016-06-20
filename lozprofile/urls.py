#!/usr/bin/env python

from django.conf.urls import url, include
from views import *
from forms import SignupFormPart, SignupFormPro


urlpatterns = [
    url(r'^', include('userena.urls')),
    # url(r'^ (?P<pk>[\w-]+)$',ProfileDisplayView.as_view(), name='profile-display'),
    # url(r'^accounts/signup/$', 'accounts.views.sign_up'),
    url(r'^signin$', 'userena.views.signin', {'template_name': 'signin.html'}, name="lozsignin"),
    url(r'^signout$', 'userena.views.signout', name="lozsignout"),
    url(r'^signup/part$', 'userena.views.signup', {'template_name': 'signup_part.html', 'success_url': '/', 'signup_form': SignupFormPart}, name="lozsignup-part"),
    url(r'^signup/pro$', 'userena.views.signup', {'template_name': 'signup_pro.html', 'success_url': '/', 'signup_form': SignupFormPro}, name="lozsignup-pro"),

    # url(r'^login$', login, name="login"),
    # url(r'^pro/signup$', signup_pro, name="sign-up-pro"),
    # url(r'^part/signup$', signup_part, name="sign-up-part"),
    # url(r'^pro/(?P<username>\w+)$', profile_pro_display, name="profile-pro-display" ),
    # url(r'^part/(?P<username>\w+)$', profile_part_display,name="profile-part-display" ),

    #La connexion (signin) est la meme pour le pro et le particulier
]
