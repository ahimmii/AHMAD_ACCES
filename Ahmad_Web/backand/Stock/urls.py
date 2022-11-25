from django.urls import path
from .views import showstock, model,Delete

urlpatterns = [
    path('stock/', showstock, name='stock'),
    path('stock/model/',model, name='model'),
    path('stock/<int:Id_P>',Delete, name='delete'),
]