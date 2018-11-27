import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import TestContainer from "./components/testContainer.vue"
import ListContainer from "./components/listContainer.vue"
import HomeContainer from "./components/tabber/HomeContainer.vue"
import newsListContainer from "./components/news/newsListContainer.vue"
import newsInfoContainer from "./components/news/newsInfoContainer.vue"
import shopContainer from "./components/tabber/shopContainer.vue"
import comment from "./components/sub/comment.vue"
import swiper from "./components/sub/swiper.vue"
import GoodsList from "./components/goods/GoodsList.vue"
import GoodsInfo from "./components/goods/GoodsInfo.vue"
import GoodsBanjia from "./components/goods/GoodsBanjia.vue"
import Goodshong from "./components/goods/Goodshong.vue"
import Goodspuer from "./components/goods/Goodspuer.vue"
import Goodsbai from "./components/goods/Goodsbai.vue"
import Goodslihe from "./components/goods/Goodslihe.vue"
import PhotoContainer from "./components/photo/PhotoContainer.vue"
import login from "./components/home/LoginContainer.vue"
import loginSuccess from "./components/home/loginSuccess.vue"
import help from "./components/help/help.vue"
import message from "./components/home/message.vue"
import fenlei from "./components/sub/fenlei.vue"



import tiangui from "./components/tiangui.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:"/test",component:TestContainer},
    {path:"/list",component:ListContainer},
    {path:"/home/",component:HomeContainer},
    {path:"/home/newslist",component:newsListContainer},
    {path:"/home/newsinfo",component:newsInfoContainer},
    {path:"/home/goodslist",component:GoodsList},
    {path:"/home/goodsbanjia",component:GoodsBanjia},
    {path:"/home/goodshong",component:Goodshong},
    {path:"/home/goodsbai",component:Goodsbai},
    {path:"/home/goodslihe",component:Goodslihe},
    {path:"/home/goodsinfo/:id",component:GoodsInfo,props:true},
    {path:"/shop",component:shopContainer},
    {path:"/home/photo",component:PhotoContainer},
    {path:"/home/help",component:help},
    {path:"/home/login",component:login},
    {path:"/home/loginSuccess",component:loginSuccess},
    {path:"/home/loginSuccess/message",component:message},
    {path:"/home/goodspuer",component:Goodspuer},


    {path:"/fenlei",component:fenlei},
    {path:"/tiangui",component:tiangui},
  ]
})
