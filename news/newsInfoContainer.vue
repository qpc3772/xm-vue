/home/newsInfo
<template>
    <div class="app-newsInfo">
        <h3>{{info.title}}</h3>
        <div>{{info.content}}</div> 
        <!--3.评论子组件-->
        <comment-box :id="this.id"></comment-box>
    </div>
</template>

<script>
    //1.引入子组件
    import comment from "../sub/comment.vue";
    export default {
        data(){
            return{ 
                info:{},
                id:this.$route.query.id
            }
        },
        methods:{
            getInfo(){
                var url = "http://127.0.0.1:3000/newsinfo"
                this.$http.get(url).then(result=>{
                    this.info = result.body
                })
            }
        },
        created(){
           this.getInfo()
        },
       //2.注册子组件
        components:{
            "comment-box":comment
        }
    }
</script>

<style>
    
  
</style>