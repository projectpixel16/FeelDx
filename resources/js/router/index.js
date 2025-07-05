import { createRouter, createWebHistory } from "vue-router";


import notFound from '../pages/notFound.vue'
import home from '../pages/home.vue'
import about from '../pages/about.vue'
import services from '../pages/services.vue'
import contactus from '../pages/contact.vue'


const routes = [
    {
        path:'/',
        component: home,
    },
    {
        path:'/about',
        component: about,
    },
    {
        path:'/services',
        component: services,
    },

    {
        path:'/contact',
        component: contactus,
    },
    {
        path:'/:pathMatch(.*)*',
        name:'notFound',
        component: notFound,
        meta:{
            requiresAuth:false
        }
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router
