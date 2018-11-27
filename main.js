import Vue from 'vue'
import App from './App.vue'
import router from './router'

//引入mint-ui css
import'mint-ui/lib/style.css'
Vue.config.productionTip = false

//引入mui css的文件
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

//1引入组件mintui库Header
//-引入指定组件
//import {Header,Swipe,SwipeItem,Button,Lazyload} from "mint-ui"; 
//-注册当前项目中 <mt-header>    "tt-header"
// Vue.component(Header.name,Header);
// Vue.component(Swipe.name,Swipe);  //"mt-swipe"
// Vue.component(SwipeItem.name,SwipeItem);
// Vue.component(Button.name,Button);
// Vue.use(Lazyload)

import MintUI from "mint-ui";
Vue.use(MintUI)

//2.引入vue-resource 发送ajax
//引入所有组件
import VueResource from "vue-resource";
//将所有组件注册
Vue.use(VueResource);
//3.:main.js 创建过滤器
Vue.filter("dateFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  var d=date.getDate();
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  return `${y}-${m}-${d}`;
});

Vue.filter("timeFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  var d=date.getDate();
  var h=date.getHours();
  var M=date.getMinutes()
  var s=date.getSeconds();
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  return `${y}-${m}-${d} ${h}:${M}:${s}`;
})
//4.创建Vuex实例对象
  import Vuex from "vuex";
  Vue.use(Vuex);
  var store=new Vuex.Store({
    state:{count:0}, //购物车中商品的数量
    mutations:{
      increment(state,c){state.count+=parseInt(c)}, //修改共享数据的俩个方法
      substracr(state){state.count--} //产能书共享数据属性
    },
    getters:{
      optCount:function(state){
        return state.count;
      }
    }
  });

//5.注册Vue实例
//配置Vue.Resorce服务器根目录
Vue.http.options.root="http://127.0.0.1:3000/";
//修改请求头
new Vue({
  router,
  render: h => h(App),
  store      //注册Vue实例
}).$mount('#app')
