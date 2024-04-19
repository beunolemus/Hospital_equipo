<template>
  <div>
    <h1>Tabla de Cirugías</h1>
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
};
</script>