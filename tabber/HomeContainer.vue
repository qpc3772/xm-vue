src/components/tabber/HomeContainer.vue
<template>
    <div class="app-homeContainer">
        <!--1.顶部导航-->
        <header>
            <img src="http://127.0.0.1:3000/img/header/logomob.png" alt="">
            <div class="inp" style="display:inline-block;">
                <input type="text" placeholder="搜索内容" style="width:80%;height:30px;margin-left:5px;border:0;background:#222;"><button class="mui-icon mui-icon-search"></button>
            </div> 
            <span class="mui-icon mui-icon-person"></span>
        </header>
        <!--2.轮播图-->      
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in imagelist" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
        <!--3.六宫格-->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#" @click.stop.prevent="jumpGoods()">
                <img src="http://127.0.0.1:3000/img/nav/1.png" alt="">
                <div class="mui-font">全部产品</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#" @click.stop.prevent="jumpBanjia()">
                <img src="http://127.0.0.1:3000/img/nav/2.png" alt="">
                <div class="mui-font">半价样品</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#" @click.stop.prevent="newsList()">
                <img src="http://127.0.0.1:3000/img/nav/3.png" alt="">
                <div class="mui-font">文章资讯</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#" @click.stop.prevent="jumpLogin()">
                <img src="http://127.0.0.1:3000/img/nav/4.png" alt="">
                <div class="mui-font">会员中心</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#" @click.stop.prevent="jumpGouwu()">
                <img src="http://127.0.0.1:3000/img/nav/5.png" alt="">
                <div class="mui-font">购物车</div></a></li>
        </ul> 
        <!--4.商品内容-->

        <div class="title">
            <h3>新品</h3>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in xinlist" :key="item.id">
                <img src="http://127.0.0.1:3000/img/bjyp/1.png" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>精品</h3>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in jinglist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>热卖</h3>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in relist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>



        <div class="title">
            <h3>后月红茶</h3><a href="" id="gengduo" @click.stop.prevent="jumpHong()">查看更多</a>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in honglist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>后月普洱茶</h3><a href="" id="gengduo" @click.stop.prevent="jumpPuer()">查看更多</a>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="(item,index) in puerlist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>后月白茶</h3><a href="" id="gengduo" @click.stop.prevent="jumpBai()">查看更多</a>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in bailist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>半价样品</h3><a href="" id="gengduo" @click.stop.prevent="jumpBanjia()">查看更多</a>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in banjialist" :key="item.id">
                <img :src="item.img" alt="" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>

        
        <div class="title">
            <h3>茶具礼盒</h3><a href="" id="gengduo" @click.stop.prevent="jumpLihe()">查看更多</a>
        </div>
        <div class="app-homelist">
            <div class="home-item" v-for="item in lihelist" :key="item.id">
                <img :src="item.img" @click="getDetail(item.id)">
                <div class="info">
                    <a href="" class="sell">{{item.sell}}</a>
                    <p class="price">{{item.price}}</p>
                </div>
            </div>
        </div>
        <!--尾部-->
        
    </div>
</template>
<script>
    export default {
        data(){
            return{ 
                xinlist:[],
                jinglist:[],
                relist:[],
                honglist:[],
                puerlist:[],
                bailist:[],
                banjialist:[],
                lihelist:[],
                imagelist:[],
                navlist:[]
            }
        },
        methods:{
            jumpGoods(){
                //this.$router.push("/home/shop?id=15");
                this.$router.push("/home/goodslist");
            },
            jumpBanjia(){
                this.$router.push("/home/goodsbanjia");
            },
            jumpPhoto(){
                this.$router.push("/home/photo");
            },
            jumpLogin(){
                this.$router.push("/home/login");
            },
            jumpGouwu(){
                this.$router.push("/shop");
            },
            newsList(){
                this.$router.push("/home/newslist")
            },
            jumpHong(){
                this.$router.push("/home/goodshong")
            },
            jumpPuer(){
                this.$router.push("/home/goodspuer")
            },
            jumpBai(){
                this.$router.push("/home/goodsbai")
            },
            jumpLihe(){
                this.$router.push("/home/goodslihe")
            },






            getImage(){
                var url = "http://127.0.0.1:3000/imagelist"
                this.$http.get(url).then(result=>{
                    this.imagelist = result.body
                })
            },
            getDetail(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/goodsinfo/"+id);
            },
            getxinList(){
                var url = "http://127.0.0.1:3000/xinlist"
                this.$http.get(url).then(result=>{
                    this.xinlist = result.body
                })
            },
            getjingList(){
                var url = "http://127.0.0.1:3000/jinglist"
                this.$http.get(url).then(result=>{
                    this.jinglist = result.body
                })
            },
            getreList(){
                var url = "http://127.0.0.1:3000/relist"
                this.$http.get(url).then(result=>{
                    this.relist = result.body
                })
            },
            gethongList(){
                var url = "http://127.0.0.1:3000/honglist"
                this.$http.get(url).then(result=>{
                    this.honglist = result.body
                })
            },
            getpuerList(){
                var url = "http://127.0.0.1:3000/puerlist"
                this.$http.get(url).then(result=>{
                    this.puerlist = result.body
                })
            },
            getbaiList(){
                var url = "http://127.0.0.1:3000/bailist"
                this.$http.get(url).then(result=>{
                    this.bailist = result.body
                })
            },
            getbanjiaList(){
                var url = "http://127.0.0.1:3000/banjialist"
                this.$http.get(url).then(result=>{
                    this.banjialist = result.body
                })
            },
            getliheList(){
                var url = "http://127.0.0.1:3000/lihelist"
                this.$http.get(url).then(result=>{
                    this.lihelist = result.body
                })
            },
            getnavlist(){
                var url = "http://127.0.0.1:3000/navlist"
                this.$http.get(url).then(result=>{
                    this.navlist = result.body
                })
            },
        },
        created(){
            this.getImage();
            this.getxinList();
            this.getjingList();
            this.getreList();
            this.gethongList();
            this.getpuerList();
            this.getbaiList();
            this.getbanjiaList();
            this.getliheList();
            this.getnavlist();
        }
    }
    
</script>
<style>
    header{
        width:100%;
        height:40px;
        background:#000;
        line-height:50px;
        position:fixed;
        top:0;
        z-index:5;
    }
    header .inp input{
        width:80%;
        height:30px !important;
        margin-top:5px;
        vertical-align:middle;
    }
    header .inp button{
        width:50px;
        height:30px;
        border:0;
        vertical-align:middle;
        background:#222;
        color:#fff;
        border-left:1px solid #6f6f6f;
        margin-top:-10px;
    }
    header span{
        color:#fff;
    }
    header img{
        width:30px !important;
        height:30px;
        vertical-align:middle;
        margin-top:-5px;
    }
    /* 图片轮播 */
    .app-homeContainer .mint-swipe{
        height:90px;
    }
    .app-homeContainer img{
        width:100%;
    }
    /* 六宫格 */
    .mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3{
        background:#fff;
        border:0;
    }
    .mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3 img{
        width:30px;
        height:30px;
    }
    .mui-grid-view.mui-grid-9 .mui-font{
        font-size:3px !important;
    }
    .mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3{
        width:20%;
        height:100px;
    }
    .mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3 a{
        width:50px;
    }
   




    .app-homelist{
        display:flex;
        flex-wrap:wrap;
        justify-content:space-between;
        margin:0;
        padding:0px;
    }
    .app-homelist .home-item{
        margin:0 !important;
        padding:0;
        width:49%;
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        min-height:100px;
        background:#fff;
    }
    .app-homelist .home-item img{
        width:100%;
    }
    .app-homelist .home-item .info .sell{
        color:#000;
        font-size:14px !important;
    }
    .app-homelist .home-item .info .price{
        color:#f00;
        font-size:10px;
    }
    

    .app-homeContainer .title{
        width:100%;
        height:30px;
        display:flex;
        justify-content:space-between;   
        background:#fff;
        margin-top:11px !important;
        line-height:30px !important;
    }
    .app-homeContainer .title #gengduo{
        width:50%;
        height:30px;
        color:#FF4E00 !important;
        font-size:12px !important;
        text-align:right;
        margin-right:20px;
    }
    h3{       
        width:100%;
        height:30px;
        line-height:23px !important;
        text-indent:20px;
        font-weight:normal;
        font-size:15px !important;
        padding:0;
        background:#fff;
        font-family: Helvetica, "STHeiti STXihei", "Microsoft YaHei", Tohoma, Arial !important;
    }
    
  
</style>