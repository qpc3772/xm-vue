src/components/goods/Goodpuer.vue
<template>
    <div class="app-goodslist">

        <fenlei></fenlei>

        <div class="goods-item" v-for="item in goodpuer" :key="item.id">
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
               goodpuer:[]
            }
        },
        prop:["info"],
        methods:{
            getDetail(id){
                //参数：商品的id
                //console.log(id);
                this.$router.push("/home/goodsinfo/"+id);
            },
            getgoodpuer(){
                var url = "http://127.0.0.1:3000/goodpuer"
                this.$http.get(url).then(result=>{
                    this.goodpuer = result.body
                })
            }
        },
        created(){
            this.getgoodpuer();
        },
        components:{
            "fenlei":fenlei
        }
    }
    
</script>
<style>

</style>