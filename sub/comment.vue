src/components/sub/comment.vue
<template>
    <div class="app-comment">
        <div class="mui-content-padded">
            <div class="mui-inline">发表评论</div> 
        </div>
        <!--发表评论的区域-->
        <textarea  v-model="msg" placeholder="请输入内容（最多120字）" max-length="120" ></textarea>
        <mt-button size="large"  @click="postComment">发表评论</mt-button>
        <!--显示评论区域-->
        <div class="cmt-list">
            <div class="cmt-item" v-for="(item,i) in  list" :key="item.id">
                <div class="cmt-body">{{item.content}}</div>
            </div>
        </div>
        <mt-button size="normal"  @click="getMore">加载更多</mt-button>
    </div>
</template>

<script>
    import { Toast } from "mint-ui";
    export default {
        data(){ 
            return {
                msg:"",
                list:[],
                pageIndex:0,    //属性显示当前的页数
                pageSize:5,     //页面大小
                hasMore:true,   //是否存在下一页数据
                pageCount:3
            }
        },
        props:["id"],
        methods:{
            getMore(){
                //1.页码自增
                this.pageIndex++
                this.hasMore = this.pageIndex <= this.pageCount;
                //如果没有下一页停止运行程序
                if(!this.hasMore){return}
                //2.发送ajax
                var id = this.id;
                var p = this.pageIndex;
                var s = this.pageSize;
                console.log(id+":"+p+":"+s)
                //3.参数 id pno pageSize
                var url = "getComment?id="+id+"&pno="+p+"&pageSize="+s;
                //4.获取返回数据保存list属性
                this.$http.get(url).then(result=>{
                   var rows = this.list.concat(result.body.data)
                   this.list = rows
                   this.pageCount = result.body.pageCount
                })
                //5.显示模板中

            },
            postComment(){
                console.log(123);
                //1.获取新闻的编号
                var nid = this.id;
                //2.获取评论内容
                var pmsg = this.msg;
                //3.判断评论内容不能为空
                if(pmsg.trim().length == 0){
                    Toast("评论内容不能为空")
                    return;
                }
                //4.发送post请求
                var url = "http://127.0.0.1:3000/postComment";
                this.$http.post(url,{nid:nid,msg:pmsg}).then(result=>{
                    Toast("发表成功");
                    //清空数组
                    this.pageIndex = 0;
                    this.list = [];
                    this.getMore();
                })
                //5.获取服务器的程序返回
                //6.提示用户评论成功
            }
        },
        created(){
            this.getMore();
        }
    }
</script>

<style>
    .mui-content-padded{
        border-bottom:1px solid #000;
        padding-bottom:10px;
    }
    .app-comment .cmt-list{
        background:orange;
        margin:10px 0;
    }
    .app-comment textarea{
        font-size:14px;
        height:85px;
        margin:0;
    }
    .app-comment .cmt-list .cmt-info{
        background:#8b00ff;
        line-height:30px;
        font-size:16px;
    }
    .app-comment .cmt-list .cmt-body{
        line-height:35px;
        text-indent:2em;
    }
</style>