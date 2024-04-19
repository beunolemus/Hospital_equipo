from rest_framework import serializers
from .models import horarios_quirofano, c_cliente,c_rol,cirugias

class c_clienteSerializer(serializers.ModelSerializer):
	class Meta:
		model = c_cliente
		fields = '__all__'
		
class c_rolSerializer(serializers.ModelSerializer):
	class Meta:
		model = c_rol
		fields = '__all__'

class horarios_quirofanoSerializer(serializers.ModelSerializer):
	class Meta:
		model = horarios_quirofano
		fields = '__all__' 


class CirugiaSerializer(serializers.ModelSerializer):
	class Meta:
		model = cirugias
		fields = '__all__'