from django.urls import path
from .views import viewstock, addorder, Delete, Confirm

urlpatterns = [
    path('sale/', viewstock, name='sale'),
    path('sale/order', addorder, name='AddP'),
    path('sale/Delete', Delete, name='delete'),
    path('sale/Confirm', Confirm, name='confirm'),
]