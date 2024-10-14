from django.contrib import messages
from django.shortcuts import render
from django.views.generic import TemplateView


class ContactView(TemplateView):
    text = _("Your form acadcda wcw")
    messages.success(text)
    template_name = 'contact.html'



