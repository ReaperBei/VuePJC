import Vue from 'vue'
import Router from 'vue-router'
import Hadr from '@/components/Common/HelloWorld.vue'
import Mainer from '@/components/Mainer'
import Loin from '@/components/Loin/index'
import particulars from '@/components/Main/particulars'
import Headers from '@/components/Header/header.vue'

Vue.use(Router)

export default new Router({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'Headers',
            components: {
                default: Headers
            },
            meta: {
                requiresAuth: false
            }
        }, {
            path: '/Hadr',
            name: 'Hadr',
            component: Hadr,
            meta: {
                requiresAuth: false
            }
        }, {
            path: '/Mainer',
            name: 'Mainer',
            component: Mainer
        }, {
            path: '/Loin',
            name: 'Loin',
            component: Loin,
            meta: {
                requiresAuth: true
            }
        }, {
            path: '/particulars/:id',
            name: 'particulars',
            component: particulars
        }
    ]
})
