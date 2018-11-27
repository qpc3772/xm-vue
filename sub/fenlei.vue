src/components/goods/GoodsList.vue
<template>
  
    <div class="fenlei">
      <button @click="isb">分类</button>
      <div class="fenleis" :class="is_block?'is_block':''">
        <ul class="lei_ul">
          <li @click.stop.prevent="jumpGoods()">全部分类</li>
          <li @click.stop.prevent="jumpBanjia()">半价样品</li>
          <li @click.stop.prevent="jumpHong()">后月红茶</li>
          <li @click.stop.prevent="jumpPuer()">后月普洱</li>
          <li @click.stop.prevent="jumpBai()">后月白茶</li>
          <li @click.stop.prevent="jumpLihe()">茶具礼盒</li>
        </ul>
      </div>
    </div>
</template>
<script>

    export default {
        data(){
            return{ 
               is_block:false,
            }
        },
        methods:{
            isb(){
                this.is_block=!this.is_block
            },




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
            
        }
    }
    
</script>
<style>
    
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
        top:50px;
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
        top:80px;
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