import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'
import qs from 'qs'
import'../lib/css/style.css'

import '../lib/mui/css/mui.css'
import '../lib/mui/css/icons-extra.css'
import {Header,Swipe,SwipeItem,Button} from "mint-ui"

Axios.defaults.withCredentials=true;
Vue.config.productionTip = false
Vue.prototype.qs=qs;
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button)
Vue.prototype.axios = Axios
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
