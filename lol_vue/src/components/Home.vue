<template>
    <div id="app">
         <mt-swipe :auto="2500">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url" alt="">
            </mt-swipe-item>
        </mt-swipe>
         <ul class="mui-table-view mui-grid-view mui-grid-9">
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/products?classify=clay">
		                    <span class="mui-icon mui-spinner"></span>
		                    <div class="mui-media-body">雕塑/手办</div></router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/products?classify=clothes">
		                    <span class="mui-icon mui-spinner"></span>
		                    <div class="mui-media-body">衣服裤子</div></router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/products?classify=plush">
		                    <span class="mui-icon mui-spinner"></span>
		                    <div class="mui-media-body">毛绒玩偶</div></router-link></li>
		        </ul>
        <div id="show">
            <h4>新品推荐</h4>
            <div class="show_products">
                <div v-for="item in shows" :key="item.id">
                    <router-link :to="{path:'/productCount',query:{classify:item.classify,id:item.pid}}">
                    <img :src="item.img_url" alt="">
                    <span>{{item.title}}</span><br>
                    <span style="color:red">￥{{item.price.toFixed(2)}}</span>
                    </router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            shows:[],
        }
    },
    components:{
    },
    methods:{
        getBanner(){
            var url="http://127.0.0.1:3000/banner";
            this.axios.get(url).then(result=>{
                this.list=result.data;
            })
        },
        getShow(){
            var url="http://127.0.0.1:3000/show";
            this.axios.get(url).then(result=>{
                this.shows=result.data;
            })
        }
    },
    created(){
        this.getBanner();
        this.getShow();
    }
}
</script>
<style>
    #app{
        width:100%;
        background:#fff;
    }
    .mint-swipe{
        margin-top:15px;
        width:100%!important;
        height:120px!important;
    }
    .mint-swipe img{
        width:100%;
    }
    #show {
        color:black!important;
    }
    #show .show_products img{
        width:100%;
    }
    h4{
        margin-top:30px!important;
        margin-buttom:-10px!important;
    }
</style>

