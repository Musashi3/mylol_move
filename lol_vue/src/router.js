import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/Home.vue'
import Products from './components/ProductsList.vue'
import Product from './components/Product.vue'
import Login from './components/Login.vue'
import Setting from './components/Set.vue'
import BuyCar from './components/BuyCar.vue'
import Register from './components/Zhuce.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",redirect:"/Home"},
    {path:"/Home",component:Home},
    {path:"/products",component:Products},
    {path:"/productCount",component:Product},
    {path:"/login",component:Login},
    {path:"/setting",component:Setting},
    {path:"/buyCar",component:BuyCar},
    {path:"/register",component:Register}
  ]
})
