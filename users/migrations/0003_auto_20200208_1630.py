# Generated by Django 2.2 on 2020-02-08 10:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20200208_1556'),
    ]

    operations = [
        migrations.RenameField(
            model_name='creator',
            old_name='image_path',
            new_name='image',
        ),
    ]
