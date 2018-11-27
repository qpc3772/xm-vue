src/components/testContainer.vue
<template>
    <div class="app-testContainer">
        <h1>第一个测试组件</h1>
        <h1>生命周期</h1>
        <h1>当前vue实例创建后自动触发事件</h1>
        <h1>事件调用一些函数（钩子函数）</h1>
        <input type="button" value="修改">
        <p id="h3">{{msg}}</p>
    </div>
</template>
<script>
    export default {
        data(){
            return{ 
                msg:"脚手架" 
            }
        },
        methods:{
            show(){
                console.log("执行 show 方法")
            }
        },
        beforeCreate(){
            //生命周期第一个函数
            //console.log(this.msg);
        },
        created() {
            this.show();
            console.log(this.msg)
        }
    }
</script>
<style>
    
</style>



