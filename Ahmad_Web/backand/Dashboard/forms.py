from django import forms
from .models import ordermodel

class orderForm(forms.ModelForm):
    class Meta:
        model= ordermodel
        fields= ["Id_orders", "Id_P", "qte", "Price","Dtime"]