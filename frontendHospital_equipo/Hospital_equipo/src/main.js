import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
import Raphael from 'raphael/raphael'
import './plugins'
import './registerServiceWorker'
import i18n from './i18n'
import BootstrapVue3 from 'bootstrap-vue-3'
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css'
import VueECharts from 'vue-echarts'
import 'echarts'
import CanvasJSChart from '@canvasjs/vue-charts'
import VueSelect from './plugins/vue-select'
import VuePaginate from 'vue-paginate'; // Importa VuePaginate

global.Raphael = Raphael

const app = createApp(App)
const pinia = createPinia()

app.config.productionTip = false
app.use(router).use(i18n).use(BootstrapVue3)
app.component('v-chart', VueECharts)

import TabNav from './components/bootstrap/tab-nav.vue'
import TabNavItems from './components/bootstrap/tab-nav-items.vue'
import TabContent from './components/bootstrap/tab-content.vue'
import TabContentItem from './components/bootstrap/tab-content-item.vue'

app.component('tab-nav', TabNav)
app.component('tab-nav-items', TabNavItems)
app.component('tab-content', TabContent)
app.component('tab-content-item', TabContentItem)
app.use(VueSelect)
app.use(CanvasJSChart)
app.use(pinia)

app.component('vue-paginate', VuePaginate); // Registra el componente VuePaginate

app.mount('#app')
export default app
