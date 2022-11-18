from django.shortcuts import render
from .models import Loginmodel
from .forms import FormContactForm


# Create your views here.

def show(request):
    students = Loginmodel.objects.all()
    return render(request,"../../frontand/templates/show.html",{'Login':students})

def showform(request):
    form= FormContactForm(request.POST or None)
    if form.is_valid():
        form.save()
  
    context= {'form': form }
        
    return render(request, '../../frontand/templates/Add.html', context)
