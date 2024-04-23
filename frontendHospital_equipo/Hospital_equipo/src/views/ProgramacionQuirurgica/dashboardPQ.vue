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
    </b-row>
  </b-container>
</template>

<script>
import { xray } from '../../config/pluginInit'
import iqCard from '../../components/xray/cards/iq-card'

// Chart
import { PieChart } from 'vue-chart-3'
import { Chart, registerables } from 'chart.js'
Chart.register(...registerables)

export default {
  name: 'ChartJs',
  components: { iqCard, PieChart },
  mounted() {
    xray.index()
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
      }
    }
  },
  methods: {
    // Método para cargar los datos de la base de datos en la gráfica
    async loadDataFromDatabase() {
      try {
        // Lógica para obtener los datos de la base de datos
        const response = await fetch('http://127.0.0.1:8000/hospital/api/v1cirugias/')
        const data = await response.json()

        // Procesar los datos y asignarlos a la gráfica
        const tiposCirugias = {}
        data.forEach(cirugia => {
          if (tiposCirugias[cirugia.tipo]) {
            tiposCirugias[cirugia.tipo]++
          } else {
            tiposCirugias[cirugia.tipo] = 1
          }
        })

        this.PieChartData.labels = Object.keys(tiposCirugias)
        this.PieChartData.datasets[0].data = Object.values(tiposCirugias)

        // Actualizar la gráfica
        this.$refs.pieChart.update()
      } catch (error) {
        console.error('Error al cargar los datos de la base de datos:', error)
      }
    }
  },
  created() {
    // Llamar al método para cargar los datos al crear el componente
    this.loadDataFromDatabase()
  }
}
</script>

<style scoped></style>
