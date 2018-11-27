/home/newList
<template>
    <div class="app-newslist">
        <header><button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpHome()"></button>文章中心</header>
        <ul class="list_one">
            <li><a href="" @click.stop.prevent="getnewslist">全部</a></li>
            <li><a href="" @click.stop.prevent="getchashanlist">茶山</a></li>
            <li><a href="" @click.stop.prevent="gethangyelist">行业动态</a></li>
            <li><a href="" @click.stop.prevent="gethouyuelist">后月动态</a></li>
        </ul>
        <!--全部-->
        <div class="kongge"></div>
        <div class="new" v-for="item in news_list" :key="item.id">
            <router-link :to="'/home/newsinfo?id='+item.id" >
                <img class="mui-media-object mui-pull-left" :src="item.img">
                <div class="mui-media-body">
                {{item.title}}
                    <p class='mui-ellipsis'> 
                        <span>{{item.lei}}</span>&nbsp;
                        <span>{{item.point}}人(阅)</span>
                    </p>
                </div>
            </router-link>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{ 
              news_list:[],
            }
        },
        methods:{
            getnewslist(){
                var url = "http://127.0.0.1:3000/news_list"
                this.$http.get(url).then(result=>{
                    this.news_list = result.body
                })
            },
            getchashanlist(){
                var url = "http://127.0.0.1:3000/chashanlist"
                this.$http.get(url).then(result=>{
                    this.news_list = result.body
                })
            },
            gethangyelist(){
                var url = "http://127.0.0.1:3000/hangyelist"
                this.$http.get(url).then(result=>{
                    this.news_list = result.body
                })
            },
            gethouyuelist(){
                var url = "http://127.0.0.1:3000/houyuelist"
                this.$http.get(url).then(result=>{
                    this.news_list = result.body
                })
            },
            getNews(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/newsinfo/"+id);
            },


            jumpHome(){
                this.$router.push("/home");
            },
        },
        created(){
            this.getnewslist();
        }
    }
    // $(".list_one").on("click","li",function(e){
    //     e.preventDefault();
    //     $(this).css("color","#FF834C").siblings().css("color","#000");
    //     $(this).css("border-bottom","2px solid #FF834C").siblings().css("border-bottom","0");
    //     var index=$(this).index();
    //     $("#app-newslist>div").eq(index).show().siblings().hide();
    // })
</script>

<style>
    .app-newslist ul{
        width:100%;
        height:30px;
        line-height:30px;
        margin:0 auto;
        background:#fff;
        padding:0 20px;
        display:flex;
        font-size:16px;
        justify-content:space-between;
        list-style:none;
        position:fixed;
        top:40px;
    }
    .app-newslist .kongge{
        height:25px;
    }
    .app-newslist ul li a{
        color:#000;
    }
    .app-newslist header button{
        height:40px;
    }
    .app-newslist .new{
        height:60px;
        margin-top:10px;
        display:block;
    }

    .app-newslist .new .mui-media-body{
        color:#000;
    }
    .app-newslist img{
        width:67px;
        height:67px;
    }
</style>