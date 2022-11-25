from django.db import models
from Stock.models import stockmodel

# Create your models here.

class ordermodel(models.Model):
    Id_orders = models.AutoField(primary_key=True)
    Id_P = models.ForeignKey(stockmodel, on_delete=models.CASCADE)
    qte = models.IntegerField()
    Price = models.FloatField()
    Dtime = models.DateTimeField()
    class Meta:
        db_table = "order"