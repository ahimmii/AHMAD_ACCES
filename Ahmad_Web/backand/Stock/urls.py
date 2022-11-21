from django.urls import path
from .views import showstock

urlpatterns = [
    path('stock/', showstock),
]