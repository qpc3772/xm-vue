<template>
    <div class="tiangui">
      <!--头部-->
      <div class="header">
        <div class="header_left">
          <p>2018下半年省考钻石班</p>
          <div class="time">
            <img src="http://127.0.0.1:3000/img/tiangui/time_gray.png">
            <span>2018.08.20-2018.11.23</span>
          </div>
          <div class="header_bofang">
            <span><img src="http://127.0.0.1:3000/img/tiangui/p3.png">直播</span>
            <span><img src="http://127.0.0.1:3000/img/tiangui/p4.png">录播</span>
            <span><img src="http://127.0.0.1:3000/img/tiangui/p5.png">264课时</span>
          </div>
        </div>
        <div class="header_right">
          <img src="http://127.0.0.1:3000/img/tiangui/p6.png" alt="">
          <p class="zixun">咨询</p>
        </div>
      </div>
      <!--列表-->
      <div class="middle">
        <div class="jieshao">
          <ul>
            <li @click = "isc(1)" :class = "iscs == 1 ? 'bottom_b' : ''">课程介绍</li>
            <li @click = "isc(2)" :class = "iscs == 2 ? 'bottom_b' : ''">课程表</li>
            <li @click = "isc(3)" :class = "iscs == 3 ? 'bottom_b' : ''">老师介绍</li>
          </ul>
          <div class="kejs" :class = "iscs == 1 ? '' : 'ul_block'">
            <img src="http://127.0.0.1:3000/img/tiangui/1.png"><img src="http://127.0.0.1:3000/img/tiangui/2.png"><img src="http://127.0.0.1:3000/img/tiangui/3.png"><img src="http://127.0.0.1:3000/img/tiangui/4.png">
          </div>
          <div class="kecheng" :class = "iscs == 2 ? '' : 'ul_block'">
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>

            <div class="one">
              <p>2018.08.21 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（二）</p>
            </div>

            <div class="one">
              <p>2018.08.22 19:00-21:00</p>
              <p>任琦 - 基础精讲 - 数量关系基础精讲（一）</p>
            </div>

            <div class="one">
              <p>2018.08.23 15:50-15:55</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（二）（2）</p>
            </div>
            <div class="one">
              <p>2018.08.23 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（三）</p>
            </div>
            <div class="one">
              <p>2018.08.24 19:00-21:00</p>
              <p>任琦 - 基础精讲 - 数量关系基础精讲（二）</p>
            </div>
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>
            <div class="one">
              <p>2018.08.20 19:00-21:00</p>
              <p>刘泽惠 - 基础精讲 - 申论基础精讲（一）</p>
            </div>
          </div>
          <div class="jiaoshi" :class = "iscs == 3 ? '' : 'ul_block'">
            <div class="js_one">
              <img src="http://127.0.0.1:3000/img/tiangui/11.png" alt=""><span>马腾</span>
              <p>暖系讲师，主讲行测数量关系和资料分析。具有丰富的教学及实践能力，快速解题技能点满，善于发现学生问题，有针对性的给出修正意见。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d1.png" class="d1">
            </div>

            <div class="js_two">
              <img src="http://127.0.0.1:3000/img/tiangui/22.png" alt=""><span>黄婉玉</span>
              <p>颜值讲师，主讲公务员申论课程。有数千小时一线教学经验及丰富的教研经验。授课思路清晰，实战效果突出。幽默的风格能充分调动学员积极性，快速巧取70％的成绩。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d2.png" class="d2">
            </div>

            <div class="js_one">
              <img src="http://127.0.0.1:3000/img/tiangui/11.png" alt=""><span>马腾</span>
              <p>暖系讲师，主讲行测数量关系和资料分析。具有丰富的教学及实践能力，快速解题技能点满，善于发现学生问题，有针对性的给出修正意见。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d1.png" class="d1">
            </div>

            <div class="js_two">
              <img src="http://127.0.0.1:3000/img/tiangui/22.png" alt=""><span>黄婉玉</span>
              <p>颜值讲师，主讲公务员申论课程。有数千小时一线教学经验及丰富的教研经验。授课思路清晰，实战效果突出。幽默的风格能充分调动学员积极性，快速巧取70％的成绩。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d2.png" class="d2">
            </div>

            <div class="js_one">
              <img src="http://127.0.0.1:3000/img/tiangui/11.png" alt=""><span>马腾</span>
              <p>暖系讲师，主讲行测数量关系和资料分析。具有丰富的教学及实践能力，快速解题技能点满，善于发现学生问题，有针对性的给出修正意见。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d1.png" class="d1">
            </div>

            <div class="js_two">
              <img src="http://127.0.0.1:3000/img/tiangui/22.png" alt=""><span>黄婉玉</span>
              <p>颜值讲师，主讲公务员申论课程。有数千小时一线教学经验及丰富的教研经验。授课思路清晰，实战效果突出。幽默的风格能充分调动学员积极性，快速巧取70％的成绩。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d2.png" class="d2">
            </div>

            <div class="js_one">
              <img src="http://127.0.0.1:3000/img/tiangui/11.png" alt=""><span>马腾</span>
              <p>暖系讲师，主讲行测数量关系和资料分析。具有丰富的教学及实践能力，快速解题技能点满，善于发现学生问题，有针对性的给出修正意见。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d1.png" class="d1">
            </div>

            <div class="js_two">
              <img src="http://127.0.0.1:3000/img/tiangui/22.png" alt=""><span>黄婉玉</span>
              <p>颜值讲师，主讲公务员申论课程。有数千小时一线教学经验及丰富的教研经验。授课思路清晰，实战效果突出。幽默的风格能充分调动学员积极性，快速巧取70％的成绩。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d2.png" class="d2">
            </div>

            <div class="js_one">
              <img src="http://127.0.0.1:3000/img/tiangui/11.png" alt=""><span>马腾</span>
              <p>暖系讲师，主讲行测数量关系和资料分析。具有丰富的教学及实践能力，快速解题技能点满，善于发现学生问题，有针对性的给出修正意见。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d1.png" class="d1">
            </div>

            <div class="js_two">
              <img src="http://127.0.0.1:3000/img/tiangui/22.png" alt=""><span>黄婉玉</span>
              <p>颜值讲师，主讲公务员申论课程。有数千小时一线教学经验及丰富的教研经验。授课思路清晰，实战效果突出。幽默的风格能充分调动学员积极性，快速巧取70％的成绩。</p>
              <img src="http://127.0.0.1:3000/img/tiangui/d2.png" class="d2">
            </div>
          </div>
        </div>
      </div>
      <!--底部购买-->
      <div class="footer">
        <div class="jiage">
          <span class="now">￥4980</span><span class="old"><s>￥5480</s></span>
        </div>
        <div class="days">
          <p class="p_shou">距离停售<span>31</span>天</p>
          <p class="p_sheng">还剩<span>41</span>席位</p>
        </div>
        <button>购买</button>
      </div>
      <!--箭头-->
      <div class="top" v-show = "top">
        <a href="#"><img src="http://127.0.0.1:3000/img/tiangui/p7.png" alt=""></a>
        <a href="#"><img src="http://127.0.0.1:3000/img/tiangui/p8.png" alt=""></a>
      </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
              iscs:1,
              top:false
            }
        },
        methods:{
            isc (i) {
              this.iscs = i
              console.log(i)
            },
            
            handleScroll(){
              var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
              console.log(scrollTop);
              if(scrollTop > '50'){
                this.top = true
              }else{
                this.top = false
              }
            }
        },
        created(){
            window.addEventListener('scroll',this.handleScroll)
        }
    }
    
</script>
<style>
  .tiangui{
    width:100%;
    padding:20px 0;
    background:#fff;
  }
  .tiangui .header{
    width:100%;
    height:117px;
    display:flex;
    justify-content:space-between;
    padding-left:20px;
    border-bottom:1px solid #000;
  }
  .tiangui .header .header_left>p{
    color:#222;
    font-size:16px !important;
  }
  .tiangui .header .header_left .time img{
    width:15px;
    height:15px;
    margin-right:5px;
    margin-top:3px;
    vertical-align:top;
  }
  .tiangui .header .header_left .time span{
    color:#999;
    font-size:14px;
  }
  .tiangui .header .header_left .header_bofang{
    width:242px;
    height:58px;
    margin-top:10px;
  }
  .tiangui .header .header_left .header_bofang span{
    color:#999;
    font-size:14px;
    padding-right:20px;
  }
  .tiangui .header .header_left .header_bofang span img{
    width:15px;
    height:15px;
    vertical-align:top;
    margin-top:4px;
    margin-right:5px;
  }
  .header_right{
    width:112.5px;
    height:71px;
    margin:0 auto;
    text-align:center;
    border-left:1px solid #eee;
  }
  .header_right img{
    width:48px;
    height:48px;
  }
  .tiangui .header .header_right p{
    font-size:15px !important;
    color:#f05b48 !important;
  }
  .tiangui .middle .jieshao{
    
  }
  .tiangui .middle .jieshao ul{
    width:100%;
    height:50px;
    margin:0;
    padding:0 30px;
    list-style:none;
    display:flex;
    justify-content:space-between;
    line-height:45px;
    margin:0 auto;
    border-bottom:1px solid #ccc;
  }
  .tiangui .middle .jieshao ul li{
    height:50px;
    padding-bottom:10px;
  }
  .tiangui .middle .jieshao .kejs{
    margin-top:15px;
  }
  .tiangui .middle .jieshao .kejs img{
    display:block;
    width:100%;
  }
  .tiangui .middle .jieshao .kecheng .one{
    width:345px;
    height:89px;
    border-bottom:1px solid #ccc;
    padding-left:20px;
  }
  .tiangui .middle .jieshao .kecheng .one p:nth-child(1){
    padding-top:20px;
    font-size:16px;
    color:#222
  }
  .tiangui .middle .jieshao .kecheng .one p:nth-child(2){
    font-size:14px;
    color:#666;
    line-height:26px;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one{
    width:343px;
    padding-bottom:20px;
    margin:0 auto;
    background:#f7f7f7;
    margin-bottom:30px;
    position:relative;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one:nth-child(1){
    margin-top:30px;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one img{
    width:62px;
    height:62px;
    position:absolute;
    top:-20px;
    left:40px;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one span{
    margin-left:105px;
    margin-top:10px;
    display:inline-block;
    font-size:15px;
    color:#222;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one p{
    margin-top:25px;
    padding:0 20px;
    line-height:20px;
    font-size:13px;
    color:#666;
  }
  .tiangui .middle .jieshao .jiaoshi .js_one .d1{
    width:17px;
    height:14px;
    position:absolute;
    top:15px;
    left:305px;
  }
  .tiangui .middle .jieshao .jiaoshi .js_two{
    width:343px;
    padding-bottom:20px;
    margin:0 auto;
    background:#f7f7f7;
    margin-bottom:30px;
    position:relative;
  }
  .tiangui .middle .jieshao .jiaoshi .js_two img{
    width:62px;
    height:62px;
    position:absolute;
    top:-20px;
    right:40px;
  }
  .tiangui .middle .jieshao .jiaoshi .js_two span{
    margin-left:185px;
    margin-top:10px;
    display:inline-block;
    font-size:15px;
    color:#222;
  }
  .tiangui .middle .jieshao .jiaoshi .js_two p{
    margin-top:25px;
    padding:0 20px;
    line-height:20px;
    font-size:13px;
    color:#666;
  }
  .tiangui .middle .jieshao .jiaoshi .js_two .d2{
    width:17px;
    height:14px;
    position:absolute;
    top:15px;
    left:25px;
  }
  .tiangui .footer{
    width:100%;
    height:50px;
    position:fixed;
    bottom:0;
    display:flex;
    justify-content:space-between;
    background:#fff;
    border:1px solid #ccc;
  }
  .tiangui .footer .jiage{
    width:100%;
    line-height:50px;
  }
  .tiangui .footer .jiage .now{
    font-size:22px;
    color:#f05b48;
    font-weight:bold;
  }
  .tiangui .footer .jiage .old{
    font-size:12px;
    color:#666;
    margin-left:10px;
  }
  .tiangui .footer .days{
    width:100%;
    line-height:5px;
    text-align:center;
  }
  .tiangui .footer .days .p_shou{
    margin-top:15px;
  }
  .tiangui .footer .days span{
    color:#f05b48
  }
  .tiangui .footer button{
    width:100%;
    margin:0;
    padding:0;
    border:1px solid #f05b48;
    background:#f05b48;
    color:#fff;
    font-size:18px;
  }
  .tiangui .top{
    position:fixed;
    right:15px;
    bottom:240px;
  }
  .tiangui .top img{
    width:36px;
    height:36px;
  }
  .tiangui .top a{
    display:block;
    margin-top:15px;
  }


 


  .ul_block{
    display:none;
  }
  .bottom_b{
    border-bottom:2px solid #d0192b;
    color:#d0192b;
  }

  /**/
</style>