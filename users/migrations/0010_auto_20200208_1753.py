# Generated by Django 2.2 on 2020-02-08 12:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0009_creators_discription'),
    ]

    operations = [
        migrations.AlterField(
            model_name='creators',
            name='discription',
            field=models.CharField(max_length=7000),
        ),
    ]
