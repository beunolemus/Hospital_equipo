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
          <label for="nombrePaciente" class="col-sm-2 col-form-label">Paciente:</label>
          <div class="col-sm-10">
            <input type="text" id="nombrePaciente" class="form-control" v-model="cirugia.paciente" placeholder="Nombre del paciente" required>
          </div>
        </div>

        <div class="form-group row">
          <label for="nombreDoctor" class="col-sm-2 col-form-label">Doctor:</label>
          <div class="col-sm-10">
            <input type="text" id="nombreDoctor" class="form-control" v-model="cirugia.doctor" placeholder="Nombre del Doctor" required>
          </div>
        </div>


        <div class="form-group row">
  <label for="sala_operaciones" class="col-sm-2 col-form-label">Sala de Operaciones:</label>
  <div class="col-sm-10">
    <select id="sala_operaciones" class="form-control" v-model="cirugia.sala" required>
      <option value="">Selecciona una sala</option>
      <option v-for="numero in 10" :key="numero" :value="numero">{{ numero }}</option>
    </select>
  </div>
</div>


        <div class="form-group row">
          <label for="tipoCirugia" class="col-sm-2 col-form-label">Tipo de Cirugía:</label>
          <div class="col-sm-10">
            <input type="text" id="tipoCirugia" class="form-control" v-model="cirugia.tipo" placeholder="Tipo de cirugía realizada" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="fechaCirugia" class="col-sm-2 col-form-label">Fecha de Cirugía:</label>
          <div class="col-sm-10">
            <input type="date" id="fechaCirugia" class="form-control" v-model="cirugia.fecha" required>
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
        paciente: '',
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
      this.cirugia.paciente = '';
      this.cirugia.tipo = '';
      this.cirugia.fecha = '';
      this.cirugia.descripcion = '';
    }
  }
};
</script>
