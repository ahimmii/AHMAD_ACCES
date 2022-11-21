from django import forms
from .models import salemodel

class stockForm(forms.ModelForm):
    class Meta:
        model= salemodel
        fields= ["Id_ord","Id_P"]