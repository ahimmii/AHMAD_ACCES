from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Stock.models import stockmodel
from .models import salemodel

# Create your views here.

def viewstock(request):
    i = 0
    orderlist = [[]] * 1
    prudact = stockmodel.objects.all()
    sale = salemodel.objects.all()
    Codebar = str(request.GET.get('Codebar'))
    x = list(sale)
    if request.GET.get('Codebar'):
        for st in prudact:
            if st.codebar == Codebar:
                print(st.Id_P)
                orderlist[i] = st
                i += 1
    else:
        orderlist = prudact
    template = loader.get_template('showSale.html')
    info = {
            'stock': orderlist
        }

    return HttpResponse(template.render(info, request))