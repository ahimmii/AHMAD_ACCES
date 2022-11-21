from django.db import models

# Create your models here.

class stockmodel(models.Model):
    Id_P = models.AutoField(primary_key=True)
    Product = models.CharField(max_length=250)
    Qte = models.IntegerField()
    B_Price = models.FloatField()
    S_price = models.FloatField()
    codebar = models.CharField(max_length=80)
    datetimes = models.DateTimeField()
    class Meta:
        db_table = "stock"