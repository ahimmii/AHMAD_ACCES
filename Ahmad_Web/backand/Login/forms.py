from django import forms
from .models import stockmodel

class FormContactForm(forms.ModelForm):
    class Meta:
        model= stockmodel
        fields= ["Product", "Qte", "B_Price", "S_price"]