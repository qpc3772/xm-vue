<template>
  <div class="app-loginsuccess">
    <header><button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpHome()"></button>会员中心</header>
    <div class="login_head">
      <div class="head_one">
        <p class="head_p_one">签到</p>
        <img src="http://127.0.0.1:3000/img/login/touxiang.png" alt="">
        <p class="head_p_two" @click.stop.prevent="jumpMessage()">账户管理></p>
      </div>
      <div class="head_two">
        <p class="head_p">
          <span class="head_s1">余额</span>
          <span class="head_s2">等风吹</span>
          <span class="head_s3">积分</span>
        </p>
      </div>
      <div class="head_three">
        <p class="head_p">
          <span class="head_s1">0.00</span>
          <span class="head_s2">普通会员</span>
          <span class="head_s3">120</span>
        </p>
      </div>
    </div>
    <div class="list">
      <div class="list_one">
        <img src="http://127.0.0.1:3000/img/login/pay.png">
        <p>待付款</p>
      </div>
      <div class="list_one">
        <img src="http://127.0.0.1:3000/img/login/send.png" alt="">
        <p>待发货</p>
      </div>
      <div class="list_one">
        <img src="http://127.0.0.1:3000/img/login/recieve.png" alt="">
        <p>待收货</p>
      </div>
      <div class="list_one">
        <img src="http://127.0.0.1:3000/img/login/received.png" alt="">
        <p>已发货</p>
      </div>
      <div class="list_one">
        <img src="http://127.0.0.1:3000/img/login/reback.png" alt="">
        <p>退款/售后</p>
      </div>
    </div>
    <div class="dingdan">
      <p class="p1">
        <span class="s1">普通订单</span>
        <span class="s2">查看全部订单<span class="s3"></span></span>
      </p>
      <p class="p2">
        <span class="s1">推广中心</span>
        <span class="s2"></span>
      </p>
    </div>
    <div class="tiao"></div>
    <div class="login_nav">
      <div class="login_nav_list"  @click.stop.prevent="jumpMessage()">
        <img src="http://127.0.0.1:3000/img/login/1.png" alt="">
        <p>个人资料</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/2.png" alt="">
        <p>收货地址</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/3.png" alt="">
        <p>推广二维码</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/4.png" alt="">
        <p>个优惠券</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/5.png" alt="">
        <p>我的虚拟码</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/6.png" alt="">
        <p>我的收藏</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/7.png" alt="">
        <p>我的足迹</p>
      </div>
      <div class="login_nav_list">
        <img src="http://127.0.0.1:3000/img/login/8.png" alt="">
        <p>中奖记录</p>
      </div>
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
      jumpHome(){
        this.$router.push("/home");
      },
      jumpMessage(){
        this.$router.push("/home/loginSuccess/message")
      }
    }
  }
</script>
<style>
  .app-loginsuccess{
    background:#fff;
  }
  .app-loginsuccess .huiyuan{
    width:100%;
    height:50px;
    z-index:999 !important;
  }
  .app-loginsuccess .login_head{
    width:100%;
    height:175px;
    background:url(http://127.0.0.1:3000/img/login/background.jpg) no-repeat center;
  }
  .app-loginsuccess .login_head .head_one{
    height:70px;
    display:flex;
    justify-content:space-between;
    padding:20px;
  }
  .app-loginsuccess .login_head .head_one img{
    width:65px;
    height:65px;
    border-radius:50%;
    border:3px solid #f1c872;
    margin-left:25px;
  }
  .app-loginsuccess .login_head .head_one .head_p_one{
    width:44px;
    height:20px;
    background:#f1c872;
    border-radius:3px;
    text-align:center;
    line-height:20px;
    color:#d0192b;
    font-size:10px;
  }
  .app-loginsuccess .login_head .head_one .head_p_two{
    color:#fff;
  }
  .app-loginsuccess .login_head .head_two .head_p{
    display:flex;
    justify-content:space-between;
    margin-top:25px;
    color:#fff;
  }
  .app-loginsuccess .login_head .head_two .head_p .head_s1{
    margin-left:60px;
    font-size:14px;
  }
  .app-loginsuccess .login_head .head_two .head_p .head_s2{
    font-size:16px;
  }
  .app-loginsuccess .login_head .head_two .head_p .head_s3{
    margin-right:60px;
    font-size:14px;
  }
  .app-loginsuccess .login_head .head_three .head_p{
    display:flex;
    justify-content:space-between;
    margin-top:10px;
  }
  .app-loginsuccess .login_head .head_three .head_p .head_s1{
    margin-left:55px;
    font-size:20px;
    color:#f1c872;
  }
  .app-loginsuccess .login_head .head_three .head_p .head_s2{
    width:64px;
    height:19px;
    background:#dbb668;
    border-radius:3px;
    text-align:center;
    color:#d0192b;
  }
  .app-loginsuccess .login_head .head_three .head_p .head_s3{
    margin-right:60px;
    font-size:20px;
    color:#f1c872;
  }
  .app-loginsuccess .list{
    margin:0 auto;
    width:100%;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding-top:10px;
    background:#fff;
  }
  .app-loginsuccess .list .list_one{
    width:20%;
    display:flex;
    flex-direction:column;
    align-items:center;
  }
  .app-loginsuccess .list .list_one p{
    font-size:12px !important;
    color:#333;
  }
  .app-loginsuccess .list .list_one img{
    width:25px;
    height:25px;
    margin-bottom:5px;
  }
  .dingdan{
    margin-top:20px;
  }
  .dingdan .p1{
    height:38px;
    display:flex;
    justify-content:space-between;
    border-bottom:1px solid #e6e3e3; 
    line-height:38px;
  }
  .dingdan .p1 .s1{
    margin-left:15px;
    color:#333;
  }
  .dingdan .p1 .s2{
    margin-right:15px;
  }
  .dingdan .p1 .s2 .s3{
    display:inline-block;
    width:8px;
    height:8px;
    border-top:1px solid #ccc;
    border-right:1px solid #ccc;
    transform:rotate(45deg);
  }
  .dingdan .p2{
    height:30px;
    display:flex;
    justify-content:space-between;
    border-bottom:1px solid #e6e3e3; 
    line-height:25px;
    margin:0;
  }
  .dingdan .p2 .s1{
    margin-left:15px;
    color:#333;
  }
  .dingdan .p2 .s2{
    margin-top:5px;
    margin-right:15px;
    display:inline-block;
    width:8px;
    height:8px;
    border-top:1px solid #ccc;
    border-right:1px solid #ccc;
    transform:rotate(45deg);
  }
  .login_nav{
    width:100%;
    display:flex;
    flex-wrap: wrap;
    align-items:center;
    justify-content:space-between;
  }
  .login_nav .login_nav_list{
    width:25%;
    text-align:center;
    margin-top:15px;
  }
  .login_nav .login_nav_list img{
    width:25px;
    height:25px;
  }
  .login_nav .login_nav_list p{
    font-size:12px;
    margin-top:5px;
    color:#333;
  }
  .app-loginsuccess header button{
    height:40px;
  }





  .tiao{
    width:100%;
    height:10px;
    background:#EFEFF4;
  }
</style>