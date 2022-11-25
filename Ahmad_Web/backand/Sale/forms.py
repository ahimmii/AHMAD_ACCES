from django import forms
from Dashboard.models import ordermodel
from .models import basketmodel

class orderForm(forms.ModelForm):
    class Meta:
        model= ordermodel
        fields= ["Id_orders", "Id_P", "qte", "Price","Dtime"]

class basketForm(forms.ModelForm):
    class Meta:
        model= basketmodel
        fields= ["id_B", "qte", "Id_P", "Price"]