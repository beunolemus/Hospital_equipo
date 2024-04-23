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
        
        
      </b-col>
      <!-- Bubble chart -->
      <b-col lg="6" sm="12">
        
        
      </b-col>
      <b-col lg="6" sm="12">
        
        
      </b-col>
    </b-row>
  </b-container>
</template>
<script>
import { xray } from '../../config/pluginInit'
import iqCard from '../../components/xray/cards/iq-card'

// Chart
import { LineChart} from 'vue-chart-3'
import { Chart, registerables } from 'chart.js'
Chart.register(...registerables)
export default {
  name: 'ChartJs',
  components: { iqCard, LineChart},
  mounted() {
    xray.index()
    const ctx = document.getElementById('areaChart')
    new Chart(ctx, this.AreaChartData)
  },
  data() {
    // return {
    // charts: [
    //   {
    //     title: "Line Chart",
    //     type: "line",
    //     bodyData: [
    //       { year: "2013", a: 10, b: 5 },
    //       { year: "2014", a: 40, b: 15 },
    //       { year: "2015", a: 20, b: 25 },
    //       { year: "2016", a: 30, b: 20 },
    //     ],
    //     colors: ["#FF6384", "#36A2EB"],
    //     xKeys: "year",
    //     yKeys: ["a", "b"],
    //     labels: ["Serie A", "Serie B"],
    //   },
    //   {
    //     title: "Bar Chart",
    //     type: "bar",
    //     bodyData: [
    //       { year: 2013, and: 10, ios: 12, win: 2 },
    //       { year: 2014, and: 10, ios: 15, win: 2 },
    //       { year: 2015, and: 20, ios: 25, win: 2 },
    //       { year: 2016, and: 30, ios: 20, win: 2 },
    //     ],
    //     xKeys: "year",
    //     yKeys: ["and", "ios", "win"],
    //     labels: ["Android", "iOS", "Windows"],
    //     colors: ["#FF6384", "#36A2EB", "#FFCE56"],
    //   },
    //   {
    //     title: "Area Chart",
    //     type: "area",
    //     bodyData: [
    //       { year: "2013", a: 10, b: 5 },
    //       { year: "2014", a: 30, b: 20 },
    //       { year: "2015", a: 20, b: 25 },
    //       { year: "2016", a: 40, b: 15 },
    //     ],
    //     xKeys: "year",
    //     yKeys: ["a", "b"],
    //     labels: ["Serie A", "Serie B"],
    //     colors: ["#FF6384", "#36A2EB"],
    //   },
    //   {
    //     title: "Donut Chart",
    //     type: "donut",
    //     bodyData: [
    //       { label: "Download Sales", value: 12 },
    //       { label: "In-Store Sales", value: 30 },
    //       { label: "Mail-Order Sales", value: 20 },
    //     ],
    //     colors: ["#0483ff", "#e64141", "#00ca00"],
    //     yKeys: [],
    //     xKeys: "",
    //     labels: [],
    //   },
    // ],
    // };
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

    
    return { LineChartData }
  }
}
</script>
<style scoped></style>
