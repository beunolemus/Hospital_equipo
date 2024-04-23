<template>
  <b-container fluid>
    <b-row>
      <b-col lg="6" sm="12">
        <iq-card>
          <template v-slot:headerTitle>
            <h4>Dashboard Cirugias</h4>
          </template>
          <template v-slot:body>
            <!-- <MorrisChart
              :element="item.type + index"
              :type="item.type"
              :xKeys="item.xKeys"
              :data="item.bodyData"
              :colors="item.colors"
              :yKeys="item.yKeys"
              :labels="item.labels"
            /> -->
            <LineChart :chartData="LineChartData" />
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
import { LineChart, BarChart } from 'vue-chart-3'
import { Chart, registerables } from 'chart.js'
Chart.register(...registerables)
export default {
  name: 'ChartJs',
  components: { iqCard, LineChart, BarChart},
  mounted() {
    xray.index()
    const ctx = document.getElementById('areaChart')
    new Chart(ctx, this.AreaChartData),
    this.getCirugias();
  },
  data() {

    const LineChartData = {
      labels: ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo'],
      datasets: [
        {
          label: 'Cirugias por dia',
          data: [65, 59, 80, 81, 55, 55],
 
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
    }

    const BarChartData = {
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
    }

    
    return { LineChartData, BarChartData,
      cirugias_por_ano: [],
      baseURL: "http://localhost:3000"
     }
  },
  created() {
    this.getCirugias();
    this.updateBarChartData(); 
  },
  methods: {
  async getCirugias() {
    try {
      const res = await axios.get(`${this.baseURL}/cirugias_por_ano`);
      /* console.log('Respuesta de la solicitud HTTP:', res.data);  */ 
      this.cirugias_por_ano = res.data.cirugias_por_ano; 
      /*  console.log('Datos de cirugias_por_ano:', this.cirugias_por_ano2);  */
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
  } 
}

}

</script>
<style scoped></style>