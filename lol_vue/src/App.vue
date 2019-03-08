<template>
  <div id="app">
      <mt-header></mt-header>
      <router-view></router-view>
      <mt-footer></mt-footer>
  </div>
</template>
<script>
import Header from './components/sub/Header.vue';
import Footer from './components/sub/Footer.vue';
export default {
    data(){
      return {}
    },
    components:{
      "mt-header":Header,
      "mt-footer":Footer
    }
}
</script>

<style>
body{
  padding-top:20px;
  padding-bottom:20px;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
nav.mui-bar{
  background:black!important;
}
</style>
