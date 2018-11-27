src/components/goods/GoodsList.vue
<template>
    <div class="app-goodslist">
        <fenlei></fenlei>
        <div class="goods-item" v-for="item in goodsbanjia" :key="item.id">
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
               goodsbanjia:[]
            }
        },
        prop:["info"],
        methods:{
            getDetail(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/goodsinfo/"+id);
            },
            getgoodsBanjia(){
                var url = "http://127.0.0.1:3000/goodsbanjia"
                this.$http.get(url).then(result=>{
                    this.goodsbanjia = result.body
                })
            }
        },
        created(){
            this.getgoodsBanjia();
        },

        components:{
            "fenlei":fenlei
        }
    }
    
</script>
<style>

</style>