from django.db import connections
from django.db import models

# Create your models here.

class stockmodel(models.Model):
    Id_P = models.AutoField(primary_key=True)
    Product = models.CharField(max_length=250)
    Qte = models.IntegerField(max_length=11)
    B_Price = models.FloatField()
    S_price = models.FloatField()
    class Meta:
        db_table = "stock"