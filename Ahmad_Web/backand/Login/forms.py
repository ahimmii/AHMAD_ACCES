from django import forms
from .models import Loginmodel

class FormContactForm(forms.ModelForm):
    class Meta:
        model= Loginmodel
        fields= ["Login", "Password"]