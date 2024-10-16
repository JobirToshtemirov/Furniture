from django.contrib.auth.views import LogoutView
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import TemplateView


class RegisterView(TemplateView):
    template_name = 'registration/user-register.html'


class LoginView(TemplateView):
    template_name = 'registration/user-login.html'


# class CustomLogoutView(LogoutView):
#     next_page = reverse_lazy('')

