from django.contrib import admin
from django import forms
from models import ProfilePro, ProfilePart
from lozapp.models import Categorie, Event, Address

from ckeditor.widgets import CKEditorWidget

class EventAdminForm(forms.ModelForm):
    desc = forms.CharField(widget=CKEditorWidget())
    class Meta:
        model = Event
        fields = "__all__"

class EventAdmin(admin.ModelAdmin):
    form = EventAdminForm

admin.site.register(ProfilePart)
admin.site.register(ProfilePro)
admin.site.register(Event, EventAdmin)
admin.site.register(Categorie)
admin.site.register(Address)
