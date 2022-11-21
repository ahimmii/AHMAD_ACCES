from django.urls import path
from .views import viewstock

urlpatterns = [
    path('sale/', viewstock),
]