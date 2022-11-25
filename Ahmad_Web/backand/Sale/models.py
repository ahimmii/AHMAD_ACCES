from django.db import models
from Stock.models import stockmodel
# Create your models here.

class basketmodel(models.Model):
    id_B = models.AutoField(primary_key=True)
    qte = models.IntegerField()
    Id_P = models.ForeignKey(stockmodel, on_delete=models.CASCADE,)
    Price = models.IntegerField()
    class Meta:
        db_table = "basket"