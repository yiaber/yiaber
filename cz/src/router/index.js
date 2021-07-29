import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home'
import Det from '../views/Det'
import Login  from '../views/Login'
import Register from '../components/Register'


import Details from '../views/Details'
import Carousel from '../components/Carousel'
import Carousel1 from '../components/Carousel1'
// import Carousels from '../components/Carousels'
// import Particulars from '../components/Particulars'  //详情页
import Bottom from '../components/Bottom'  //底部导航





Vue.use(VueRouter)

const routes = [
  {
    path:'/bottom',    //底部导航
    name:'Bottom',
    component:Bottom
  },
  {
    path:'/particulars/:fid',    //详情页
    name:'Particulars',
    component:()=> import(
      /* webpackChunkName:"Particulars" */
      '../components/Particulars.vue'
    ),
    props:true
  },
  {
    path:'/register',
    name:'Register',
    component:Register
  },
  {
    path:'/carousel',
    name:'Carousel',
    component:Carousel
  },
  {
    path:'/carousel1',
    name:'Carousel1',
    component:Carousel1
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
