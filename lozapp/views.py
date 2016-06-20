#!/usr/bin/env python
#-*- coding: utf-8 -*-

from django.shortcuts import render
from django.core.urlresolvers import reverse, reverse_lazy
from django.http import HttpResponseRedirect, HttpResponse

from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView, TemplateView
from models import *
from forms import EventForm


class HomepageTemplateView(TemplateView):
   template_name = "homepage.html"

   def get_context_data(self, **kwargs):
       context = super(HomepageTemplateView, self).get_context_data(**kwargs)
       context["events"] = Event.objects.all()
       context["events_a_venir"] = Event.objects.order_by('begin_date')
       context["events_ajoute"] = Event.objects.order_by('date_creation')
       return context

def event_display(request, slug):
    return render(request, "event_display.html")

class EventListView(ListView):
    model = Event
    template_name = "event_list.html"
    context_object_name = "events"
    queryset = Event.objects.all().order_by('date_creation') #remplace la fonction get_queryset

    def get_queryset(self):
        categorie_id = self.request.GET.get("category", None)
        localisation = self.request.GET.get("localisation", None)
        periode = self.request.GET.get("periode", None)

        events = Event.objects.all()
        if categorie_id != None:
            category = Categorie.objects.get(id=categorie_id)
            events = category.event_set.all()
        if localisation != None:
            pass
        if periode !=None:
            pass

        return events

class EventCreateView(CreateView):
    model = Event
    form_class = EventForm
    template_name = "event_create.html"

    def get_form_kwargs(self):
        form_kwargs = super(EventCreateView, self).get_form_kwargs()
        form_kwargs.update({
            "initial" : {
                "pro" : self.request.user.lozprofile.pro
            }
        })
        return form_kwargs

    def form_valid(self, form):
        if form.is_valid():
            event=form.save()
            event.addr = Address.objects.create(street=form.cleaned_data["street"],
                                                zipcode=form.cleaned_data["zipcode"],
                                                city=form.cleaned_data["city"])
            event.save()
            return HttpResponseRedirect(reverse("event-display", args=[event.slug]))
        return self.render_to_response(self.get_context_data(form=form))

class EventDisplayView(DetailView):
    model = Event
    template_name = "event_display.html"

    def get_context_data(self, **kwargs):
       context = super(EventDisplayView, self).get_context_data(**kwargs)
       context["event"] = self.get_object()
       return context
