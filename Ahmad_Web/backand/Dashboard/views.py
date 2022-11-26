from django.shortcuts import render
from .models import ordermodel
from datetime import datetime

# Create your views here.

def showorder(request):
    i = 0
    orderlist = None
    T_qte = 0
    T_selling = 0
    T_income = 0
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
                T_income += (st.Price - st.Id_P.B_Price) * st.qte
                st.Price = st.Price * st.qte
                T_selling += st.Price
                T_qte += st.qte
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
                T_income += (st.Price - st.Id_P.B_Price) * st.qte
                st.Price = st.Price * st.qte
                T_selling += st.Price
                T_qte += st.qte
                orderlist[i] = st
                i += 1 
        dates = datetime.now().strftime("%Y-%m-%d")
    
    info = {
        'date': dates,
        'stock': orderlist,
        'T_selling': T_selling,
        'T_qte': T_qte,
        'T_income': T_income,
    }

    return render(request,"../../frontand/templates/home.html", info)

