<template>
  <div class="app-login">
    <header>
      <button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpHome()"></button>后月登录
      <a href="" class="group">
        <img src="http://localhost:3000/img/login/group.png" alt="">
      </a>
    </header>
    <div class="deng">
      <span class="zhanghao"></span><input type="text" placeholder="请输入账号" class="lu">
      <span class="mima"></span><input type="text" placeholder="请输入账号">
      <button class="login_btn" @click.stop.prevent="jumpLogin()">登录</button>
      <button class="register_btn">立即注册</button>
    </div>
    <a href="">忘记密码？</a>
    <img src="http://127.0.0.1:3000/img/login/assistant_member.png" alt="" class="fenge">
    <div class="qq_div">
      <a href="">
        <img src="http://localhost:3000/img/login/qq.png" alt="" class="qq">
        <span>QQ</span>
      </a>
    </div>
    <div class="wx_div">
      <a href="">
        <img src="http://localhost:3000/img/login/weixin.png" alt="" class="weixin">
        <span>微信</span>
      </a>
    </div>
  </div>
</template>
<script>
  import {Toast} from "mint-ui"
  export default {
    data() {
      return {
        unameval:"",
        upwdval:""
      }
    },
    methods:{
      jumpLogin(){
        this.$router.push("/home/loginSuccess")
      },
      jumpHome(){
        this.$router.push("/home")
      },
      btnSubmit(){
        var u = this.unameval;
        var p = this.upwdval;
        this.$http.get("login?uname="+u+"&upwd="+p).then(result=>{  //10:35
           if(result.body.code == 1){
             Toast(result.body.msg);
             this.$router.push("/");
           }else{
             Toast(result.body.msg);
           }
        })
      }
    }
  }
</script>
<style>
  header .buttn{
    height:50px;
    background:#000;
    color:#d0192b;
    border:0;
    position:fixed;
    top:0;
    left:0;
  }
  header{
    text-align:center;
    color:#d0192b;
  }
  header .group{
    width:45px;
    height:45px;
    position:relative;
    right:-25px;
    top:-65px;
  }
  header .group img{
    width:20px !important;
    height:15px;
  }
  .app-login{
    height:577px;
    background:#fff;
  }
  .app-login .deng .lu{
    margin-top:30px;
  }
  .app-login .deng input{
    width:70%;
    border:0;
    border-bottom:1px solid #ccc;
    font-size:12px;
  }
  .app-login .deng .zhanghao{
    display:inline-block;
    background:url("http://127.0.0.1:3000/img/login/username.png");
    background-size:30px 30px;
    margin-left:10%;
    width:30px;
    height:30px;
    vertical-align:middle;
    position:relative;
    left:15px;
    top:-3px;
  }
  .app-login .deng .mima{
    display:inline-block;
    background:url("http://127.0.0.1:3000/img/login/password.png");
    background-size:30px 30px;
    margin-left:10%;
    width:30px;
    height:30px;
    vertical-align:middle;
    position:relative;
    left:15px;
    top:-3px;
  }
  .app-login .deng .login_btn{
    width:80%;
    margin-left:10%;
    margin-top:30px; 
    background:#FF4E00;
    color:#fff;
    border:0;
    border-radius:18px;
    font-size:14px;
  }
  .app-login .deng .register_btn{
    width:80%;
    margin-left:10%;
    margin-top:15px; 
    background:#fff;
    color:#FF4E00;
    border:1px solid #ff4e00;
    border-radius:18px;
    font-size:14px;
  }
  .app-login a{
    width:80%;
    margin:0 auto;
    margin-top:15px;
    display:block;
    color:#d30915;
    text-align:right;
    font-size:12px;
  }
  .app-login .fenge{
    width:80%;
    margin-left:10%;
    margin-top:25px;
  }
  .qq_div,.wx_div{
    display:inline-block;
    margin-left:22%;
    text-align:center;
  }
  .app-login .qq_div img{
    width:45px;
    height:45px;
  }
  .app-login .wx_div img{
    width:45px;
    height:45px;
  }
  .app-login .qq_div a{
    color:#bbb;
    font-size:12px;
    text-align:center;
  }
  .app-login .wx_div a{
    color:#bbb;
    font-size:12px;
    text-align:center;
  }
  .app-login header button{
        height:40px;
    }
</style>