<template>
  <div>
    <h1>Cirugias</h1>

    <div v-if="message" style="margin-top: 10px;">
      {{ message }}
    </div>
    <table>
      <thead>
        <tr>
          <th>Id de la Cirugia</th>
          <th>Id de la Persona</th>
          <th>Id del Médico</th>
          <th>Id del Departamento</th>
          <th>Tipo de Cirugia</th>
          <th>Fecha</th>
          <th>Descripción</th>
          <th>Acciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(cirugias, index) in paginatedCirugias" :key="index">
          <td>{{ cirugias.id_cirugia }}</td>
          <td>{{ cirugias.Persona_id }}</td>
          <td>{{ cirugias.medico_id }}</td>
          <td>{{ cirugias.departamento_id }}</td>
          <td>{{ cirugias.tipo }}</td>
          <td>{{ cirugias.fecha }}</td>
          <td>{{ cirugias.descripcion }}</td>
          <td>
            <button @click="eliminarCirugia(cirugias.id_cirugia)">
              <i class="fas fa-trash-alt"></i> Eliminar
            </button>
            &nbsp;&nbsp;&nbsp;

            <button style="margin-top: 5px;">
              <router-link :to="{ name: 'editar', params: { id: cirugias.id_cirugia }}" class="router-link-custom">
                <i class="fas fa-edit"></i> Editar
              </router-link>
              
            </button>
          </td>
        </tr>
      </tbody>
    </table>

    <div style="margin-top: 10px;">
      <button @click="paginar('anterior')" :disabled="paginaActual === 1"
        style="background-color: black;">Anterior</button>&nbsp;
      <button @click="paginar('siguiente')" :disabled="paginaActual * itemsPorPagina >= cirugias.length"
        style="background-color: black;">Siguiente</button>
    </div>

    <!-- Mostrar el número de página actual y el número total de páginas -->
    <div style="margin-top: 10px;">
      Página {{ paginaActual }} de {{ totalPages }}
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cirugias: [], // Inicialmente la lista de cirugias estará vacía
      paginatedCirugias: [], // Lista de cirugias a mostrar en la página actual
      message: '',
      paginaActual: 1,
      itemsPorPagina: 10, // Página actual
    };
  },
  computed: {
    totalPages() {
      return Math.ceil(this.totalCirugias.length / this.itemsPorPagina);
    },
    totalCirugias() {
      return this.cirugias;
    },
  },
  mounted() {
    // Cuando el componente se monta, cargar la lista de cirugias desde la API
    this.obtenerCirugias();
  },
  methods: {
    obtenerCirugias() {
      fetch('http://localhost:8000/hospital/api/v1cirugias/') // url de la vista de la api
        .then(response => {
          if (!response.ok) {
            throw new Error('Hubo un problema al obtener la lista de cirugias.');
          }
          return response.json();
        })
        .then(data => {
          // Asignar la lista de cirugias obtenida desde la API a la variable cirugias
          this.cirugias = data;
          // Llamar a la función para mostrar los primeros 10 datos
          this.mostrarDatosPaginados();
        })
        .catch(error => {
          this.message = "Error: " + error.message;
        });
    },
    eliminarCirugia(id) {
      fetch(`http://localhost:8000/hospital/api/v1cirugias/${id}/`, { // Corregir la URL del endpoint
        method: 'DELETE'
      })
        .then(response => {
          if (!response.ok) {
            throw new Error('Hubo un problema al eliminar la cirugia.');
          }
          this.message = "¡Cirugia eliminada exitosamente!";
          // Eliminar la cirugia de la lista después de eliminarla en el backend
          this.cirugias = this.cirugias.filter(cirugias => cirugias.id_cirugia !== id);
          // Actualizar los datos paginados después de eliminar una cirugia
          this.mostrarDatosPaginados();
        })
        .catch(error => {
          this.message = "Error: " + error.message;
        });

    },
    mostrarDatosPaginados() {
      const inicio = (this.paginaActual - 1) * this.itemsPorPagina;
      const fin = this.paginaActual * this.itemsPorPagina;
      this.paginatedCirugias = this.cirugias.slice(inicio, fin);
    },
    paginar(direccion) {
      if (direccion === 'anterior') {
        this.paginaActual--;
      } else {
        this.paginaActual++;
      }
      // Llamar a la función para mostrar los datos de la página actual
      this.mostrarDatosPaginados();
    }
  }
}
</script>

<style scoped>
/* Estilos para iconos de Font Awesome */
@import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css');
</style>

<style>
/* Estilos para la tabla */
table {
  width: 30%;
  border-collapse: collapse;
  margin-left: 0 auto;
  margin-right: 0 auto;
}

.router-link-custom {
  text-decoration: none; /* Elimina el subrayado */
  color: inherit; /* Usa el color heredado del padre */
}

th,
td {
  border: 1px solid #981111;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #a1deee;
}

/* Estilos para los botones */
button {
  background-color: #bcbcee;
  color: rgb(244, 241, 241);
  border: none;
  padding: 8px 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
  border-radius: 4px;
}

button:hover {
  background-color: #14a6ca;
}

/* Estilos para el ícono */
.fas.fa-trash-alt {
  margin-right: 5px;
}
</style>
