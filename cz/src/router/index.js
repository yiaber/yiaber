import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home'
import Det from '../views/Det'
import Login  from '../views/Login'


import Details from '../views/Details'
import Carousel from '../components/Carousel'
// import Carousels from '../components/Carousels'





Vue.use(VueRouter)

const routes = [
  {
    path:'/carousel',
    name:'Carousel',
    component:Carousel
  },
  {
    path:'/login',
    name:'Login',
    component:Login
  },
  {
    path:'/det',
    name:'Det',
    component:Det
  },
  // {
  //   path:'/home',
  //   name:'Home',
  //   component:Home
  // },
  {
    path:'/details',
    name:'Details',
    component:Details
  }
  ,
  {
    path: '/',
    name: 'Home',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/Home.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
