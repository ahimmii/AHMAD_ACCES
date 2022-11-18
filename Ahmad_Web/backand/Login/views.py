from django.shortcuts import render
from .models import stockmodel
from .forms import FormContactForm


# Create your views here.

def show(request):
    stock = stockmodel.objects.all()
    return render(request,"../../frontand/templates/showStock.html",{'stock':stock})

def showform(request):
    form= FormContactForm(request.POST or None)
    if form.is_valid():
        form.save()
  
    context= {'form': form }
        
    return render(request, '../../frontand/templates/Add.html', context)
