# Generated by Django 2.2 on 2020-02-08 10:53

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_remove_creator_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='creator',
            name='date',
            field=models.DateField(default=datetime.date.today, verbose_name='Date'),
        ),
    ]
