<template>
    <div class="app-goodinfo" >
            <!--返回来时页面-->
            <div class="return">
                <a href="" class="a1"><span></span></a>
                <a href=""><i class="fa fa-heart-o"></i></a>
            </div>
            <!--图片详情-->
          
                <img :src=info[0].img>
                <div class="xiangqing">
                    <p class="p1">{{info.sell}}</p>
                    <p class="p2">{{info.price}}</p>
                </div>
          
           
            <!--弹性布局-->
            <div class="xiaoliang">
                <p>销量: <span>1笔</span></p>
                <p>运费：<span>免邮</span></p>
                <p>点击：<span>150</span></p>
            </div>

            <div class="manjian"><span class="sbao">包邮</span>满99元包邮</div>
            <div class="choose">
                <a href="">
                    <span>已选择</span>     
                    <span>200克/饼&nbsp;&nbsp;1件<span class="jiantou"></span></span>       
                </a>
            </div>
            <p class="fuwu">服务&nbsp;&nbsp;由后月古树茶发货饼提供售后服务</p>
            <div class="baozhang">
                <p>正品保障</p>
                <p>产地保障</p>
                <p>满99元包邮</p>
                <p>售后保障</p>
            </div>
            <div class="shuxing">商品属性 <span class="jiantou"></span></div>
            <div class="spxq">
                <p>商品详情</p>
                <img :src=info[0].img>
            </div>
            <div class="info_nav">
                <nav class="mui-bar-tab">
                    <a class="mui-tab-item mui-active"  @click.stop.prevent="jumpHome()">
                        <span class="mui-icon mui-icon-home"></span>
                        <span class="mui-tab-label">首页</span>
                    </a>
                    <a class="mui-tab-item" @click.stop.prevent="jumphelp()">
                        <span class="mui-icon mui-icon mui-icon-extra mui-icon-extra-custom"></span>
                        <span class="mui-tab-label">客服</span>
                    </a>
                    <a class="mui-tab-item" @click.stop.prevent="jumpShop()">
                        <span class="mui-icon mui-icon-extra mui-icon-extra-cart "><span class="mui-badge">{{$store.getters.optCount}}</span></span>
                        <span class="mui-tab-label">购物车</span>
                    </a>
                </nav>
                <div class="info_btn">
                    <button class="btn1">加入购物车</button>
                    <button class="btn2">立即购买</button>
                </div>
            </div>
        
    </div>
</template>
<script>
//轮播图的组件
import swiper from "../sub/swiper.vue"
import {Toast} from "mint-ui"; 
//引入mui js 库
//import mui from "../../lib/mui/js/mui.js"
    export default {
        data(){
            return{
                imglist:[],
                val:1,
                info:[{img:""}]
            }
        },
       
        methods:{
            // addCartTo(){
            //     //console.log("添加至购物车")
            //     var id=this.$route.params.id;
            //     var count=this.val;
            //     this.$http.get("addCart?pid="+id+"&count="+count).then(result=>{
            //         if(result.body.code==1){
            //             //更新购物车商品数量
            //             this.$store.commit("increment",count)
            //             Toast(result.body.msg)
            //         }else{
            //             Toast(resule.body.msg)
            //         }
            //     })
                
            // },
            getImageList(){
                this.$http.get("imagelist").then(result=>{
                    this.imglist=result.body
                })
            },
            goodAdd(){
                if(this.val<=998)
                this.val++
            },
            goodSub(){
                if(this.val>1)
                this.val--
            },
            getGoodInfo(){
                var id=this.$route.params.id;
                console.log(id);
                this.$http.get("goodinfo?id="+id).then(result=>{
                    this.info=result.body
                    console.log(this.info);
                })
            },


            jumpHome(){
                this.$router.push("/home");
            },
            jumphelp(){
                this.$router.push("/home/help");
            },
            jumpShop(){
                this.$router.push("/shop");
            },
        },
        created() {
            this.$route.params.id;
            this.getImageList();
            this.getGoodInfo();
            
            
            
        },
       
    }
</script>
<style>
    .app-goodinfo{
        background:#fff;
    }
    .app-goodinfo .return{
        width:100%;
        height:40px;
        background:#999;
        position:fixed;
        top:0;
        z-index:100;
    }
    .app-goodinfo .return .a1{
        display:inline-block;
        width:30px;
        height:30px;
        border-radius:50%;
        border:1px solid #000;
        margin-top:5px;
        margin-left:5px;
        border-right:1px solid #000;
        background:#333;
    }
    .app-goodinfo .return .a1 span{
        margin-left:10px;
        margin-top:10px;
        display:inline-block;
        width:8px;
        height:8px;
        border-bottom:1px solid #fff;
        border-left:1px solid #fff;
        transform:rotate(45deg);
    }
    .app-goodinfo>img{
        width:100%;
        height:375px;
    }
    .app-goodinfo .xiaoliang{
        background:#fff;
    }
    .app-goodinfo .xiangqing .p1{
        width:95%;
        font-size:14px;
        color:#333;
        margin:0 auto;
        padding-left:10px;
        padding-bottom:10px;
    }
    .app-goodinfo .xiangqing .p2{
        width:95%;
        font-size:14px;
        color:#f44;
        margin:0 auto;
        padding-left:10px;
        padding-bottom:10px;
        border-bottom:1px solid #ccc;
    }
    .app-goodinfo .xiaoliang{
        width:95%;
        margin:0 auto;
        margin-top:10px;
        display:flex;
        justify-content:space-between;
    }





    /*<div class="manjian"><span class="sbao">包邮</span>满99元包邮</div>*/
    .manjian{
        width:100%;
        height:30px;
        border-bottom:1px solid #ccc;
        margin-bottom:5px;
    }
    .manjian .sbao{
        display:inline-block;
        width:40px;
        height:20px;
        background:#f00;
        color:#fff;
        border-radius:3px;
        text-align:center;
        margin-right:5px;
        margin-left:5px;
    }



    /*<div class="choose">
            <a href="">
                <span>已选择</span>     
                <span>200克/件<span class="jiantou"></span></span>       
            </a>
        </div>
        <p class="fuwu">服务&nbsp;&nbsp;由后月古树茶发货饼提供售后服务</p>
        <div class="baozhang">
            <p>正品保障</p>
            <p>产地保障</p>
            <p>满99元包邮</p>
            <p>售后保障</p>
        </div>
         */
    .choose{
        width:100%;
        height:30px;
        border-bottom:1px solid #ccc;
    }
    .choose a{
        width:95%;
        margin:0 auto;
        display:flex;
        justify-content:space-between;
        color:#000;
    }
    .fuwu{
        width:100%;
        height:30px;
        border-bottom:1px solid #ccc;
        line-height:30px;
        font-size:14px;
        color:#000;
        margin-left:5px;
    }
    .baozhang{
        width:95%;
        height:30px;
        margin:0 auto;
        display:flex;
        justify-content:space-between;
        border-bottom:1px solid #ccc;
        margin-bottom:8px;
    }
    .baozhang p{
        font-size:14px;
        color:#000;
    }
    /*<div class="shuxing">商品属性</div>
        <div >
            <p>商品详情</p>
            <img src="http://127.0.0.1:3000/img/allproduct/1.png" alt="">
        </div> */
    .shuxing{
        width:95%;
        height:30px;
        margin:0 auto;
        display:flex;
        justify-content:space-between;
        border-bottom:1px solid #ccc;
    }
    .shuxing span{
        margin-top:7px;
    }
    .spxq p{
        margin:0 auto;
        width:95%;
        height:30px;
        font-size:16px;
        margin-top:5px;
        border-bottom:1px solid #ccc;
    }
    .spxq img{
        width:100%;
    }

    .info_nav{
        width:100%;
        height:50px;
        display:flex;
        justify-content:space-between;
        position:fixed;
        bottom:0;
        z-index:50;
        background:#fff;
    }
    .app-goodinfo .info_nav nav{
        background:#fff !important;
        width:50%;
    }
    .app-goodinfo nav a{
        color:#000;
    }
    
    .info_nav .info_btn .btn1{
        height:50px;
        width:50%;
        border:0;
        background:orange;
        color:#fff;
    }
    .info_nav .info_btn .btn2{
        height:50px;
        width:50%;
        border:0;
        background:#f00;
        color:#fff;
        border-radius:0px !important;
    }
</style>