# Generated by Django 5.0.7 on 2024-08-01 02:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_item_discount_price'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='description',
            field=models.TextField(default='This is a test description fefwefweifjwief jeiwfjeiwfj iwef jiwef weif ewj'),
            preserve_default=False,
        ),
    ]
