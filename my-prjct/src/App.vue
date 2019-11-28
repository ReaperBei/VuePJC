<template>
  <div id="app">
    <Header />
  </div>
</template>

<script>
import Common from './components/Common/HelloWorld.vue'
import Header from './components/Header/index.vue'
export default {
    name: 'App',
    components: {
        Common,
        Header
    }
}
</script>

<style>
@import '../static/css/index.css'
</style>
