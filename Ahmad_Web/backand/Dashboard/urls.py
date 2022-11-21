from django.urls import path
from . import views

urlpatterns = [
    path('', views.showorder, name='home'),
]