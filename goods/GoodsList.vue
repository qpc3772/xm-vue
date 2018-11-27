src/components/goods/GoodsList.vue
<template>
    <div class="app-goodslist">
       <fenlei></fenlei>
        
        <div class="goods-item" v-for="item in info" :key="item.id">
            <img :src="item.img"  @click="getDetail(item.id)">
            <div class="info">
                <a  href="" class="sell">
                    {{item.sell}}
                </a>
                <p class="price">
                    {{item.price}}
                </p>
            </div>
        </div>
    </div>
</template>
<script>
    import fenlei from "../sub/fenlei.vue"
    export default {
        data(){
            return{ 
               info:[],
               is_block:false,
            }
        },
        prop:["info"],
        methods:{
            getDetail(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/goodsinfo/"+id);
            },
            getGoodsList(){
                var url = "http://127.0.0.1:3000/goodslist"
                this.$http.get(url).then(result=>{
                    this.info = result.body
                })
            },
            // isb(){
            //     this.is_block=!this.is_block
            //     console.log(this.is_block)
            // },




            jumpGoods(){
                //this.$router.push("/home/shop?id=15");
                this.$router.push("/home/goodslist");
            },
            jumpBanjia(){
                this.$router.push("/home/goodsbanjia");
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

        },
        created(){
            this.getGoodsList();
        },
        components:{
            "fenlei":fenlei
        }
    }
    
</script>
<style>
    .app-goodslist{
        display:flex;
        flex-wrap:wrap;
        justify-content:space-between;
        padding:7px;
        margin-top:40px;
    }
    .app-goodslist .goods-item{
        width:49%;
        border:1px solid #ccc;
        box-shadow:0 0 8px #ccc;
        margin:4px 0;
        padding:2px;
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        min-height:293px;
    }
    .app-goodslist .goods-item img{
        width:100%;
    }
    .app-goodslist .goods-item .info .sell{
        color:#000;
        font-size:14px;
    }
    .app-goodslist .goods-item .info .price{
        color:#f00;
        font-size:14px;
    }

    
    .fenlei{
        width:100%;
        position:relative;
        background:#fff;
    }
    .fenlei button{
        width:100%;
        height:38px;
        text-align:center;
        font-size:20px;
        position:fixed;
        top:40px;
        left:0;
    }
    .fenleis .lei_ul{
        width:360px;
        height:230px;
        line-height:35px;
        list-style:none;
        background:#fff;
        margin-top:8px;
        padding:0;
        position:fixed;
        top:70px;
    }
    .fenleis .lei_ul li{
        text-align:center;
    }
    .fenlei>.fenleis{
        position:absolute;
        top:30px;
        display:none;
    }
    .is_block{
        display:block !important;
    }
</style>