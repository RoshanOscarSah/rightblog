from django.db import models
import datetime

# Create your models here.
class creators(models.Model):
    full_name = models.CharField(max_length=500)
    image = models.CharField(max_length=500)
    topic = models.CharField(max_length=500)
    discription = models.CharField(max_length=7000)
    category = models.CharField(max_length=500)
    date = models.DateField(("Date"), default=datetime.date.today)

class comments(models.Model):
    blog_id = models.CharField(max_length=500)
    full_name = models.CharField(max_length=500)
    comment = models.CharField(max_length=1000)
    date = models.DateField(("Date"), default=datetime.date.today)