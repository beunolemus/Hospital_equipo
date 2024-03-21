<template>
  <b-container fluid>
    <b-row>
      <b-col md="3">
        <iq-card class="calender-small">
          <template v-slot:body>
            <!-- <FlatPicker config="config" value="" class="d-none" /> -->
            <flat-picker
              v-model="date"
              className="d-none"
              :config="inlineDatepicker"
              placeholder="select Date"
            ></flat-picker>
          </template>
        </iq-card>
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Clasificación</h4>
          </template>
          <template v-slot:headerAction>
            <a href="#"><i class="fa fa-plus mr-0" aria-hidden="true" /></a>
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
      </b-col>
      <b-col lg="9">
        <iq-card>
          <template v-slot:headerTitle>
            <h4 class="card-title">Calendario de Cirugías</h4>
          </template>
          <template v-slot:headerAction>
            <a href="#" class="btn btn-primary"
              ><i class="ri-add-line mr-2"></i>CalendarioV2</a
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

import FlatPicker from "vue-flatpickr-component";
// import FullCalendar from '@fullcalendar/vue3'
// import FullCalendar from '../../../../../components/xray/calendar/FullCalendar.vue'
import FullCalendar from "./calendario/FullCalendar.vue";

import moment from "moment";
export default {
  name: "GoogleCalendar",
  components: { iqCard, FlatPicker, FullCalendar },
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
