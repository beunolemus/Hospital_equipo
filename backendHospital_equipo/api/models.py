from django.db import models

# Create your models here.
class c_cliente(models.Model):
	d_nombre = models.CharField(max_length=50)
	d_apellidoPaterno = models.CharField(max_length=50)
	d_apellidoMaterno = models.CharField(max_length=50)
	d_direccion = models.CharField(max_length=150)
	d_telefono = models.CharField(max_length=15)
	d_correo = models.CharField(max_length=100)
	d_contrasena = models.CharField(max_length=50)
	#website = models.URLField(max_length=100)
	#foundation = models.PositiveIntegerField()
    #TextField(blanck=True)
	def __str__(self):
		return self.d_nombre
	
class c_rol(models.Model):
	ro_nombre = models.CharField(max_length=50)
	#website = models.URLField(max_length=100)
	#foundation = models.PositiveIntegerField()
    #TextField(blanck=True)
	def __str__(self):
		return self.ro_nombre



class cirugias(models.Model):
    id_cirugia = models.AutoField(primary_key=True)
    Persona_id = models.IntegerField(unique=True)
    medico_id = models.IntegerField(unique=True)
    departamento_id = models.IntegerField(unique=True)
    tipo = models.CharField(max_length=100)
    fecha = models.DateField()
    descripcion = models.TextField()

    def __str__(self):
        return f'cirugias #{self.id_cirugia}'

	

class c_Solicitud_Cirugias(models.Model):
    ID_cita = models.CharField(max_length=100, unique=True)
    ID_paciente = models.CharField(max_length=100)
    ID_medico = models.CharField(max_length=100)
    fecha_hora = models.DateTimeField()
    sala_de_operaciones = models.CharField(max_length=100)

    def __str__(self):
        return f'Cita: {self.ID_cita}, Paciente: {self.ID_paciente}, Medico: {self.ID_medico}'

		

class horariosquirofano(models.Model):
    Id= models.AutoField(primary_key=True)
    Fecha = models.DateField()
    HoraInicio = models.TimeField()
    HoraFin = models.TimeField()
    class Tipo(models.TextChoices):
        Cirugia_de_corazon = 'Cirugía de corazón'
        Cirugia_de_rodilla = 'Cirugía de rodilla'
        Cirugia_de_cataratas = 'Cirugía de cataratas'
        Cirugia_de_apendice = 'Cirugía de apéndice'
        Cirugia_de_columna = 'Cirugía de columna'
    
        def __str__(self):
            return f'Id horariosquirofano #{self.Id}'