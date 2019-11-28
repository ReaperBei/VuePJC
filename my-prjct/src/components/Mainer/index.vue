<template>
    <div>
        <div class="content-tab">
            <!-- <div @click="addclic(1)" class="active">tab1</div>
            <div @click="addclic(2)">tab2</div> -->
            <div v-for="(ietm,index) in list" :key="index" :class="activeClass == index ? 'active':''"  @click="getItem(index)">
                {{ietm}}
            </div>
        </div>
        <div>
            <keep-alive>
                <Tabone v-show="activeClass===0"/>
                <Tabtwo v-elsev-show="activeClass===1"/>
            </keep-alive>
        </div>
    </div>
</template>

<script>
import Tabone from './tabone'
import Tabtwo from './tabtwo'
export default {
    data () {
        return {
            content: 1,
            list: ['tba1', 'tba2'],
            activeClass: 0
        }
    },
    components: {
        Tabtwo,
        Tabone
    },
    methods: {
        getItem (index) {
            this.activeClass = index
        }
    }
}
</script>

<style lang='scss' scoped>
.content-tab{
    display: flex;
    cursor:pointer;
}
.active{
    border: 1px solid;
    color: #1e82d2;
}
</style>
