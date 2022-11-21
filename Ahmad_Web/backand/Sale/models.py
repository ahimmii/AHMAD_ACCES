from django.db import models
from Dashboard.models import ordermodel
from Stock.models import stockmodel
# Create your models here.

class salemodel(models.Model):
    id_Sale = models.AutoField(primary_key=True)
    Id_ord = models.ForeignKey(ordermodel, on_delete=models.CASCADE,)
    Id_P = models.ForeignKey(stockmodel, on_delete=models.CASCADE)
    class Meta:
        db_table = "salee"