from django.db import connections
from django.db import models

# Create your models here.

class Loginmodel(models.Model):   
    Login = models.CharField(max_length=40)
    Password = models.CharField(max_length=40)
    class Meta:
        db_table = "admin"