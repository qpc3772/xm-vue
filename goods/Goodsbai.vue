src/components/goods/Goodsbai.vue
<template>
    <div class="app-goodslist">
        <header>
            <img src="http://127.0.0.1:3000/img/header/logomob.png" alt="">
            <div class="inp" style="display:inline-block;">
                <input type="text" placeholder="搜索内容" style="width:80%;height:30px;margin-left:5px;border:0;background:#222;"><button class="mui-icon mui-icon-search"></button>
            </div> 
            <span class="mui-icon mui-icon-person"></span>
        </header>

        <fenlei></fenlei>


        <div class="goods-item" v-for="item in goodbai" :key="item.id">
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
               goodbai:[]
            }
        },
        prop:["info"],
        methods:{
            getDetail(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/goodsinfo/"+id);
            },
            getgoodbai(){
                var url = "http://127.0.0.1:3000/goodbai"
                this.$http.get(url).then(result=>{
                    this.goodbai = result.body
                })
            }
        },
        created(){
            this.getgoodbai();
        },
        components:{
            "fenlei":fenlei
        }
    }
    
</script>
<style>

</style>