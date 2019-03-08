<template>
    <div class="mui-card">
				<div class="mui-card-header">欢迎注册！</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
                        <form class="loginForm">
                            <div>
                               <span>用户名：</span> <input type="text" placeholder="请输入6~12位的用户名" v-model="uname">
                            </div>
                            <div>
                                <span>密码：</span> <input type="text" placeholder="请输入6~16位的密码" v-model="upwd" >
                            </div>
                            <div>
                                <span>确认：</span> <input type="text" placeholder="请再输入一次密码" v-model="upwd">
                            </div>
                            <div>
                                <span>邮箱：</span> <input type="text" placeholder="请输入用于验证的邮箱" v-model="email">
                            </div>
                            <div>
                                <span>手机号：</span> <input type="text" placeholder="请输入11位的手机号码" v-model="phone">
                            </div>
                            <div class="login">
                                <input type="button" value="注册" class="login_btn" @click="register">
                            </div> 
                        </form>
					</div>
				</div>
				<div class="mui-card-footer">
                  <router-link to="/login">
                    <a href="javascript:;">已有账号？点我登录！</a>
                  </router-link>
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
                email:"",
                phone:"",
            }
        },
        methods:{
            register(){
                var uname=this.uname;
                var upwd=this.upwd;
                var email=this.email;
                var phone=this.phone;
                var reg=/^[a-z0-9]{3,12}$/i;
                var reg2=/^[0-9A-Za-z][\.-_0-9A-Za-z]*@[0-9A-Za-z]+(?:\.[0-9A-Za-z]+)+$/;
                var reg3=/^1[34578]\d{9}$/;
                if(!reg.test(uname)){
                    Toast("用户名不能为空");
                    return;
                }
                if(!reg.test(upwd)){
                    Toast("密码不能为空")
                    return;
                }
                if(!reg2.test(email)){
                    Toast("邮箱格式不正确")
                    return;
                }
                if(!reg3.test(phone)){
                    Toast("手机号格式不正确");
                    return;
                }
                var url="http://127.0.0.1:3000/register"
                var user={
                    uname:uname,
                    upwd:upwd,
                    email:email,
                    phone:phone
                }
                this.axios.post(url,this.qs.stringify(user)).then(result=>{
                        console.log(result)
                        if(result.data.data==1){
                            Toast(result.data.msg)
                            this.$router.push("/")
                        }else{
                            Toast(result.data.msg)
                        }
                });
            }
        }
    }
</script>
<style>

</style>