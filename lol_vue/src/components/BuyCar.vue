<template>
    <div id="buy_car">
        <ul>
            <li v-for="(item,i) in list" :key="i">
                <div class="product">
                    <div class="size">
                        <img :src="item.img_url" alt="">
                        <p>{{item.title}}<span>￥{{item.price.toFixed(2)}}</span></p>
                    </div>
                    <div class="mui-numbox">
                        <div>
                            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="ded" :data-count="item.count" :data-index="i">-</button>
                                <input class="mui-input-numbox" type="number" :value="item.count" :data-i="i" @blur="checkCount"/>
                            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="add" :data-count="item.count" :data-index="i">+</button>
                        </div>
				    </div>
                    <div class="del">
                        <span>小计: ￥</span><span class="price">{{item | priceMath }}</span>
                        <button @click="remove" :data-id="item.id" :data-i="i">删除</button>
                    </div>
                </div>
            </li>
        </ul>
        <div id="countMath">
            <div class="count">
               <span>{{list.length}}件商品,共计{{totalPrice}}元</span>
            </div>
            <div id="jiesuan" @click="waitOpen">
                <span>结算</span>
            </div>
        </div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return{
                list:[],
                totalPrice:"",
            }
        },
        watch:{
            list:{
                handler:function(val,oldval){
                    var price = 0;
                    val.forEach(item=>{
                        price+=(item.price*item.count)
                    });
                    this.totalPrice=price;
                },
                deep: true,
                immediate: true
            }
        },
        filters:{
            priceMath(item){
                return (item.price*item.count).toFixed(2);
            }
        },
        methods:{
            ded(e){
               var count=parseInt(e.target.dataset.count);
               var i=e.target.dataset.index;
               if(count>1){
                   this.list[i].count-=1;
               }else{
                   count=1;
               }
            },
            add(e){
               var count=parseInt(e.target.dataset.count);
               var i=e.target.dataset.index;
               this.list[i].count=count+1;

            },
            checkCount:function(e){
                console.log(e)
                var count=e.target.value;
                var i=e.target.dataset.i;
                this.list[i].count=count;
            },
            getProduct(){
                
                var url="http://127.0.0.1:3000/buyCar"
                this.axios.get(url).then(result=>{
                    if(result.data.code==-1){
                        Toast(result.data.msg)
                        this.$router.push("/login")
                    }else{
                        this.list=result.data
                        console.log(this.list)
                    }
                })
            },
            waitOpen(){
                Toast("暂未开放该功能")
            },
            remove(e){
               var id=e.target.dataset.id;
               var i=e.target.dataset.i;
                var url="http://127.0.0.1:3000/delete?id="+id;
                this.axios.get(url).then(result=>{
                    console.log(result)
                    this.list.splice(i,1);
                    Toast("删除成功")
                })
            }
        },
        created(){
            this.getProduct();
        }
    }
</script>
<style>
    body{
        padding:10px 0px 40px;
    }
    #buy_car{
        margin:40px 0;
    }
    ul{
        list-style-type: none;
    }
    .product{
        display:flex;
   }
   .mui-numbox{
       width:100%;
       height:100%;
       margin-top:50px;
       margin-left:50px;
       display:flex;
       flex-direction:column;
       justify-content:space-around;
   }
   .mui-numbox input{
       margin-top:4px!important;
       font-size:18px;
   }
    .product .size{
        width:45%;
        display:flex;
        justify-content:center;
        flex-direction:column;
    }
    .product img{
        width:100%;
    }
    #countMath{
        position:fixed;
        top:85%;
        background:#fff;
        border:1px solid rgba(0,0,0,0.5);
        width:100%;
        display:flex;
        justify-content:space-between;
    }
    .count,#jiesuan{
        height:50px;
        line-height: 50px;
        width:45%;
        border-left:1px solid rgba(0,0,0,0.5);
         font-weight: bolder;
    }
    #jiesuan{
        background:orangered;
        color:#fff;
    }
    .del{
        margin-left:-10px;
        font-size:12px;
        padding:20px 0;
    }
    .del button{
        background:red;
        color:#fff;
        font-weight:bolder;
    }
    .del .price{
        color:red;
        font-size:14px;
        font-weight:bold;
    }
</style>