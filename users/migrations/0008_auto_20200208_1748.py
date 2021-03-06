# Generated by Django 2.2 on 2020-02-08 12:03

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0007_auto_20200208_1724'),
    ]

    operations = [
        migrations.AlterField(
            model_name='creators',
            name='category',
            field=models.CharField(max_length=500),
        ),
        migrations.AlterField(
            model_name='creators',
            name='date',
            field=models.DateField(default=datetime.date.today, verbose_name='Date'),
        ),
        migrations.AlterField(
            model_name='creators',
            name='full_name',
            field=models.CharField(max_length=500),
        ),
        migrations.AlterField(
            model_name='creators',
            name='image',
            field=models.CharField(max_length=500),
        ),
        migrations.AlterField(
            model_name='creators',
            name='topic',
            field=models.CharField(max_length=500),
        ),
    ]
