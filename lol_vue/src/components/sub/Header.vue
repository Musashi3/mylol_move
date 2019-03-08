<template>
    <div>
        <header id="header" class="mui-bar mui-bar-nav">
                <h1 class="mui-title">{{title}}</h1>
        </header>
    </div>
</template>
<script>
    export default{
        data(){
        return {
            title:"LOL周边商城",
        }
    },
        watch:{
            "$route.path":function(newVal){
                if(newVal==="/productCount")
                    this.title="商品详情"
                else if(newVal==="/Setting")
                    this.title="设置"
                else
                    this.title="LOL周边商城"
            }
        }
    }
</script>
<style>
    #header,.mui-title{
        background:black!important;
        color:white!important;
    }
</style>
