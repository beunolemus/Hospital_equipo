  <template>
    <div>
      <h1>Tabla de Cirugías</h1>
      <div style="margin-bottom: 10px;">
        <button @click="programacionquirurgica">Crear Cirugía</button>
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
          <tr v-for="cirugia in cirugias" :key="cirugia.id_cirugia">
            <td>{{ cirugia.id_cirugia }}</td>
            <td>{{ cirugia.Persona_id }}</td>
            <td>{{ cirugia.medico_id }}</td>
            <td>{{ cirugia.departamento_id }}</td>
            <td>{{ cirugia.tipo }}</td>
            <td>{{ cirugia.fecha }}</td>
            <td>{{ cirugia.descripcion }}</td>
            <td>
              <button @click="eliminarCirugia(cirugia.id_cirugia)">
                <i class="fas fa-trash-alt"></i> Eliminar
              </button>
              <button @click="editarCirugia(cirugia.id_cirugia)">
                <i class="fas fa-edit"></i> Editar
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>

  <script>

  export default {
    data() {
      return {
        cirugias: [],
      };
    },
    mounted() {
      // Hacer la solicitud a la API y obtener los datos de cirugías
      fetch('http://127.0.0.1:8000/hospital/api/v1cirugias/')
        .then(response => response.json())
        .then(data => {
          this.cirugias = data; // Asignar los datos a la variable cirugias
        })
        .catch(error => console.error('Error al obtener los datos:', error));
    },
    methods: {
      eliminarCirugia(id) {
        fetch(`http://127.0.0.1:8000/hospital/api/v1cirugias/${id}/`, {
          method: 'DELETE'
        })
          .then(response => {
            if (!response.ok) {
              throw new Error('Hubo un problema al eliminar la cirugía.');
            }
            // Si la eliminación es exitosa, actualizar la lista de cirugías
            this.obtenerCirugias();
          })
          .catch(error => console.error('Error al eliminar la cirugía:', error));
        console.log("Eliminar cirugía con ID:", id);
      },
      editarCirugia(id) {
        // Aquí debes implementar la lógica para editar la cirugía con el ID proporcionado
        console.log("Editar cirugía con ID:", id);
      },
      crearCirugia() {
        
        // Aquí debes implementar la lógica para crear una nueva cirugía
        console.log("Crear nueva cirugía");
      }
    }
  };
  </script>

  <style scoped>
  /* Estilos para iconos de Font Awesome */
  @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css');
  </style>

  <style>
  /* Estilos para la tabla */
  table {
    width: 80%;
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
  }

  .router-link-custom {
    text-decoration: none; /* Elimina el subrayado */
    color: inherit; /* Usa el color heredado del padre */
  }

  th,
  td {
    border: 1px solid #920d0d;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }

  /* Estilos para los botones */
  button {
    background-color: #239a9e;
    color: white;
    border: none;
    padding: 8px 12px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 6px;
    cursor: pointer;
    border-radius: 4px;
    margin-right: 5px;
  }

  button:hover {
    background-color: #14901a;
  }

  /* Estilos para el ícono */
  .fas.fa-trash-alt {
    margin-right: 5px;
  }
  </style>
