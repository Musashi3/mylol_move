<template>
      <div class="mui-card">
				<div class="mui-card-header">{{product.title}}</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<img :src="product.img_url" alt="">
					</div>
				</div>
				<div class="mui-card-footer">
                    <p>价格：￥<span>{{parseInt(product.price).toFixed(2)}}</span></p>
                    <p>颜色：<span>彩色</span></p>
                    <p>尺码：<span>均码</span></p>
                    数量：
                    <div class="mui-numbox">
                        <button class="mui-btn mui-btn-numbox-minus" type="button" @click="remove">-</button>
                        <input class="mui-input-numbox" type="number" :value="count"/>
                        <button class="mui-btn mui-btn-numbox-plus" type="button" @click="add">+</button>
				    </div>
                    <div class="btns">
                    <mt-button type="danger" @click="addCart">加入购物车</mt-button>     
	                <mt-button type="primary" size="large" @click="waitOpen">立即购买</mt-button>
                    </div>
                </div>
        
        </div>   
</template>
<script>
   import {Toast} from "mint-ui"
    export default{
        data(){
            return{
                product:{},
                count:1,
            }
        },
        methods:{
            getProduct(){
                var url="http://127.0.0.1:3000/product?classify="+this.$route.query.classify+"&id="+this.$route.query.id
                console.log(url);
                this.axios.get(url).then(result=>{
                    this.product=result.data[0];
                })
            },
            remove(){
                if(this.count>1)
                 this.count--;
                else 
                 this.count=1;
            },
            add(){
                this.count++;
            },
            addCart(){
                var title=this.product.title;
                var price=this.product.price;
                var count=this.count;
                var img_url=this.product.img_url;
                var url="http://127.0.0.1:3000/addcart?title="+title+"&price="+price+"&count="+count+"&img_url="+img_url;
                this.axios.get(url).then(result=>{
                    if(result.data.code==-1){
                        Toast(result.data.msg);
                    }else{
                        Toast(result.data.msg)
                    }
                })
            },
            waitOpen(){
                Toast("该功能暂未实现，敬请期待")
            }
        },
        created(){
            this.getProduct();
        }
    }
</script>
<style>
 .mui-card-content-inner img{
     width:100%!important;
 }
 .mui-card-footer{
     display:block!important;
     text-align: left;
 }
 .mui-card-footer span{
     color:#f30011!important;
     font-size:18px;
 }
 button.mint-button{
     width:45%;
 }
 .btns{
     margin:10px 0;
     display:flex;
    justify-content: space-around     
 }
 .mui-card-header{
     font-weight:bolder;
 }
</style>