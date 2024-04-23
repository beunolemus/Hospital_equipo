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
                  <li v-for="(item, historial_cirugias) in historial_cirugias" :key="historial_cirugias._id">
                  <h2>Historial de Cirugía</h2>
                  <hr>
                    <p><b>Paciente:</b> {{ item.Paciente }}</p>
                    <p><b>Médico a cargo:</b> {{ item.Nombre_Medico}}</p>
                    <p><b> de la cirugía:</b> {{ item.date  }}</p>
                    <p><b>Tipo de cirugía:</b> {{ item.Tipo_Cirugias }}</p>
                    <p><b>Sala de operacion</b> {{ item.Sala_Operaciones }}</p>
                    <p>
                     <b>Complicaciones de cirugia:</b> {{ item.Complicaciones  }}
                    </p>
                    <p><b>Resultado de cirugia</b> {{ item.Resultado_de_cirugia }}</p>
                    <p>
                      <b>Descripción de la cirugía:</b> {{ item.Descripcion }}
                    </p>
                    <p><b>Fecha de cirugia</b> {{  item.date }}</p>
      
                  </li>
                  </b-modal>
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

import axios from "axios";

export default {
  name: "GoogleCalendar",
  components: { iqCard, FullCalendar, },
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
      historial_cirugias: [],
      baseURL: "http://localhost:3000",
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
    this.getPosts();
  },
  created() {
    this.getPosts();
  },
  methods: {
    async getPosts() {
      try {
        const res = await axios.get(`${this.baseURL}/Historial_Cirugias`);
        console.log(res.data); 
        this.historial_cirugias = res.data.historial_cirugias;
        console.log("linea 457"+this.historial_cirugias);
      } catch (error) {
        console.error('Error al obtener los posts:', error);
      }  
    }
  },
};
</script>
