<template>
  <b-container fluid>
    <b-row>
      <b-col md="3">
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Clasificación</h4>
          </template>
          <template v-slot:body>
            <ul class="m-0 p-0 job-classification">
              <li class="">
                <i class="ri-check-line bg-danger" />No disponible
              </li>
              <li class=""><i class="ri-check-line bg-success" />Disponible</li>
              <li class=""><i class="ri-check-line bg-warning" />Pendientes</li>
              <li class=""><i class="ri-check-line bg-info" />Realizado</li>
            </ul>
          </template>
        </iq-card>
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Citas para Hoy</h4>
          </template>
          <template v-slot:body>
            <ul class="m-0 p-0 today-schedule">
              <li class="d-flex">
                <div class="schedule-icon">
                  <i class="ri-checkbox-blank-circle-fill text-primary" />
                </div>
                <div class="schedule-text">
                  <span>Quirófano 1</span> <span>09:00 a 12:00</span>
                </div>
              </li>
              <li class="d-flex">
                <div class="schedule-icon">
                  <i class="ri-checkbox-blank-circle-fill text-success" />
                </div>
                <div class="schedule-text">
                  <span>Quirofano 2</span> <span>09:00 a 11-:00</span>
                </div>
              </li>
            </ul>
          </template>
        </iq-card>
        <!--  historial de cirugias -->
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Historial de Cirugias</h4>
          </template>
          <template v-slot:body>
            <ul class="m-0 p-0 today-schedule">
              <li class="d-flex">
                <div class="schedule-icon">
                  <i class="ri-checkbox-blank-circle-fill text-success" />
                </div>
                <div class="schedule-text">
                  <!---------------------------------  incrustacion de modal -------------------------------->
                  <b-button v-b-modal.modal-7 variant="link" class="mb-3 me-1">
                    <span>Quirofano 1</span>
                    <span>14 de Marzo</span>
                  </b-button>
                  <b-modal
                    id="modal-7"
                    centered
                    title="Informacion del historial de cirugia"
                  >
                    <h2>Historial de Cirugía</h2>
                    <h3>Paciente: [Nombre del paciente]</h3>
                    <p>Fecha de la cirugía: [Fecha de la cirugía]</p>
                    <p>Tipo de cirugía: [Tipo de procedimiento realizado]</p>
                    <p>Médico a cargo: [Nombre del médico principal]</p>
                    <p>
                      Equipo médico: [Lista de nombres del equipo médico
                      involucrado]
                    </p>
                    <p>
                      Descripción de la cirugía: [Breve descripción del
                      procedimiento realizado]
                    </p>
                    <p>
                      Complicaciones durante la cirugía: [Si corresponde,
                      descripción de cualquier complicación ocurrida durante la
                      cirugía]
                    </p>
                    <p>
                      Resultado de la cirugía: [Estado del paciente después de
                      la cirugía, por ejemplo, estable, en recuperación, alta
                      médica, etc.]
                    </p>
                    <p>
                      Observaciones: [Cualquier observación adicional relevante
                      sobre la cirugía]
                    </p>
                  </b-modal>
                </div>
              </li>
              <li class="d-flex">
                <div class="schedule-icon">
                  <i class="ri-checkbox-blank-circle-fill text-success" />
                </div>
                <div class="schedule-text">
                  <!---------------------------------  incrustacion de modal -------------------------------->
                  <b-button v-b-modal.modal-7 variant="link" class="mb-3 me-1">
                    <span>Quirofano 2</span>
                    <span>16 de Marzo</span>
                  </b-button>
                  <b-modal
                    id="modal-7"
                    centered
                    title="Informacion del historial de cirugia"
                  >
                    <h2>Historial de Cirugía</h2>
                    <h3>Paciente: [Nombre del paciente]</h3>
                    <p>Fecha de la cirugía: [Fecha de la cirugía]</p>
                    <p>Tipo de cirugía: [Tipo de procedimiento realizado]</p>
                    <p>Médico a cargo: [Nombre del médico principal]</p>
                    <p>
                      Equipo médico: [Lista de nombres del equipo médico
                      involucrado]
                    </p>
                    <p>
                      Descripción de la cirugía: [Breve descripción del
                      procedimiento realizado]
                    </p>
                    <p>
                      Complicaciones durante la cirugía: [Si corresponde,
                      descripción de cualquier complicación ocurrida durante la
                      cirugía]
                    </p>
                    <p>
                      Resultado de la cirugía: [Estado del paciente después de
                      la cirugía, por ejemplo, estable, en recuperación, alta
                      médica, etc.]
                    </p>
                    <p>
                      Observaciones: [Cualquier observación adicional relevante
                      sobre la cirugía]
                    </p>
                  </b-modal>
                  <!---------------------------------  incrustacion de modal -------------------------------->
                </div>
              </li>
              <li class="d-flex">
                <div class="schedule-icon">
                  <i class="ri-checkbox-blank-circle-fill text-success" />
                </div>
                <div class="schedule-text">
                  <!---------------------------------  incrustacion de modal -------------------------------->
                  <b-button v-b-modal.modal-7 variant="link" class="mb-3 me-1">
                    <span>Quirofano 3</span>
                    <span>22 de Marzo</span>
                  </b-button>
                  <b-modal
                    id="modal-7"
                    centered
                    title="Informacion del historial de cirugia"
                  >
                    <h2>Historial de Cirugía</h2>
                    <h3>Paciente: [Nombre del paciente]</h3>
                    <p>Fecha de la cirugía: [Fecha de la cirugía]</p>
                    <p>Tipo de cirugía: [Tipo de procedimiento realizado]</p>
                    <p>Médico a cargo: [Nombre del médico principal]</p>
                    <p>
                      Equipo médico: [Lista de nombres del equipo médico
                      involucrado]
                    </p>
                    <p>
                      Descripción de la cirugía: [Breve descripción del
                      procedimiento realizado]
                    </p>
                    <p>
                      Complicaciones durante la cirugía: [Si corresponde,
                      descripción de cualquier complicación ocurrida durante la
                      cirugía]
                    </p>
                    <p>
                      Resultado de la cirugía: [Estado del paciente después de
                      la cirugía, por ejemplo, estable, en recuperación, alta
                      médica, etc.]
                    </p>
                    <p>
                      Observaciones: [Cualquier observación adicional relevante
                      sobre la cirugía]
                    </p>
                  </b-modal>
                  <!---------------------------------  incrustacion de modal -------------------------------->
                </div>
              </li>
            </ul>
          </template>
        </iq-card>
      </b-col>
      <b-col lg="9">
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Calendario de Cirugías</h4>
          </template>

          <template v-slot:headerAction>
            <a href="#" class="btn btn-primary" @click="mostrarModal">
              <i class="ri-add-line mr-2"></i>Agendar Cita</a
            >
          </template>
          <template v-slot:body>
            <FullCalendar
              :events="events"
              @onDateSelect="dateSelected"
              @onEventSelect="eventSelected"
            ></FullCalendar>
          </template>
        </iq-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import { ref } from "vue";
//import iqCard from '../../../../../components/xray/cards/iq-card'
import iqCard from "./calendario/iq-card.vue";
//import { xray } from '../../../../../config/pluginInit'
import { xray } from "./calendario/pluginInit.js";
// Library Components
// import FullCalendar from '@fullcalendar/vue3'
// import FullCalendar from '../../../../../components/xray/calendar/FullCalendar.vue'
import FullCalendar from "./calendario/FullCalendar.vue";
import moment from "moment";

export default {
  name: "GoogleCalendar",
  components: { iqCard, FullCalendar },
  data() {
    const events = ref([
      {
        title: "Incluyendo link",
        url: "http://google.com/",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-20, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        title: "Disponible",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-18, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        color: "green",
      },
      {
        title: "Dias libres",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-16, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        end:
          moment(new Date(), "YYYY-MM-DD")
            .add(-13, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(8,130,12,0.2)",
        textColor: "rgba(8,130,12,1)",
        borderColor: "rgba(8,130,12,1)",
      },
      {
        groupId: "999",
        title: "Citas por confirmar",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-14, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        color: "#047685",
        backgroundColor: "rgba(4,118,133,0.2)",
        textColor: "rgba(4,118,133,1)",
        borderColor: "rgba(4,118,133,1)",
      },
      {
        groupId: "999",
        title: "No disponible",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-12, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(235,153,27,0.2)",
        textColor: "rgba(235,153,27,1)",
        borderColor: "rgba(235,153,27,1)",
      },
      {
        groupId: "999",
        title: "Exitoso",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-10, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(206,32,20,0.2)",
        textColor: "rgba(206,32,20,1)",
        borderColor: "rgba(206,32,20,1)",
      },
      {
        title: "Exitoso",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-8, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        title: "No disponible",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-6, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        title: "Exitoso",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-5, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(235,153,27,0.2)",
        textColor: "rgba(235,153,27,1)",
        borderColor: "rgba(235,153,27,1)",
      },
      {
        title: "Exitoso",
        start:
          moment(new Date(), "YYYY-MM-DD")
            .add(-2, "days")
            .format("YYYY-MM-DD") + "T05:30:00.000Z",
        backgroundColor: "rgba(235,153,27,0.2)",
        textColor: "rgba(235,153,27,1)",
        borderColor: "rgba(235,153,27,1)",
      },
      {
        title: "No disponible",
        start:
          moment(new Date(), "YYYY-MM-DD").add(0, "days").format("YYYY-MM-DD") +
          "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        title: "Incluyendo link",
        url: "http://google.com/",
        start:
          moment(new Date(), "YYYY-MM-DD").add(0, "days").format("YYYY-MM-DD") +
          "T06:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        groupId: "999",
        title: "No se",
        start:
          moment(new Date(), "YYYY-MM-DD").add(0, "days").format("YYYY-MM-DD") +
          "T07:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        title: "Birthday Party",
        start:
          moment(new Date(), "YYYY-MM-DD").add(0, "days").format("YYYY-MM-DD") +
          "T08:30:00.000Z",
        backgroundColor: "rgba(235,153,27,0.2)",
        textColor: "rgba(235,153,27,1)",
        borderColor: "rgba(235,153,27,1)",
      },
      {
        title: "comprimido",
        start:
          moment(new Date(), "YYYY-MM-DD").add(0, "days").format("YYYY-MM-DD") +
          "T05:30:00.000Z",
        backgroundColor: "rgba(235,153,27,0.2)",
        textColor: "rgba(235,153,27,1)",
        borderColor: "rgba(235,153,27,1)",
      },
      {
        title: "Todo dia ocupado",
        start:
          moment(new Date(), "YYYY-MM-DD").add(1, "days").format("YYYY-MM-DD") +
          "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
      {
        groupId: "999",
        title: "Reprogramación de cirugia",
        start:
          moment(new Date(), "YYYY-MM-DD").add(8, "days").format("YYYY-MM-DD") +
          "T05:30:00.000Z",
        backgroundColor: "rgba(58,87,232,0.2)",
        textColor: "rgba(58,87,232,1)",
        borderColor: "rgba(58,87,232,1)",
      },
    ]);
    const inlineDatepicker = ref({
      inline: true,
      minDate: "today",
      dateFormat: "Y-m-d",
    });
    const dateOption = ref({
      mode: "range",
    });
    const date = ref("");
    const startTime = ref("");
    const endTime = ref("");
    const show = ref(false);
    return {
      events,
      dateOption,
      inlineDatepicker,
      date,
      startTime,
      endTime,
      show,
      config: {
        dateFormat: "Y-m-d",
        inline: true,
      },
    };
  },
  mounted() {
    xray.index();
  },
  computed: {},
  methods: {},
};
</script>
