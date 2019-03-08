<template>
  <div class="mui-card">
				<div class="mui-card-header">欢迎登录</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
                        <form class="loginForm">
                            <div>
                               <span>用户名：</span> <input type="text" placeholder="请输入用户名" v-model="uname">
                            </div>
                            <div>
                                <span>密码：</span> <input type="password" placeholder="请输入密码" v-model="upwd">
                            </div>
                            <div class="login">
                                <input type="button" value="登录" @click="butLogin" class="login_btn">
                            </div> 
                        </form>
					</div>
				</div>
				<div class="mui-card-footer">
                  <a href="javascript:;">忘记密码？</a>
                 <router-link to="/register">点我注册</router-link>
                </div>
	</div>
</template>
<script>
import {Toast} from "mint-ui"
    export default{
        data(){
            return{
                uname:"",
                upwd:"",
            }
        },
        methods:{
            butLogin(){
                var uname=this.uname;
                var upwd=this.upwd;
                var reg=/^[a-z0-9]{3,12}$/i;
                if(!reg.test(uname)){
                    Toast("用户名格式不正确");
                    return;
                }
                if(!reg.test(upwd)){
                    Toast("密码不正确")
                    return;
                }
                var url="http://127.0.0.1:3000/login"
                var users={
                    uname:this.uname,
                    upwd:this.upwd,
                }
                console.log(users)
                this.axios.post(url,this.qs.stringify(users)).then(result=>{
                    console.log(result)
                    if(result.data.data==-1)
                        Toast(result.data.msg)
                    else{
                       Toast(result.data.msg)
                       this.$router.push("/")
                    }
                })
            },
            isLogin(){
                var url="http://127.0.0.1:3000/login"
                this.axios.get(url),then(result=>{
                    if(result.data==-1){
                        Toast("您已登录，请尽情购物吧");
                        this.$router.push("/")
                    }
                })
            },
            created(){
                this.isLogin();
                this.$root.reload();
            }
        }
    }
</script>
<style>
  
   .loginForm div span{
        display: inline-block;
        width: 60px!important;;
    }
    .loginForm input{
        font-size:14px;
        width:70%!important;
    }
    .login{
        text-align: center;
        
    }
    .login_btn{
        background:#2196f3!important;
        color:#fff!important;
    }
</style>