from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.cache import never_cache
from django.core.exceptions import PermissionDenied
from django.http import HttpResponseRedirect
from django.template import loader
from .models import stockmodel
from .forms import stockForm

# Create your views here.

def showstock(request):
    i = 0
    totalB = 0
    totalS = 0
    totalqte = 0
 
    stock = stockmodel.objects.all()
    form = stockForm(request.POST)
    
    if form.is_valid():
        form.save()

    template = loader.get_template('Stock.html')
    
    
    orderlist = [[]] * 1
    if request.GET.get('Search'):
        Codebar = str(request.GET.get('Search'))
        for st in stock:
            if st.codebar == Codebar:
                orderlist[i] = st
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + ((st.S_price - st.B_Price) * st.Qte)
                totalqte = totalqte + st.Qte
                i += 1
    elif i == 0:
        if stock:
            for st in stock:
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + ((st.S_price - st.B_Price) * st.Qte)
                totalqte = totalqte + st.Qte

    
    if i == 0:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'form': stockForm(),
            'stock': stock,
        }
    else:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'form': stockForm(),
            'stock': orderlist,
        }

    return HttpResponse(template.render(info, request))


def model(request):
    i = 0
    totalB = 0
    totalS = 0
    totalqte = 0
    Quantity = 0
    BPrice = 0
    SPrice = 0
    product = ""
    Codebaredit = ""
    stock = stockmodel.objects.all()
    
    template = loader.get_template('model.html')
    
    orderlist = [[]] * 1
    if request.method == 'POST':
        if request.GET.get('edit'):
            edit = str(request.GET.get('edit'))
            for st in stock:
                if st.Id_P == int(edit):
                    pi = stockmodel.objects.get(Id_P=st.Id_P)
                    fm = stockForm(request.POST, instance=pi)
                    if fm.is_valid():
                        fm.save()
        template = loader.get_template('Stock.html')

        info = {
            'stock': stock,
        }

        return HttpResponse(template.render(info, request))
                        
    if request.GET.get('Codebar'):
        Codebar = str(request.GET.get('Codebar'))
        for st in stock:
            if st.codebar == Codebar:
                orderlist[i] = st
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + ((st.S_price - st.B_Price) * st.Qte)
                totalqte = totalqte + st.Qte
                i += 1
    elif i == 0:
        if stock:
            for st in stock:
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + ((st.S_price - st.B_Price) * st.Qte)
                totalqte = totalqte + st.Qte

    if request.GET.get('edit') :
        edit = str(request.GET.get('edit'))
        for st in stock:
            if st.Id_P == int(edit):
                product = st.Product
                Quantity = st.Qte
                BPrice = st.B_Price
                SPrice = st.S_price
                Codebaredit = st.codebar

    
    if i == 0:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'stock': stock,
            'product': product,
            'Quantity': Quantity,
            'BPrice': BPrice,
            'SPrice': SPrice,
            'Codebaredit': Codebaredit,
            'form': stockForm(),
            
        }
    else:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'stock': orderlist,
            'product': product,
            'Quantity': Quantity,
            'BPrice': BPrice,
            'SPrice': SPrice,
            'form': stockForm(),
 
        }

    return HttpResponse(template.render(info, request))

def Delete(request, Id_P):

    stockmodel.objects.get(Id_P=Id_P).delete()
    stock = stockmodel.objects.all()
    template = loader.get_template('Stock.html')

    info = {
            'stock': stock,
    }

    return HttpResponse(template.render(info, request))