src/components/sub/swiper.vue
<template>
    <div class="app-swiper">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>

<script>
    export default {
        data(){ 
            return {
                
            }
        },
        props:["list"],
        methods:{
           
        },
        created(){
            
        }
    }
</script>

<style>
     .app-swiper .mint-swipe{
        height:140px;
    }
    .app-swiper img{
       width:100%;
        
    }
</style>