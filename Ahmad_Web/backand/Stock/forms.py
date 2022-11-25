from django import forms
from .models import stockmodel

class stockForm(forms.ModelForm):
    class Meta:
        model= stockmodel
        fields= ["Id_P","Product", "Qte", "B_Price", "S_price","codebar","datetimes"]