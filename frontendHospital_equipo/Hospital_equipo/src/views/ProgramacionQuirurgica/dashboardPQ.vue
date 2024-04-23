<template>
  <b-container fluid>
    <b-row>
      <b-col lg="6" sm="12">
        <iq-card>
          <template v-slot:headerTitle>
            <h4>Dashboard Total de tipos de Cirugias en proceso</h4>
          </template>
          <template v-slot:body>
            <PieChart :chartData="PieChartData" />
          </template>
        </iq-card>
      </b-col>

      <b-col lg="6" sm="12">
        <iq-card>
          <template v-slot:headerTitle>
            <h4>Cirugias Hechas Por Año</h4>
          </template>
          <template v-slot:body>
            <BarChart :chartData="BarChartData" />
          </template>
        </iq-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import { xray } from '../../config/pluginInit'
import iqCard from '../../components/xray/cards/iq-card'
import axios from "axios";

// Chart
import { PieChart } from 'vue-chart-3'
import { BarChart } from 'vue-chart-3'
import { Chart, registerables } from 'chart.js'
Chart.register(...registerables)

export default {
  name: 'DashboardTotalCirugias',
  components: { iqCard, PieChart, BarChart },
  mounted() {
    xray.index();
    this.getCirugias();
    this.loadDataFromDatabase();
  },
  data() {
    return {
      PieChartData: {
        labels: [],
        datasets: [
          {
            label: 'Distribución de Tipos de Cirugías',
            data: [], // Se llenará con el total de cirugías por tipo de la base de datos
            backgroundColor: [
              '#FF6384',
              '#36A2EB',
              '#FFCE56',
              '#4BC0C0',
              '#9966FF',
              '#FF9999',
              '#FFCC99',
              '#66FF99',
              '#999966',
              '#3399FF'
            ],
            borderWidth: 1
          }
        ]
      },
      BarChartData: {
        labels: [],
        datasets: [
          {
            label: 'Cantidad',
            data: [],
            backgroundColor: 'rgba(8, 155, 171, 1)',
            borderColor: 'rgba(8, 155, 171, 1)',
            tension: 0.1,
            borderSkipped: false
          }
        ],
        options: {
          responsive: true,
          plugins: {
            legends: {
              display: false
            }
          }
        }
      },
      cirugias_por_ano: [],
      baseURL: "http://localhost:3000"
    }
  },
  created() {
    this.getCirugias();
    this.updateBarChartData(); 
    this.loadDataFromDatabase();
  },
  methods: {
    async getCirugias() {
      try {
        const res = await axios.get(`${this.baseURL}/cirugias_por_ano`);
        this.cirugias_por_ano = res.data.cirugias_por_ano; 
        this.updateBarChartData(); 
      } catch (error) {
        console.error('Error al obtener los posts:', error);
      }  
    },
    updateBarChartData() {
      const labels = this.cirugias_por_ano.map(cirugia => cirugia._id);
      const data = this.cirugias_por_ano.map(cirugia => cirugia.total_cirugias); 

      this.BarChartData.labels = labels;
      this.BarChartData.datasets[0].data = data;
    },
    async loadDataFromDatabase() {
      try {
        const response = await fetch('http://127.0.0.1:8000/hospital/api/v1cirugias/');
        const data = await response.json();
        
        const tiposCirugias = {};
        data.forEach(cirugia => {
          if (tiposCirugias[cirugia.tipo]) {
            tiposCirugias[cirugia.tipo]++;
          } else {
            tiposCirugias[cirugia.tipo] = 1;
          }
        });

        this.PieChartData.labels = Object.keys(tiposCirugias);
        this.PieChartData.datasets[0].data = Object.values(tiposCirugias);
        
      } catch (error) {
        console.error('Error al cargar los datos de la base de datos:', error);
      }
    }
  }
}
</script>

<style scoped></style>
