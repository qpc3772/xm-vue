<template>
  <div class="app-message">
    <header><button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpLoginSuccess()"></button>个人资料</header>
    <div class="message">
      <div class="touxiang">
        <img src="http://127.0.0.1:3000/img/login/touxiang.png" alt="">
      </div>
      <div class="flex zhanghao">账号</div>
      <div class="flex nichen">
        <p class="p1">昵称</p>
        <p>等风吹<span class="jiantou"></span></p>
      </div>
      <div class="flex mima">
        <p class="p1">密码</p>
        <p class="p2">修改<span class="jiantou"></span></p>
      </div>
      <div class="flex phone">
        <p class="p1">手机</p>
        <p class="p2">绑定手机号码<span class="jiantou"></span></p>
      </div>
      <div class="flex qq">
        <p class="p1">QQ</p>
        <p><span class="jiantou"></span></p>
      </div>
      <div class="flex youxiang">
        <p class="p1">邮箱</p>
        <p><span class="jiantou"></span></p>
      </div>
      <div class="flex disanfang">
        <p class="p1">第三方账号绑定</p>
        <p class="p2"><img src="http://127.0.0.1:3000/img/login/qq-blue.png" alt=""> <span class="jiantou"></span></p>
      </div>
    </div>
    <div class="tuichu">
      <button @click.stop-prevent="jumpLogin()">退出登录</button>
    </div>
    
  </div>
</template>
<script>
  export default {
    data() {
      return {
        
      }
    },
    methods:{
      jumpLogin(){
        this.$router.push("/home/login");
      },
      jumpLoginSuccess(){
        this.$router.push("/home/loginsuccess");
      }
    }
  }
</script>
<style>
  
  .app-message .message{
    padding-top:10px;
    padding-left:10px;
    background:#fff;
  }
  .app-message .message .flex{
    width:100%;
    height:35px;
    display:flex;
    justify-content:space-between;
    border-bottom:1px solid #ddd;
    line-height:35px;
    padding-left:10px;
    padding-right:10px;
    font-size:13px;
    color:#333 !important;
  }
  .app-message .message .flex .p1{
    font-size:13px;
    color:#333;
  }
  .app-message .message .flex .p2{
    color:#29afe4;
    font-size:12px;
  }
  .app-message .message .flex .p2 img{
    width:32px;
    height:32px;
    margin-top:2px;
    vertical-align:top;
    margin-right:5px;
  }
  .app-message .message .touxiang{
    height:50px;
    border-bottom:1px solid #ddd;
  }
  .app-message .message .touxiang img{
    width:40px;
    height:40px;
    border-radius:50%;
  }
  .jiantou{
    display:inline-block;
    width:8px;
    height:8px;
    border-top:1px solid #333;
    border-right:1px solid #333;
    transform:rotate(45deg);
  }
  .tuichu{
    width:337.5px;
    height:40px;
    margin:0 auto;
    margin-top:50px;
  }
  .tuichu button{
    width:337.5px;
    height:40px;
    background:#E03115 !important;
    text-align:center;
    color:#fff;
    font-size:15px;
  }
  .app-message header button{
    height:40px;
  }
</style>