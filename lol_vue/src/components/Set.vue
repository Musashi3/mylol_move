<template>
    <div>
			<!--页面主内容区开始-->
			<div class="mui-page-content">
				<div class="mui-scroll-wrapper">
					<div class="mui-scroll">
						<ul class="mui-table-view mui-table-view-chevron">
							<li class="mui-table-view-cell mui-media">
								<a class="mui-navigate-right" href="#account">
									<img class="mui-media-object mui-pull-left head-img" id="head-img" src="">
									<div class="mui-media-body">
									您好！ {{user.uname}}
									</div>
								</a>
							</li>
						</ul>
						<ul class="mui-table-view mui-table-view-chevron">
							<li class="mui-table-view-cell">
								<a href="#account" class="mui-navigate-right">账号与安全</a>
							</li>
						</ul>
						<ul class="mui-table-view mui-table-view-chevron">
							<li class="mui-table-view-cell">
								<a href="#notifications" class="mui-navigate-right">新消息通知</a>
							</li>
							<li class="mui-table-view-cell">
								<a href="#privacy" class="mui-navigate-right">隐私</a>
							</li>
							<li class="mui-table-view-cell">
								<a href="#general" class="mui-navigate-right">通用</a>
							</li>
						</ul>
						<ul class="mui-table-view mui-table-view-chevron">
							<li class="mui-table-view-cell">
								<a href="#about" class="mui-navigate-right">关于 <i class="mui-pull-right update">V3.1.0</i></a>
							</li>
						</ul>
						<ul class="mui-table-view logout">
							<li class="mui-table-view-cell" style="text-align: center;" @click="logout">
								<span>退出登录</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--页面主内容区结束-->
		</div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
		return{
			user:[],
		}
	},
	methods:{
		getUser:function(){
			var url="http://127.0.0.1:3000/user"
			this.axios.get(url).then(result=>{
				if(result.data.data==-1){
					Toast(result.data.msg);
					this.$router.push("/")
				}else{
					this.user=result.data[0];
				}
			})
		},
		logout:function(){
			var url="http://127.0.0.1:3000/logout";
			this.axios.get(url).then(result=>{
				Toast(result.data.msg);
				this.$router.push("/")
			})
		}
	},
	created(){
		this.getUser();
	}
}
</script>
<style>
    .mui-scroll-wrapper{
        margin:50px 0;
        text-align: left;
    }
    .mui-table-view{
        margin-top:20px;
    }
	.logout{
		background:#f00!important;
		color:#fff;
		width:200px;
		border-radius:5px;
		margin:0 auto;

	}
</style>

