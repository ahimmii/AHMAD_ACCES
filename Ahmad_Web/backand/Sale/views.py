from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from datetime import datetime
from Stock.models import stockmodel
from Stock.forms import stockForm
from .forms import orderForm, basketForm
from .models import basketmodel
from django.views.decorators.csrf import csrf_exempt
from django.middleware import csrf
# Create your views here.

def viewstock(request):
    i = 0
    
    T_Prix = 0.0
    basket = None

    prudact = stockmodel.objects.all()
    if basketmodel.objects.all():
        basket = basketmodel.objects.all()
        for ba in basket:
            T_Prix += ba.Price * ba.qte
    
    ft_date = datetime.now().strftime("%d/%m/%Y")

    if request.GET.get('Search'):
        Codebar = str(request.GET.get('Search'))
        for st in prudact:
            if st.codebar == Codebar:
                i += 1

    orderlist = [[]] * i
    i = 0

    if request.GET.get('Search'):
        for st in prudact:
            if st.codebar == Codebar:
                orderlist[i] = st
                i += 1
    else:
        orderlist = prudact
    template = loader.get_template('sale.html')
    info = {
            'stock': orderlist,
            'date': ft_date,
            'basket': basket,
            'T_Prix': T_Prix,
            
        }

    return HttpResponse(template.render(info, request))

def addorder(request):

    prudact = ""
    prix = 0
    T_Prix = 0.0
    basket = None
    prudacts = stockmodel.objects.all()
    if basketmodel.objects.all():
        basket = basketmodel.objects.all()
        for ba in basket:
            T_Prix += ba.Price * ba.qte
    

    if request.method == 'POST':
        form = basketForm(request.POST)

        if form.is_valid():
            form.save()

    

    if request.GET.get('Id'):
        Id = str(request.GET.get('Id'))
        for st in prudacts:
            if st.Id_P == int(Id):
                prudact = st.Product
                prix = st.S_price

    template = loader.get_template('add_order.html')
    info = {
            'stock': prudacts,
            'prudatc': prudacts,
            'prudact': prudact,
            'prix': prix,
            'T_Prix': T_Prix,
            'basket': basket,
        }

    return HttpResponse(template.render(info, request))

def Delete(request):

    basket = None
    T_Prix = 0.0

    if basketmodel.objects.all():
        basket = basketmodel.objects.all()
        for ba in basket:
            basketmodel.objects.get(id_B=ba.id_B).delete()
    stock = stockmodel.objects.all()
    template = loader.get_template('sale.html')

    info = {
                'stock': stock,
                'basket': basket,
                'T_Prix': T_Prix,
            }

    return HttpResponse(template.render(info, request))


def Confirm(request):

    T_Prix = 0.0
    basket = None
    form = None
    updated_request = request.POST.copy()
    ft_date = datetime.now().strftime("%Y-%m-%d")
    

    if basketmodel.objects.all():
        basket = basketmodel.objects.all()
        
        for ba in basket:
            updated_request.update({'Id_P': str(ba.Id_P.Id_P)})
            updated_request.update({'qte': str(ba.qte)})
            updated_request.update({'Price': str(ba.Price)})
            updated_request.update({'Dtime': ft_date})
            request.POST = updated_request
            form = orderForm(request.POST)
            if form.is_valid():
                form.save()
            updated_request = request.POST.copy()
            pi = stockmodel.objects.get(Id_P=ba.Id_P.Id_P)
            updated_request.update({'Qte': str(ba.Id_P.Qte - ba.qte)})
            updated_request.update({'Product': str(ba.Id_P.Product)})
            updated_request.update({'B_Price': str(ba.Id_P.B_Price)})
            updated_request.update({'S_price': str(ba.Id_P.S_price)})
            updated_request.update({'codebar': str(ba.Id_P.codebar)})
            updated_request.update({'datetimes': str(ba.Id_P.datetimes)})
            request.POST = updated_request
            fm = stockForm(request.POST, instance=pi)
            if fm.is_valid():
                fm.save()
            basketmodel.objects.get(id_B=ba.id_B).delete()

        
    stock = stockmodel.objects.all()
    template = loader.get_template('Basket.html')

    info = {
                'stock': stock,
                'basket': basket,
                'form': form,
                'date': ft_date,
                'T_Prix': T_Prix,
            }

    return HttpResponse(template.render(info, request))