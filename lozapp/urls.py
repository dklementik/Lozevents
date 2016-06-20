#!/usr/bin/env python
#-*- coding: utf-8 -*-

from views import event_display, EventListView, EventCreateView, EventDisplayView
from django.conf.urls import url, include

urlpatterns = [
    url(r'^list$', EventListView.as_view(), name="event-list"),
    url(r'^create$', EventCreateView.as_view(), name="event-create"),
    url(r'^(?P<slug>[\w-]+)$', EventDisplayView.as_view(), name="event-display"),
]
