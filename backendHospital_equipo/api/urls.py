from django.urls import path,include
from rest_framework import routers
from api import views

router = routers.DefaultRouter()
router.register(r'c_cliente', views.c_clienteViewSet)
router.register(r'c_rol', views.c_rolViewSet)
router.register(r'horarios_quirofano', views.horarios_quirofanoViewSet)
router.register(r'cirugias', views.CirugiaViewSet) 


urlpatterns = [
	path('api/v1',include(router.urls))
]



