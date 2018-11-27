src/components/listContainer.vue
<template>
    <div class="app-list">
        <h1>用户列表</h1>
        <ul>
            <li v-for="item in list">
                {{item.lid}}:{{item.name}}:{{item.age}}
            </li>
        </ul>
    </div>
</template>
<script>
    export default {
        data(){
            return{ 
                list:[
                    {lid:1,name:"dongdong",age:24},
                    {lid:2,name:"wenhua",age:30}
                ]
            }
        }
    }
</script>
<style>
    
</style>