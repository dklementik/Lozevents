#!/usr/bin/env python
#-*- coding: utf-8 -*-

from django.conf.urls import url, include
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings

from lozapp.views import HomepageTemplateView

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^event/', include('lozapp.urls'), name="event"),
    url(r'^profile/', include('lozprofile.urls'), name="profile"),
    url(r'^$', HomepageTemplateView.as_view(), name="home-page"),


]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
