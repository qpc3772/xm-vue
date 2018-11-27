<template>
    <div class="app-shop">
        <header><button class="mui-icon mui-icon-arrowleft buttn" @click.stop.prevent="jumpHome()"></button>购物车</header>
        <div class="guang">
            <p>您的购物车还没有物品</p>
            <button @click.stop.prevent="jumpHome()">去逛逛</button>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                list:[]
            }
        },
        methods:{
            getImage(){
                var url = "http://127.0.0.1:3000/imagelist"
                this.$http.get(url).then(result=>{
                    this.list = result.body
                })
            },
            jumpHome(){
                this.$router.push("/home")
            }
        },
        created(){
            this.getImage();
        }
    }
</script>
<style>
    .app-shop .mint-swipe{
        height:70px;
    }
    .app-shop img{
        width:100%;
    }
    .app-shop header button{
        height:40px;
    }
    .app-shop .guang{
        width:100%;
        height:667px;
        text-align:center;
        margin-top:70%;
    }
    .app-shop .guang button{
        width:100px;
        
    }
</style>