//1:加载模块
const express = require("express");
const pool  = require("./pool");
//2:创建express对象
var app = express();
//服务器node.js 允许跨域访问配置项
//2.1:引入跨域模块   
const cors = require("cors");
//2.2:配置允许哪个程序跨域访问 脚手架   11:16
app.use(cors({
  origin:[
    "http://127.0.0.1:3001","http://localhost:3001"],
  credentials:true
}))


//3:指定静态目录
//服务器指定目录 绝对路径 出错
app.use(express.static(__dirname+"/public"));


//4:绑定监听端口
app.listen(3000);
//功能一:首页图片轮播

app.get("/imagelist",(req,res)=>{
  //2.2:查找当前页内容中间5行
    var sql = " SELECT id,img_url from imagelist";
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send(result);
  })
});
//nav导航栏
app.get("/navlist",(req,res)=>{
  //2.2:查找当前页内容中间5行
    var sql = " SELECT id,img_url,title from navlist";
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
});



//分页显示:新闻分页
/*app.get("/newslist",(req,res)=>{
  //1:参数  当前页码  页大小(一页显示几行数据)
  var pno = req.query.pno;            //2
  var pageSize = req.query.pageSize;  //5
  //2:sql
  //2.1:查找总记录数->转换总页数  15->3
  var sql = "SELECT count(id) as c FROM xz_news";




  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度


  pool.query(sql,(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  });
  //2.2:查找当前页内容           中间5行
  var sql = " SELECT id,title,img_url,ctime,point";
     sql += " FROM xz_news";
     sql += " LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   //计算分页偏移量
  pageSize = parseInt(pageSize)
  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      //console.log(result);
      obj.data = result;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  })
  //3:结果格式
  //res.send({code:"ok"})
});
//功能3：发送脚手架新闻详细信息
app.get("/newsinfo",(req,res)=>{
  var id = req.query.id;
  var obj=[
    {id:1,title:"北京房价下降啦，白菜价",content:"16万/平 快买吧！"},
    {id:2,title:"我是第二个",content:"后月红茶"}
  ];
  res.send(obj);
})
//功能四：用户发表评论
app.post("/postcomment",(req,res)=>{
  //为req对象绑定时间data 客户数据发送成功
  req.on("data",(buf)=>{
    var str=buf.toString(); //1.将参数转字符串
    var obj=JSON.parse(str); //2.将字符串转js对象
    var msg=obj.msg;        //3.msg 评论内容
    var nid=parseInt(obj.nid);        //4.nid 新闻编号

    var sql="INSERT INTO xz_comment(content,user_name,ctime,nid) VALUES(?,'匿名',now(),?)"
    pool.query(sql,[msg,nid],(err,result)=>{
      if(err) throw err;
      res.send({code:1,msg:"添加成功"})
    })
  })
})
//功能五：用户获取指定新闻编号所有评论
app.get("/getcomment",(req,res)=>{
  //获取指定新闻的编号
  var nid=parseInt(req.query.id);
  var pno = req.query.pno;            //2
  var pageSize = req.query.pageSize;  //5
  //2:sql
  //2.1:查找总记录数->转换总页数 
  var sql = "SELECT count(id) as c FROM xz_comment WHERE nid=?";
  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度
  pool.query(sql,[nid],(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  });
  //2.2:查找当前页内容           中间5行
  var sql = " SELECT id,content,ctime,user_name";
     sql += " FROM xz_comment";
     sql += " WHERE nid=? ORDER BY id DESC LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   //计算分页偏移量
  pageSize = parseInt(pageSize)
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
      if(err)throw err;
      //console.log(result);
      obj.data = result;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  })
  //3:结果格式
  //res.send({code:"ok"})
});
//功能六：返回商品的详细信息 
app.get("/goodinfo",(req,res)=>{
  var id=req.query.id;
  var obj=
    {id:id,title:"华为2000",now:"9999.99",old:"999999.99",pid:9527};
    res.send(obj)
})
//功能七：购物车数据列表
app.get("/shopCart",(req,res)=>{
  var obj=[];
  obj.push(
    {id:1,title:"华为p10",price:3999,count:2},
    {id:2,title:"华为p11",price:3999,count:3},
    {id:3,title:"华为p12",price:3999,count:4},
  );
  res.send(obj)
})
//功能八：将上商品信息添加到购物车
//INSERT INTO zx_car VALUES()
app.get("/addCart",(req,res)=>{
  //1.参数 商品id  商品数量
    //1.1获取参数
    var pid=req.query.pid;
    var count=req.query.count;
    //1.2创建正则表达式验证  一定做,所有用户的参数都需要验证js第一次验证，node.js第二次验证
    var reg=/^[0-9]{1,}$/ //正则表达式
    if(!reg.test(pid)){    //如果参数验证失败
      res.send({code:-1,msg:"商品编号参数有误"});
      return;
    }
    if(!reg.test(count)){
      res.send({code:-2,msg:"商品数量参数有误"})
      return;
    }
    //1.3：如果验证失败就返回
    res.send({code:1,msg:"添加成功"})
})

*/


//功能九：全部产品返回值
app.get("/goodslist",(req,res)=>{
  //2.2:查找当前页内容中间5行
    var sql = " SELECT id,img,sell,price from goodslist";
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
});



//主页数据
    //新品
    app.get("/xinlist",(req,res)=>{
        var sql = " SELECT id,img,sell,price from xinlist";
        pool.query(sql,(err,result)=>{
          if(err)throw err;
          res.send(result);
      })
    });
    //精品
    app.get("/jinglist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from jinglist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    });
    //热卖
    app.get("/relist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from relist";
      pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
      })
    });
    //后月红茶
    app.get("/honglist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from honglist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //后月普尔茶
    app.get("/puerlist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from puerlist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //后月白茶
    app.get("/bailist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from bailist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //半价样品
    app.get("/banjialist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from banjialist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //茶具礼盒
    app.get("/lihelist",(req,res)=>{
      var sql = " SELECT id,img,sell,price from lihelist";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })




//半价样品跳转
    app.get("/goodsbanjia",(req,res)=>{
      var sql = " SELECT id,img,sell,price from goodsbanjia";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })


//红茶商品跳转
app.get("/goodshong",(req,res)=>{
  var sql = " SELECT id,img,sell,price from goodshong";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})
//普尔茶跳转
app.get("/goodpuer",(req,res)=>{
  var sql = " SELECT id,img,sell,price from goodpuer";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})
//白茶跳转
app.get("/goodbai",(req,res)=>{
  var sql = " SELECT id,img,sell,price from goodbai";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})
//礼盒跳转
app.get("/goodslihe",(req,res)=>{
  var sql = " SELECT id,img,sell,price from goodslihe";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})


    //咨询列表  全部
    app.get("/news_list",(req,res)=>{
      var sql = " SELECT id,lei,title,point,img from news_list";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //咨询列表  茶山
    app.get("/chashanlist",(req,res)=>{
      var sql = " SELECT id,lei,title,point,img FROM news_list limit 0,8";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    
    //咨询列表  行业动态
    app.get("/hangyelist",(req,res)=>{
      var sql = " SELECT id,lei,title,point,img FROM news_list limit 8,10";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })
    //咨询列表  后月动态
    app.get("/houyuelist",(req,res)=>{
      var sql = " SELECT id,lei,title,point,img FROM news_list limit 18";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
      })
    })



//客服列表  帮助中心
app.get("/helplist",(req,res)=>{
  var sql = " SELECT id,title,content from helplist limit 0,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})





app.get("/maijia",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 1,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})


app.get("/fukuan",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 2,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/peisong",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 3,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/tuihuan",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 4,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/wenti",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 5,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/women",(req,res)=>{
  var sql = " SELECT id,title,content FROM helplist limit 6,1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})




//功能六：返回商品的详细信息 
app.get("/goodinfo",(req,res)=>{
  var id=req.query.id;
  var sql = " SELECT * FROM goodpuer where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})