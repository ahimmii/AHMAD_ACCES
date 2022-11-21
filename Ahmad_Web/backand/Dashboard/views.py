from django.shortcuts import render
from .models import ordermodel
from datetime import datetime, date
from .forms import orderForm

# Create your views here.

def showorder(request):
    i = 0
    orderlist = None
    orders = ordermodel.objects.all()
    dates = datetime.now().strftime("%d/%m/%Y")
    if request.GET.get('date'):
        dateget = request.GET.get('date')
        format_data = "%Y-%m-%d"
        ft_date = datetime.strptime(dateget, format_data)
        for st in orders:
            if st.Dtime.strftime("%d/%m/%Y") == ft_date.strftime("%d/%m/%Y"):
                i += 1
        orderlist = [[]] * i
        i = 0
        for st in orders:
            if st.Dtime.strftime("%d/%m/%Y") == ft_date.strftime("%d/%m/%Y"):
                orderlist[i] = st
                i += 1 
        dates = dateget
    else:
        for st in orders:
            if st.Dtime.strftime("%d/%m/%Y") == dates:
                i += 1
        orderlist = [[]] * i
        i = 0
        for st in orders:
            if st.Dtime.strftime("%d/%m/%Y") == dates:
                orderlist[i] = st
                i += 1 
        dates = datetime.now().strftime("%Y-%m-%d")
    
    info = {
        'date': dates,
        'stock': orderlist
    }

    return render(request,"../../frontand/templates/home.html", info)

