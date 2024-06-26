# Generated by Django 5.0.1 on 2024-04-18 01:49

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_c_rol'),
    ]

    operations = [
        migrations.CreateModel(
            name='c_Solicitud_Cirugias',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ID_cita', models.CharField(max_length=100, unique=True)),
                ('ID_paciente', models.CharField(max_length=100)),
                ('ID_medico', models.CharField(max_length=100)),
                ('fecha_hora', models.DateTimeField()),
                ('sala_de_operaciones', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Cirugias',
            fields=[
                ('id_cirugia', models.AutoField(primary_key=True, serialize=False)),
                ('persona_id', models.IntegerField(unique=True)),
                ('medico_id', models.IntegerField(unique=True)),
                ('departamento_id', models.IntegerField(unique=True)),
                ('tipo', models.CharField(max_length=100)),
                ('fecha', models.DateField()),
                ('descripcion', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='CalendarioCirugia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('c_cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.c_cliente')),
            ],
        ),
    ]
