<template>
  <div class="iq-card">
    <div class="iq-card-body">
      <div class="row align-items-center">
        <div class="col-md-12 mb-4">
          <h5 class="text-primary float-left"><i class="ri-pencil-fill"></i> Registro de cirugías</h5>
          <button type="button" class="float-right close-popup" v-if="modal" @click="close">
            <i class="ri-close-fill"></i>
          </button>
        </div>
      </div>
      <form>
        <div class="form-group row">
          <label for="Persona_id" class="col-sm-2 col-form-label">Persona ID:</label>
          <div class="col-sm-10">
            <input type="number" id="Persona_id" class="form-control" v-model="cirugia.persona_id" placeholder="Persona ID" required>
          </div>
        </div>

        <div class="form-group row">
          <label for="medico_id" class="col-sm-2 col-form-label">Medico ID:</label>
          <div class="col-sm-10">
            <input type="number" id="medico_id" class="form-control" v-model="cirugia.medico_id" placeholder="Médico ID" required>
          </div>
        </div>

        <div class="form-group row">
          <label for="departamento_id" class="col-sm-2 col-form-label">Departamento ID:</label>
          <div class="col-sm-10">
            <input type="number" id="departamento_id" class="form-control" v-model="cirugia.departamento_id" placeholder="Departamento ID" required>
          </div>
        </div>

        <div class="form-group row">
          <label for="tipo" class="col-sm-2 col-form-label">Tipo de Cirugía:</label>
          <div class="col-sm-10">
            <input type="text" id="tipo" class="form-control" v-model="cirugia.tipo" placeholder="Tipo de cirugía realizada" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="fecha" class="col-sm-2 col-form-label">Fecha de Cirugía:</label>
          <div class="col-sm-10">
            <input type="date" id="fecha" class="form-control" v-model="cirugia.fecha" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="descripcion" class="col-sm-2 col-form-label">Descripción:</label>
          <div class="col-sm-10">
            <textarea id="descripcion" class="form-control" v-model="cirugia.descripcion" placeholder="Descripción de la cirugía" rows="3" required></textarea>
          </div>
        </div>
        <div class="form-group row">
          <div class="col-md-12">
            <button type="button" class="btn btn-primary float-right" @click="guardarCirugia">Guardar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'RegistroCirugias',
  props: {
    modal: { type: Boolean, default: false }
  },
  data() {
    return {
      cirugia: {
        Persona_id: '',
        medico_id: '',
        departamento_id: '',
        tipo: '',
        fecha: '',
        descripcion: ''
      }
    };
  },
  methods: {
    close() {
      this.$emit('close', false);
    },
    guardarCirugia() {
      // Aquí puedes enviar los datos de la cirugía a tu backend para su almacenamiento
      console.log('Datos de la cirugía:', this.cirugia);
      // Limpia el formulario después de guardar la cirugía
      this.limpiarFormulario();
    },
    limpiarFormulario() {
      // Método para limpiar el formulario después de guardar la cirugía
      this.cirugia.Persona_id = '';
      this.cirugia.medico_id = '';
      this.cirugia.departamento_id = '';
      this.cirugia.tipo = '';
      this.cirugia.fecha = '';
      this.cirugia.descripcion = '';
    }
  }
};
</script>
