<template>
    <div id="productList">
        <h1>{{type}}区</h1>
        <ul>
            <li v-for="item in list" :key="item.id">
                <div class="products">
                    <router-link :to="{path:'productCount',query:{classify,id:item.id}}">
                        <img :src="item.img_url" alt="">
                        <h5>{{item.title}}</h5>
                        <span>￥{{item.price.toFixed(2)}}</span><br>
                        <mt-button class="checkcount">查看详情</mt-button>
                    </router-link>
                </div>
            </li>
        </ul>
         <mt-button @click="getList">加载更多</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            pno:0,
            type:"",
            classify:this.$route.query.classify
        }
    },
    methods:{
        getList(){
            this.pno++;
            var url="http://127.0.0.1:3000/"+this.$route.query.classify+"?pno="+this.pno;
                  this.axios.get(url).then(result=>{
                var rows=this.list.concat(result.data)
                this.list=rows;
            })
        },
    },
    created(){
        this.getList();
        if(this.$route.query.classify=="clay")
            this.type="手办雕塑"
        else if(this.$route.query.classify=="clothes")
            this.type="衣服裤子"
        else
            this.type="毛绒公仔"
    },
}
</script>
<style>
    #app{
        margin:40px 0;
    }
    #productList h1{
        margin:20px 0!important;
    }
    #productList ul{
        list-style-type: none;
        display:flex;
        flex-wrap:wrap;
        padding:0;
    }
     #productList ul li{
         width:50%; 
     }
    .products{
        border: 1px solid rgba(0,0,0,0.1);
    }
    .products img{
        width:100%!important;
    }
    .mint-button{
        width:100%;
    }
    .checkcount{
        background:#333!important;
        color:#fff!important;
        font-size:14px!important;
    }
</style>

