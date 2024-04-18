from rest_framework import viewsets
from .models import  c_cliente,c_rol,cirugias, horarios_quirofano
from .serializer import horarios_quirofanoSerializer, c_clienteSerializer,c_rolSerializer,CirugiaSerializer

class c_clienteViewSet(viewsets.ModelViewSet):
	queryset = c_cliente.objects.all()
	serializer_class = c_clienteSerializer
	
class c_rolViewSet(viewsets.ModelViewSet):
	queryset = c_rol.objects.all()
	serializer_class = c_rolSerializer


class horarios_quirofanoViewSet(viewsets.ModelViewSet):
	queryset = horarios_quirofano.objects.all()
	serializer_class = horarios_quirofanoSerializer

class CirugiaViewSet(viewsets.ModelViewSet):
	queryset = cirugias.objects.all()
	serializer_class = CirugiaSerializer


