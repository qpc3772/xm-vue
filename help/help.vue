<template>
  <div class="app-help">
    <header><button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpHome()"></button>帮助中心</header>
    <div class="bg_help">
      <div class="help_ul">
        <ul>
          <li @click.stop.prevent="gethelplist" @click="ify(1)" :class="ifys==1?'left_b':''">帮助中心</li>
          <li @click.stop.prevent="getmaijia" @click="ify(2)" :class="ifys==2?'left_b':''">买家须知</li>
          <li @click.stop.prevent="getfukuan" @click="ify(3)" :class="ifys==3?'left_b':''">付款方式</li>
          <li @click.stop.prevent="getpeisong" @click="ify(4)" :class="ifys==4?'left_b':''">配送方式</li>
          <li @click.stop.prevent="gettuihuan" @click="ify(5)" :class="ifys==5?'left_b':''">售后保障</li>
          <li @click.stop.prevent="getwenti" @click="ify(6)" :class="ifys==6?'left_b':''">常见问题</li>
          <li @click.stop.prevent="getwomen" @click="ify(7)" :class="ifys==7?'left_b':''">关于后月</li>
        </ul>
      </div>
      <div class="help_p" v-for="item in helplist" >
        <p class="help_p_one ">{{item.title}}</p>
        <p class="help_p_two">{{item.content}}</p>
      </div>
      <!--div class="help_p" style="display:none">
        <p class="help_p_one ">付款方式</p>
        <p class="help_p_two">1、下完订单后在账户里看不见相关信息怎么办？<br>
        您可能在后月古树茶有多个账户，建议您核实一下当时下订单的具体账户，如有疑问您可致电客服400-99-00001，帮您核查。<br>
        2、网站显示有赠品为何下单后没有收到赠品？<br>
        赠品的配送是和您的收货地址有关的，若您在浏览商品时用的地址非最终的收货地址，有可能出现下单后没有赠品的情况；您所在的地址是否支持赠品配送，请以结算页面的购物明细为准，谢谢。;</p>
      </div-->
    </div>
  </div>
</template>

<script>
  export default {
        data(){
            return{ 
              helplist:[],
              ifys:1
            }
        },
        methods:{
          ify(i){
            this.ifys=i
          },
          gethelplist(){
            var url = "http://127.0.0.1:3000/helplist"
            this.$http.get(url).then(result=>{
                this.helplist = result.body
            })
          },
          getbangzhu(){
              var url = "http://127.0.0.1:3000/bangzhu"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          getmaijia(){
              var url = "http://127.0.0.1:3000/maijia"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          getfukuan(){
              var url = "http://127.0.0.1:3000/fukuan"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          getpeisong(){
              var url = "http://127.0.0.1:3000/peisong"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          gettuihuan(){
              var url = "http://127.0.0.1:3000/tuihuan"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          getwenti(){
              var url = "http://127.0.0.1:3000/wenti"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },
          getwomen(){
              var url = "http://127.0.0.1:3000/women"
              this.$http.get(url).then(result=>{
                  this.helplist = result.body
              })
          },


          jumpHome(){
            this.$router.push("/home")
          }
        },
        created(){
          this.gethelplist();
        }
    }
</script>

<style>
  .app-help{
    background:#fff;
    
  }
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
  .app-help .bg_help .help_ul ul{
    margin:0;
    padding:0;
    list-style:none;
  }
  .app-help .bg_help .help_ul ul li{
    width:101px;
    height:44px;
    line-height:44px;
    text-align:center;
    background:#fff;
    font-size:14px;
    border-top:1px solid #ccc;
  }
  .app-help .bg_help{
    width:100%;
    display:flex;
    justify-content:space-between;
  }
  .app-help .bg_help .help_p{
    padding:0 15px;
  }
  .app-help .bg_help .help_p .help_p_one{
    width:100%;
    line-height:32px;
    font-size:14px !important;
    color:#000;
    text-align:center;
    font-family: "微软雅黑", "Helvetica Neue", "Helvetica", Helvetica, Arial,sans-serif;
    padding:0 10px;
  }
  .app-help .bg_help .help_p .help_p_two{
    font-size:12px !important;
    line-height:32px;
    padding-left:10px;
    color:#000;
    font-family: "微软雅黑", "Helvetica Neue", "Helvetica", Helvetica, Arial,sans-serif;
  }
  .left_b{
    border-left:5px solid #d0192b;
  }
  .app-help header button{
    height:40px;
  }
</style>