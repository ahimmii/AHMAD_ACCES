from django.shortcuts import render
from django.http import HttpResponse
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
    orderlist = [[]] * 1
    if request.GET.get('Codebar'):
        Codebar = str(request.GET.get('Codebar'))
        for st in stock:
            if st.codebar == Codebar:
                orderlist[i] = st
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + (st.S_price * st.Qte)
                totalqte = totalqte + st.Qte
                i += 1

    if i == 0:
        if stock:
            for st in stock:
                totalB = totalB + (st.B_Price * st.Qte)
                totalS = totalS + (st.S_price * st.Qte)
                totalqte = totalqte + st.Qte

    template = loader.get_template('showStock.html')
    if i == 0:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'stock': stock
        }
    else:
        info = {
            'totalB': totalB,
            'totalS': totalS,
            'totalqte': totalqte,
            'stock': orderlist
        }

    return HttpResponse(template.render(info, request))


def showform(request):
    form = stockForm(request.POST or None)
    if form.is_valid():
        form.save()

    context = {
        'form': form
    }

    return render(request, '../../frontand/templates/Add.html', context)
