SET names utf8;
DROP DATABASE IF EXISTS houyue; 
CREATE DATABASE houyue charset=utf8;
use houyue;
#0:进入houyue库中
USE houyue;
#0.0:创建轮播
CREATE TABLE imagelist(
 id        INT PRIMARY KEY, 
 img_url   VARCHAR(255)
);
INSERT INTO imagelist VALUES(1,"http://127.0.0.1:3000/img/lunbo/1.jpg");
INSERT INTO imagelist VALUES(2,"http://127.0.0.1:3000/img/lunbo/2.jpg");
INSERT INTO imagelist VALUES(3,"http://127.0.0.1:3000/img/lunbo/3.jpg");


#0.1:创建nav循环
CREATE TABLE navlist(
 id        INT PRIMARY KEY, 
 img_url   VARCHAR(255),
 title     VARCHAR(9)
 xkjhskjah 
);
INSERT INTO navlist VALUES(1,"http://127.0.0.1:3000/img/nav/1.png","全部产品");
INSERT INTO navlist VALUES(2,"http://127.0.0.1:3000/img/nav/2.png","半价样品");
INSERT INTO navlist VALUES(3,"http://127.0.0.1:3000/img/nav/3.png","文章资讯");
INSERT INTO navlist VALUES(4,"http://127.0.0.1:3000/img/nav/4.png","会员中心");
INSERT INTO navlist VALUES(5,"http://127.0.0.1:3000/img/nav/5.png","购物车");



#1:创建新闻表
CREATE TABLE news_list(
 id    INT PRIMARY KEY, 
 lei   VARCHAR(30),
 title VARCHAR(128),
 point INT,
 img   VARCHAR(255)
);

INSERT INTO news_list VALUES(1,"茶山","倚邦老街：地下的石雕，地上的沉浮",1,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(2,"茶山","倚邦老街：地下的石雕，地上的沉浮",2,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(3,"茶山","倚邦老街：地下的石雕，地上的沉浮",3,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(4,"茶山","倚邦老街：地下的石雕，地上的沉浮",4,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(5,"茶山","倚邦老街：地下的石雕，地上的沉浮",5,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(6,"茶山","倚邦老街：地下的石雕，地上的沉浮",6,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(7,"茶山","倚邦老街：地下的石雕，地上的沉浮",7,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(8,"茶山","倚邦老街：地下的石雕，地上的沉浮",8,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(9,"茶山","倚邦老街：地下的石雕，地上的沉浮",9,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(10,"茶山","倚邦老街：地下的石雕，地上的沉浮",10,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(11,"茶山","倚邦老街：地下的石雕，地上的沉浮",11,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(12,"茶山","倚邦老街：地下的石雕，地上的沉浮",12,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(13,"茶山","倚邦老街：地下的石雕，地上的沉浮",13,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(14,"茶山","倚邦老街：地下的石雕，地上的沉浮",14,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(15,"茶山","倚邦老街：地下的石雕，地上的沉浮",15,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(16,"茶山","倚邦老街：地下的石雕，地上的沉浮",16,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(17,"茶山","倚邦老街：地下的石雕，地上的沉浮",17,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(18,"茶山","倚邦老街：地下的石雕，地上的沉浮",18,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(19,"茶山","倚邦老街：地下的石雕，地上的沉浮",19,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(20,"茶山","倚邦老街：地下的石雕，地上的沉浮",20,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(21,"茶山","倚邦老街：地下的石雕，地上的沉浮",21,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(22,"茶山","倚邦老街：地下的石雕，地上的沉浮",22,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(23,"茶山","倚邦老街：地下的石雕，地上的沉浮",23,"http://127.0.0.1:3000/img/news/1.png");
INSERT INTO news_list VALUES(24,"茶山","倚邦老街：地下的石雕，地上的沉浮",24,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(25,"茶山","倚邦老街：地下的石雕，地上的沉浮",25,"http://127.0.0.1:3000/img/news/2.jpg");
INSERT INTO news_list VALUES(26,"茶山","倚邦老街：地下的石雕，地上的沉浮",26,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(27,"茶山","倚邦老街：地下的石雕，地上的沉浮",27,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(28,"茶山","倚邦老街：地下的石雕，地上的沉浮",28,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(29,"茶山","倚邦老街：地下的石雕，地上的沉浮",29,"http://127.0.0.1:3000/img/news/kong.png");
INSERT INTO news_list VALUES(30,"茶山","倚邦老街：地下的石雕，地上的沉浮",30,"http://127.0.0.1:3000/img/news/kong.png");





#2.创建商品表
CREATE TABLE goodslist(
  id INT PRIMARY KEY,
  img VARCHAR(255),
  sell VARCHAR(255),
  price VARCHAR(125)
);

INSERT INTO goodslist VALUES(1,"http://127.0.0.1:3000/img/allproduct/1.png","后月存茶罐 红色陶瓷礼罐","160.00 包邮");
INSERT INTO goodslist VALUES(2,"http://127.0.0.1:3000/img/allproduct/2.png","后月2018年 古树老班章 熟茶 品藏级 1860元/饼/200克","1860.00 包邮");
INSERT INTO goodslist VALUES(3,"http://127.0.0.1:3000/img/allproduct/3.png","后月 茶样促销组合装 生熟红白 普洱茶样 半价","55.00 包邮");
INSERT INTO goodslist VALUES(4,"http://127.0.0.1:3000/img/allproduct/4.png","客户专属定制—头春古树发酵熟茶 357克","1180.00 包邮");
INSERT INTO goodslist VALUES(5,"http://127.0.0.1:3000/img/allproduct/5.png","后月镇店茶 2018头春大树纯料 老班章 200克小饼 已售罄 仅作为产品展示","6800.00 包邮");
INSERT INTO goodslist VALUES(6,"http://127.0.0.1:3000/img/allproduct/6.png","后月晒红茶 2018勐海高山二春生态茶 100克/袋","39.90 包邮");
INSERT INTO goodslist VALUES(7,"http://127.0.0.1:3000/img/allproduct/7.png","后月晒青茶 2018二春曼西良纯手工制作 大树 100克/袋","78.00 包邮");
INSERT INTO goodslist VALUES(8,"http://127.0.0.1:3000/img/allproduct/8.png","后月晒红茶 2018头春高山乔木 200克/饼","199.00 包邮");
INSERT INTO goodslist VALUES(9,"http://127.0.0.1:3000/img/allproduct/9.png","后月晒青茶 2018头春高山乔木 200克/饼","199.00 包邮");
INSERT INTO goodslist VALUES(10,"http://127.0.0.1:3000/img/allproduct/10.png","后月白茶 2018头春高山乔木 200克/饼","199.00 包邮");
INSERT INTO goodslist VALUES(11,"http://127.0.0.1:3000/img/allproduct/11.png","后月晒红茶 2018南糯古树头春 200克/饼","399.00 包邮");
INSERT INTO goodslist VALUES(12,"http://127.0.0.1:3000/img/allproduct/12.png","后月晒青茶 2018南糯古树头春 200克/饼","399.00 包邮");
INSERT INTO goodslist VALUES(13,"http://127.0.0.1:3000/img/allproduct/13.png","后月白茶 2018南糯古树头春 200克/饼","399.00 包邮");
INSERT INTO goodslist VALUES(14,"http://127.0.0.1:3000/img/allproduct/14.png","后月晒青茶 2018大树头春 高山古韵 200克/饼","299.00 包邮");
INSERT INTO goodslist VALUES(15,"http://127.0.0.1:3000/img/allproduct/15.png","后月晒青茶 2018老曼峨大树纯料 头春 200克/饼","1299.00 包邮");
INSERT INTO goodslist VALUES(16,"http://127.0.0.1:3000/img/allproduct/16.png","后月晒青茶 2018曼西良大树纯料 头春 200克/饼","599.00 包邮");
INSERT INTO goodslist VALUES(17,"http://127.0.0.1:3000/img/allproduct/17.png","后月熟茶 勐海古醇 2017年布朗、勐宋大树茶拼配 357克/饼","229.00 包邮");
INSERT INTO goodslist VALUES(18,"http://127.0.0.1:3000/img/allproduct/18.png","后月熟茶 勐海古砖 2018年布朗、南糯古大树茶箐发酵 500克/砖","199.00 包邮");
INSERT INTO goodslist VALUES(19,"http://127.0.0.1:3000/img/allproduct/19.png","后月熟茶 众筹第九款 2018巅峰之作 南糯之巅 头春古树纯料发酵而成 357克/饼","999.00 包邮");
INSERT INTO goodslist VALUES(20,"http://127.0.0.1:3000/img/allproduct/20.png","后月饼茶礼盒 2018最新款 畅销 200克/357克规格","30.00 包邮");
INSERT INTO goodslist VALUES(21,"http://127.0.0.1:3000/img/allproduct/21.png","后月礼盒月饼茶 中秋团圆伴手礼 晒红 600克/6个月饼 大树纯料","366.00 包邮");
INSERT INTO goodslist VALUES(22,"http://127.0.0.1:3000/img/allproduct/22.png","2018年南糯山古树晒红、勐海高山大树白茶——春味红白自取 头春 茶样","29.98");
INSERT INTO goodslist VALUES(23,"http://127.0.0.1:3000/img/allproduct/23.png","2018年勐海高山大树晒青、南糯山古树晒青——春味双晒青自取 头春 茶样","29.98");
INSERT INTO goodslist VALUES(24,"http://127.0.0.1:3000/img/allproduct/24.png","【半价样品】后月2018年勐海高山白茶 大树 头春","9.99");
INSERT INTO goodslist VALUES(25,"http://127.0.0.1:3000/img/allproduct/25.png","后月白茶 2018年勐海高山大树头春 60克/袋","60.00");
INSERT INTO goodslist VALUES(26,"http://127.0.0.1:3000/img/allproduct/26.png","【半价样品】2018年南糯山晒青 古树 头春 大树纯料","19.99");
INSERT INTO goodslist VALUES(27,"http://127.0.0.1:3000/img/allproduct/27.png","后月晒青散茶 2018年南糯山古树头春 100克/袋","199.90 包邮");
INSERT INTO goodslist VALUES(28,"http://127.0.0.1:3000/img/allproduct/28.png","【半价样品】2018年南糯山古树晒红 头春 纯料","19.99");
INSERT INTO goodslist VALUES(29,"http://127.0.0.1:3000/img/allproduct/29.png","后月晒红茶 2018年南糯山古树头春 纯料 100克/袋","199.90 包邮");
INSERT INTO goodslist VALUES(30,"http://127.0.0.1:3000/img/allproduct/30.png","【半价样品】2018年勐海高山晒青 大树纯料 头春","9.99");
INSERT INTO goodslist VALUES(31,"http://127.0.0.1:3000/img/allproduct/31.png","后月晒青茶 2018年勐海高山晒青 头春大树纯料 100克/袋","99.90");
INSERT INTO goodslist VALUES(32,"http://127.0.0.1:3000/img/allproduct/32.png","【半价样品】后月2018蘭饼 晒红红茶 品鉴级古树纯料晒红 20克/份","22.39");
INSERT INTO goodslist VALUES(33,"http://127.0.0.1:3000/img/allproduct/33.png","后月2018勐海古雅 勐海白茶 白茶357克饼","299.00 包邮");
INSERT INTO goodslist VALUES(34,"http://127.0.0.1:3000/img/allproduct/34.png","后月2018蘭饼 晒红红茶 品鉴级古树纯料晒红357克饼","799.00 包邮");
INSERT INTO goodslist VALUES(35,"http://127.0.0.1:3000/img/allproduct/35.png","【半价样品】后月第八款众筹生茶样品 20克/袋装","16.75");
INSERT INTO goodslist VALUES(36,"http://127.0.0.1:3000/img/allproduct/36.png","后月2017正红色第八款众筹生茶小饼手提袋 2盒装手提袋 随手礼红色小手袋","2.00");
INSERT INTO goodslist VALUES(37,"http://127.0.0.1:3000/img/allproduct/37.png","后月2017正红色单饼礼盒 礼盒包装 带手提袋礼盒 357克饼茶礼盒","39.00 包邮");
INSERT INTO goodslist VALUES(38,"http://127.0.0.1:3000/img/allproduct/38.png","后月第八款众筹古树茶 勐海古韵生茶100克小饼盒装 携带方便 一泡刚刚好","199.00 包邮");
INSERT INTO goodslist VALUES(39,"http://127.0.0.1:3000/img/allproduct/39.png","后月2017年龙珠晒红茶礼 精美玻璃罐装","128.00 包邮");
INSERT INTO goodslist VALUES(40,"http://127.0.0.1:3000/img/allproduct/40.png","后月铁罐古树晒红茶 单罐100克","200.00 包邮");
INSERT INTO goodslist VALUES(41,"http://127.0.0.1:3000/img/allproduct/41.png","后月铁罐古树晒红茶 2018春节茶礼礼盒 晒红红茶礼盒装","399.00 包邮");
INSERT INTO goodslist VALUES(42,"http://127.0.0.1:3000/img/allproduct/42.png","后月丁酉年福饼熟茶 357克饼 普洱熟茶饼","699.00 包邮");
INSERT INTO goodslist VALUES(43,"http://127.0.0.1:3000/img/allproduct/43.png","后月2017易武熟茶龙珠 熟茶小沱 6克/颗 100克绵纸包装散龙珠","99.90 包邮");
INSERT INTO goodslist VALUES(44,"http://127.0.0.1:3000/img/allproduct/44.png","【限时半价】领“我”回家，新年爆福","29.57 包邮");
INSERT INTO goodslist VALUES(45,"http://127.0.0.1:3000/img/allproduct/45.png","后月第八款众筹古树茶 勐海古韵生茶357克饼","299.00 包邮");
INSERT INTO goodslist VALUES(46,"http://127.0.0.1:3000/img/allproduct/46.png","后月2017年龙珠晒红样品 手工沱 红丝棉纸包装 20克／袋","10.00");
INSERT INTO goodslist VALUES(47,"http://127.0.0.1:3000/img/allproduct/47.jpg","后月2017年第一批古树普洱熟茶样品 普洱茶 熟茶20克/包","15.88");
INSERT INTO goodslist VALUES(48,"http://127.0.0.1:3000/img/allproduct/48.jpg","后月2017年第一批普洱熟茶样品 普洱茶 熟茶20克/包","22.32");
INSERT INTO goodslist VALUES(49,"http://127.0.0.1:3000/img/allproduct/49.png","后月2017年布朗山晒红 125克/袋 1袋包邮","50.00 包邮");
INSERT INTO goodslist VALUES(50,"http://127.0.0.1:3000/img/allproduct/50.png","后月滑竹梁子晒红200克散茶 2盒就送手提袋一只 包邮","199.00 包邮");
INSERT INTO goodslist VALUES(51,"http://127.0.0.1:3000/img/allproduct/51.png","后月2017年第一批古树普洱熟茶散茶 普洱茶 熟茶200克/份/袋","317.60 包邮");
INSERT INTO goodslist VALUES(52,"http://127.0.0.1:3000/img/allproduct/52.png","后月2017年第一批普洱熟茶散茶 普洱茶 熟茶200克/份/袋","177.60 包邮");
INSERT INTO goodslist VALUES(53,"http://127.0.0.1:3000/img/allproduct/53.png","后月2017年茶馆专用散装红茶 红茶散茶 1000克／袋 茶馆茶","299.00 包邮");
INSERT INTO goodslist VALUES(54,"http://127.0.0.1:3000/img/allproduct/54.png","后月2017年山韵晒红袋装散茶 125克／袋","39.00 包邮");
INSERT INTO goodslist VALUES(55,"http://127.0.0.1:3000/img/allproduct/55.png","后月贺开晒红200克散茶 2盒就送手提袋一只 包邮","150.00 包邮");
INSERT INTO goodslist VALUES(56,"http://127.0.0.1:3000/img/allproduct/56.png","后月2017年龙珠晒红 手工沱 红丝棉纸包装款 100克/袋 1袋包邮","99.90 包邮");
INSERT INTO goodslist VALUES(57,"http://127.0.0.1:3000/img/allproduct/57.png","后月众筹茶全家福357克饼 7饼／套","2793.00 包邮");
INSERT INTO goodslist VALUES(58,"http://127.0.0.1:3000/img/allproduct/58.png","后月2017年南糯山晒红袋装散茶 125克/袋 1袋包邮","50.00 包邮");
INSERT INTO goodslist VALUES(59,"http://127.0.0.1:3000/img/allproduct/59.jpg","【中秋茶礼】后月2017年中秋月饼茶 4个/盒/400克 顺丰包邮","229.00 包邮");
INSERT INTO goodslist VALUES(60,"http://127.0.0.1:3000/img/allproduct/60.jpg","后月第七款众筹茶 众筹二款款古树晒红 200克散茶","170.00 包邮");
INSERT INTO goodslist VALUES(61,"http://127.0.0.1:3000/img/allproduct/61.png","后月第第七款众筹茶 众筹二款古树晒红 357克/饼","199.00 包邮");
INSERT INTO goodslist VALUES(62,"http://127.0.0.1:3000/img/allproduct/62.png","后月第二款众筹古树晒红100克小饼 第二款众筹晒红小饼","70.00 包邮");
INSERT INTO goodslist VALUES(63,"http://127.0.0.1:3000/img/allproduct/63.jpg","【半价取样】后月2017年众筹古树晒红茶样 171039","6.00");
INSERT INTO goodslist VALUES(64,"http://127.0.0.1:3000/img/allproduct/64.jpg","【半价取样】后月2017年布朗山头春晒红茶样 171060","10.00");
INSERT INTO goodslist VALUES(65,"http://127.0.0.1:3000/img/allproduct/65.jpg","【半价取样】后月2017年南糯山头春晒红茶样 171010","5.00");
INSERT INTO goodslist VALUES(66,"http://127.0.0.1:3000/img/allproduct/66.png","后月第五款众筹古树茶 易武古韵•生饼•易武古树茶 100克/饼","70.00");
INSERT INTO goodslist VALUES(67,"http://127.0.0.1:3000/img/allproduct/67.png","后月第四款众筹茶 第一款众筹熟茶——布朗古醇 2016年云南众筹古树熟饼 100克/饼","70.00");
INSERT INTO goodslist VALUES(68,"http://127.0.0.1:3000/img/allproduct/68.jpg","2016年后月众筹伙伴纪念饼 品鉴级红茶 百分百古树 晒红古树茶 限量版 357克/饼","399.00 包邮");
INSERT INTO goodslist VALUES(69,"http://127.0.0.1:3000/img/allproduct/69.jpg","众筹红茶 后月众筹晒红古树晒红茶 勐海晒红茶散茶 200克/盒","170.00 包邮");
INSERT INTO goodslist VALUES(70,"http://127.0.0.1:3000/img/allproduct/70.png","后月第三款众筹茶 勐海晒红茶 古树晒红饼茶 357/饼","299.00 包邮");
INSERT INTO goodslist VALUES(71,"http://127.0.0.1:3000/img/allproduct/71.jpg","后月单饼礼盒 礼品茶盒 送礼必备 黑红色普洱茶红茶空礼盒","30.00");
INSERT INTO goodslist VALUES(72,"http://127.0.0.1:3000/img/allproduct/72.jpg","【礼品茶】2015年后月第二款众筹古树——布朗古韵•壹伍壹拾•布朗山 357克/饼","319.00 包邮");
INSERT INTO goodslist VALUES(73,"http://127.0.0.1:3000/img/allproduct/73.jpg","后月第一款众筹古树熟茶•布朗古醇 2016年云南众筹古树熟茶 宫廷芽头 散茶 250克/盒","299.00 包邮");
INSERT INTO goodslist VALUES(74,"http://127.0.0.1:3000/img/allproduct/74.png","后月第五款众筹古树茶 易武古韵•壹伍壹拾•易武饼 357克/饼","299.00 包邮");
INSERT INTO goodslist VALUES(75,"http://127.0.0.1:3000/img/allproduct/75.png","后月第六款众筹茶 2016后月普洱茶巅峰之作 布朗之巅 品藏级古树生茶 357克","1299.00 包邮");
INSERT INTO goodslist VALUES(76,"http://127.0.0.1:3000/img/allproduct/76.png","后月第四款众筹茶 第一款众筹古树熟茶•布朗古醇 2016年云南众筹古树熟饼 357克/饼","299.00 包邮");
INSERT INTO goodslist VALUES(77,"http://127.0.0.1:3000/img/allproduct/77.png","2015年后月第二款众筹古树——布朗古韵•壹伍壹拾•布朗山 357克/饼","299.00");
INSERT INTO goodslist VALUES(78,"http://127.0.0.1:3000/img/allproduct/78.png","2015年中国第一款众筹古树普洱茶 壹伍壹拾•六山饼 普世级古树茶 357克","399.00 包邮");
INSERT INTO goodslist VALUES(79,"http://127.0.0.1:3000/img/allproduct/79.jpg","2015年后月第二款众筹古树——布朗古韵•壹伍壹拾•布朗山沱茶 45克/盒","50.00");
INSERT INTO goodslist VALUES(80,"http://127.0.0.1:3000/img/allproduct/80.jpg","第二款众筹茶后月布朗古树100克样茶饼 布朗古韵 普洱茶 生茶 100克/饼","100.00");
INSERT INTO goodslist VALUES(81,"http://127.0.0.1:3000/img/allproduct/81.jpg","后月纯手工建水紫陶无底托斗笠盖碗 大号功夫茶具茶碗","399.00 包邮");
INSERT INTO goodslist VALUES(82,"http://127.0.0.1:3000/img/allproduct/82.jpg","后月手绘青花陶瓷无底托盖碗大号功夫茶具茶碗","199.00 包邮");
INSERT INTO goodslist VALUES(83,"http://127.0.0.1:3000/img/allproduct/83.jpg","后月手绘青花陶瓷品茗杯 茶碗 纯手工绘制每一个都独一无二","30.00");







#3.主页数据表
      #3.1新品
      CREATE TABLE xinlist(
      id INT PRIMARY KEY,
      img VARCHAR(255),
      sell VARCHAR(255),
      price VARCHAR(125)
      );
      INSERT INTO xinlist VALUES(1,"http://127.0.0.1:3000/img/bjyp/1.png","后月 茶样促销组合装 生熟红白 普洱茶样 半价","55.00 包邮");


      #3.2精品
      CREATE TABLE jinglist(
      id INT PRIMARY KEY,
      img VARCHAR(255),
      sell VARCHAR(255),
      price VARCHAR(125)
      );
      INSERT INTO jinglist VALUES(2,"http://127.0.0.1:3000/img/jp/1.png","后月晒青茶 2018曼西良大树纯料 头春 200克/饼","599.00 包邮");
      INSERT INTO jinglist VALUES(3,"http://127.0.0.1:3000/img/jp/2.png","后月晒青茶 2018老曼峨大树纯料 头春 200克/饼","1299.00 包邮");



      #3.3热卖
      CREATE TABLE relist(
      id INT PRIMARY KEY,
      img VARCHAR(255),
      sell VARCHAR(255),
      price VARCHAR(125)
      );
      INSERT INTO relist VALUES(4,"http://127.0.0.1:3000/img/rm/1.png","后月白茶 2018南糯古树头春 200克/饼","399.00 包邮");
      INSERT INTO relist VALUES(5,"http://127.0.0.1:3000/img/rm/2.png","后月晒青茶 2018南糯古树头春 200克/饼","399.00 包邮");
      INSERT INTO relist VALUES(6,"http://127.0.0.1:3000/img/rm/3.png","后月晒红茶 2018南糯古树头春 200克/饼","399.00 包邮");
      INSERT INTO relist VALUES(7,"http://127.0.0.1:3000/img/rm/4.png","后月晒青茶 2018头春高山乔木 200克/饼","199.00 包邮");




      #3.4后月红茶
      CREATE TABLE honglist(
      id INT PRIMARY KEY,
      sell VARCHAR(255),
      price VARCHAR(125),
      img VARCHAR(255)
      );
      INSERT INTO honglist VALUES(8,"后月晒红茶 2018勐海高山二春生态茶 100克/袋","39.00 包邮","http://127.0.0.1:3000/img/hyhc/1.png");
      INSERT INTO honglist VALUES(9,"后月晒红茶 2018头春高山乔木 200克/饼","199.00 包邮","http://127.0.0.1:3000/img/hyhc/2.png");
      INSERT INTO honglist VALUES(10,"后月晒红茶 2018南糯古树头春 200克/饼","399.00 包邮","http://127.0.0.1:3000/img/hyhc/3.png");
      INSERT INTO honglist VALUES(11,"后月晒红茶 2018年南糯山古树头春 纯料 100克/袋","199.00 包邮","http://127.0.0.1:3000/img/hyhc/4.png");




      #3.5后月普洱茶
      CREATE TABLE puerlist(
      id INT PRIMARY KEY,
      sell VARCHAR(255),
      price VARCHAR(125),
      img VARCHAR(255)
      );
      INSERT INTO puerlist VALUES(12,"后月2018年 古树老班章 熟茶 品藏级 1860元/饼/200克","1860.00 包邮","http://127.0.0.1:3000/img/hypec/1.png");
      INSERT INTO puerlist VALUES(13,"客户专属定制—头春古树发酵熟茶 357克","1188.00 包邮","http://127.0.0.1:3000/img/hypec/2.png");
      INSERT INTO puerlist VALUES(14,"后月镇店茶 2018头春大树纯料 老班章 200克小饼 已售罄 仅作为产品展示","6800.00 包邮","http://127.0.0.1:3000/img/hypec/3.png");
      INSERT INTO puerlist VALUES(15,"后月晒青茶 2018二春曼西良纯手工制作 大树 100克/袋","78.00 包邮","http://127.0.0.1:3000/img/hypec/4.png");




      #3.6后月白茶
      CREATE TABLE bailist(
      id INT PRIMARY KEY,
      sell VARCHAR(255),
      price VARCHAR(125),
      img VARCHAR(255)
      );
      INSERT INTO bailist VALUES(16,"后月白茶 2018头春高山乔木 200克/饼","199.00 包邮","http://127.0.0.1:3000/img/hybc/1.png");
      INSERT INTO bailist VALUES(17,"后月白茶 2018南糯古树头春 200克/饼","399.00 包邮","http://127.0.0.1:3000/img/hybc/2.png");
      INSERT INTO bailist VALUES(18,"后月白茶 2018年勐海高山大树头春 60克/袋","60.00 包邮","http://127.0.0.1:3000/img/hybc/3.png");
      INSERT INTO bailist VALUES(19,"后月2018勐海古雅 勐海白茶 白茶357克饼","299.00 包邮","http://127.0.0.1:3000/img/hybc/4.png");




      #3.7半价样品
      CREATE TABLE banjialist(
      id INT PRIMARY KEY,
      sell VARCHAR(255),
      price VARCHAR(125),
      img VARCHAR(255)
      );
      INSERT INTO banjialist VALUES(20,"后月 茶样促销组合装 生熟红白 普洱茶样 半价","55.00 包邮","http://127.0.0.1:3000/img/bjyp/1.png");
      INSERT INTO banjialist VALUES(21,"2018年南糯山古树晒红、勐海高山大树白茶——春味红白自取 头春 茶样","29.98","http://127.0.0.1:3000/img/bjyp/2.png");
      INSERT INTO banjialist VALUES(22,"2018年勐海高山大树晒青、南糯山古树晒青——春味双晒青自取 头春 茶样","29.98","http://127.0.0.1:3000/img/bjyp/3.png");
      INSERT INTO banjialist VALUES(23,"【半价样品】后月2018年勐海高山白茶 大树 头春","9.99","http://127.0.0.1:3000/img/bjyp/4.png");




      #3.8茶具礼盒
      CREATE TABLE lihelist(
      id INT PRIMARY KEY,
      sell VARCHAR(255),
      price VARCHAR(125),
      img VARCHAR(255)
      );
      INSERT INTO lihelist VALUES(24,"后月存茶罐 红色陶瓷礼罐","160.00 包邮","http://127.0.0.1:3000/img/cjlh/1.png");
      INSERT INTO lihelist VALUES(25,"后月饼茶礼盒 2018最新款 畅销 200克/357克规格","30.00 包邮","http://127.0.0.1:3000/img/cjlh/2.png");
      INSERT INTO lihelist VALUES(26,"后月2017正红色单饼礼盒 礼盒包装 带手提袋礼盒 357克饼茶礼盒","39.00 包邮","http://127.0.0.1:3000/img/cjlh/3.png");
      INSERT INTO lihelist VALUES(27,"后月纯手工建水紫陶无底托斗笠盖碗 大号功夫茶具茶碗","399.00 包邮","http://127.0.0.1:3000/img/cjlh/4.jpg");


 

#4.红茶系列
CREATE TABLE goodshong(
id INT PRIMARY KEY,
img VARCHAR(255),
sell VARCHAR(255),
price VARCHAR(125)
);
INSERT INTO goodshong VALUES(1,"http://127.0.0.1:3000/img/allproduct/6.png","后月晒红茶 2018勐海高山二春生态茶 100克/袋","39.90 包邮");

INSERT INTO goodshong VALUES(2,"http://127.0.0.1:3000/img/allproduct/8.png","后月晒红茶 2018头春高山乔木 200克/饼","199.00 包邮");

INSERT INTO goodshong VALUES(3,"http://127.0.0.1:3000/img/allproduct/11.png","后月晒红茶 2018南糯古树头春 200克/饼","399.00 包邮");

INSERT INTO goodshong VALUES(4,"http://127.0.0.1:3000/img/allproduct/49.png","后月晒红茶 2018年南糯山古树头春 纯料 100克/袋","199.00 包邮");

INSERT INTO goodshong VALUES(5,"http://127.0.0.1:3000/img/allproduct/34.png","后月2018蘭饼 晒红红茶 品鉴级古树纯料晒红357克饼","799.00 包邮");

INSERT INTO goodshong VALUES(6,"http://127.0.0.1:3000/img/allproduct/39.png","后月2017年龙珠晒红茶礼 精美玻璃罐装","128.00 包邮");

INSERT INTO goodshong VALUES(7,"http://127.0.0.1:3000/img/allproduct/40.png","后月铁罐古树晒红茶 单罐100克","200.00 包邮");

INSERT INTO goodshong VALUES(8,"http://127.0.0.1:3000/img/allproduct/41.png","后月铁罐古树晒红茶 2018春节茶礼礼盒 晒红红茶礼盒装","399.00 包邮");

INSERT INTO goodshong VALUES(9,"http://127.0.0.1:3000/img/allproduct/54.png","后月2017年布朗山晒红 125克/袋 1袋包邮","50.00 包邮");

INSERT INTO goodshong VALUES(10,"http://127.0.0.1:3000/img/allproduct/50.png","后月滑竹梁子晒红200克散茶 2盒就送手提袋一只 包邮","199.00 包邮");

INSERT INTO goodshong VALUES(11,"http://127.0.0.1:3000/img/allproduct/53.png","后月2017年茶馆专用散装红茶 红茶散茶 1000克／袋 茶馆茶","299.00 包邮");

INSERT INTO goodshong VALUES(12,"http://127.0.0.1:3000/img/allproduct/54.png","后月2017年山韵晒红袋装散茶 125克／袋","39.00 包邮");

INSERT INTO goodshong VALUES(13,"http://127.0.0.1:3000/img/allproduct/50.png","后月贺开晒红200克散茶 2盒就送手提袋一只 包邮","150.00 包邮");

INSERT INTO goodshong VALUES(14,"http://127.0.0.1:3000/img/allproduct/54.png","后月2017年龙珠晒红 手工沱 红丝棉纸包装款 100克/袋 1袋包邮","99.90 包邮");

INSERT INTO goodshong VALUES(15,"http://127.0.0.1:3000/img/allproduct/54.png","后月2017年南糯山晒红袋装散茶 125克/袋 1袋包邮","50.00 包邮");

INSERT INTO goodshong VALUES(16,"http://127.0.0.1:3000/img/allproduct/59.jpg","【中秋茶礼】后月2017年中秋月饼茶 4个/盒/400克 顺丰包邮","229.00 包邮");

INSERT INTO goodshong VALUES(17,"http://127.0.0.1:3000/img/allproduct/60.jpg","后月第七款众筹茶 众筹二款款古树晒红 200克散茶","170.00 包邮");

INSERT INTO goodshong VALUES(18,"http://127.0.0.1:3000/img/allproduct/61.png","后月第第七款众筹茶 众筹二款古树晒红 357克/饼","199.00 包邮");

INSERT INTO goodshong VALUES(19,"http://127.0.0.1:3000/img/allproduct/62.png","后月第二款众筹古树晒红100克小饼 第二款众筹晒红小饼","70.00 包邮");

INSERT INTO goodshong VALUES(20,"http://127.0.0.1:3000/img/allproduct/68.jpg","2016年后月众筹伙伴纪念饼 品鉴级红茶 百分百古树 晒红古树茶 限量版 357克/","399.00 包邮");

INSERT INTO goodshong VALUES(21,"http://127.0.0.1:3000/img/allproduct/69.jpg","众筹红茶 后月众筹晒红古树晒红茶 勐海晒红茶散茶 200克/盒","170.00 包邮");

INSERT INTO goodshong VALUES(22,"http://127.0.0.1:3000/img/allproduct/70.png","后月第三款众筹茶 勐海晒红茶 古树晒红饼茶 357/饼","299.00 包邮");



#5.普洱茶系列
CREATE TABLE goodpuer(
id INT PRIMARY KEY,
img VARCHAR(255),
sell VARCHAR(255),
price VARCHAR(125)

);
INSERT INTO goodpuer VALUES(1,"http://127.0.0.1:3000/img/allproduct/2.png","后月2018年 古树老班章 熟茶 品藏级 1860元/饼/200克","1860.00 包邮");
INSERT INTO goodpuer VALUES(2,"http://127.0.0.1:3000/img/allproduct/4.png","客户专属定制—头春古树发酵熟茶 357克","299.00 包邮");
INSERT INTO goodpuer VALUES(3,"http://127.0.0.1:3000/img/allproduct/5.png","后月镇店茶 2018头春大树纯料 老班章 200克小饼 已售罄 仅作为产品展示","299.00 包邮");
INSERT INTO goodpuer VALUES(4,"http://127.0.0.1:3000/img/allproduct/6.png","后月晒青茶 2018二春曼西良纯手工制作 大树 100克/袋","299.00 包邮");
INSERT INTO goodpuer VALUES(5,"http://127.0.0.1:3000/img/allproduct/9.png","后月晒青茶 2018头春高山乔木 200克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(6,"http://127.0.0.1:3000/img/allproduct/12.png","后月晒青茶 2018南糯古树头春 200克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(7,"http://127.0.0.1:3000/img/allproduct/14.png","后月晒青茶 2018大树头春 高山古韵 200克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(8,"http://127.0.0.1:3000/img/allproduct/15.png","后月晒青茶 2018老曼峨大树纯料 头春 200克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(9,"http://127.0.0.1:3000/img/allproduct/16.png","后月晒青茶 2018曼西良大树纯料 头春 200克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(10,"http://127.0.0.1:3000/img/allproduct/17.png","后月熟茶 勐海古醇 2017年布朗、勐宋大树茶拼配 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(11,"http://127.0.0.1:3000/img/allproduct/18.png","后月熟茶 勐海古砖 2018年布朗、南糯古大树茶箐发酵 500克/砖","299.00 包邮");
INSERT INTO goodpuer VALUES(12,"http://127.0.0.1:3000/img/allproduct/19.png","后月熟茶 众筹第九款 2018巅峰之作 南糯之巅 头春古树纯料发酵而成 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(13,"http://127.0.0.1:3000/img/allproduct/25.png","后月晒青散茶 2018年南糯山古树头春 100克/袋","299.00 包邮");
INSERT INTO goodpuer VALUES(14,"http://127.0.0.1:3000/img/allproduct/31.png","后月晒青茶 2018年勐海高山晒青 头春大树纯料 100克/袋","299.00 包邮");
INSERT INTO goodpuer VALUES(15,"http://127.0.0.1:3000/img/allproduct/38.png","后月第八款众筹古树茶 勐海古韵生茶100克小饼盒装 携带方便 一泡刚刚好","299.00 包邮");
INSERT INTO goodpuer VALUES(16,"http://127.0.0.1:3000/img/allproduct/42.png","后月丁酉年福饼熟茶 357克饼 普洱熟茶饼","299.00 包邮");
INSERT INTO goodpuer VALUES(17,"http://127.0.0.1:3000/img/allproduct/43.png","后月2017易武熟茶龙珠 熟茶小沱 6克/颗 100克绵纸包装散龙珠","299.00 包邮");
INSERT INTO goodpuer VALUES(18,"http://127.0.0.1:3000/img/allproduct/45.png","后月第八款众筹古树茶 勐海古韵生茶357克饼","299.00 包邮");
INSERT INTO goodpuer VALUES(19,"http://127.0.0.1:3000/img/allproduct/51.png","后月2017年第一批古树普洱熟茶散茶 普洱茶 熟茶200克/份/袋","299.00 包邮");
INSERT INTO goodpuer VALUES(20,"http://127.0.0.1:3000/img/allproduct/51.png","后月2017年第一批普洱熟茶散茶 普洱茶 熟茶200克/份/袋","299.00 包邮");
INSERT INTO goodpuer VALUES(21,"http://127.0.0.1:3000/img/allproduct/66.png","后月第五款众筹古树茶 易武古韵·生饼·易武古树茶 100克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(22,"http://127.0.0.1:3000/img/allproduct/67.png","后月第四款众筹茶 第一款众筹熟茶——布朗古醇 2016年云南众筹古树熟饼 100克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(23,"http://127.0.0.1:3000/img/allproduct/72.jpg","【礼品茶】2015年后月第二款众筹古树——布朗古韵·壹伍壹拾·布朗山 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(24,"http://127.0.0.1:3000/img/allproduct/73.jpg","后月第一款众筹古树熟茶·布朗古醇 2016年云南众筹古树熟茶 宫廷芽头 散茶250克/盒","299.00 包邮");
INSERT INTO goodpuer VALUES(25,"http://127.0.0.1:3000/img/allproduct/74.png","后月第五款众筹古树茶 易武古韵·壹伍壹拾·易武饼 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(26,"http://127.0.0.1:3000/img/allproduct/75.png","后月第六款众筹茶 2016后月普洱茶巅峰之作 布朗之巅 品藏级古树生茶 357克","299.00 包邮");
INSERT INTO goodpuer VALUES(27,"http://127.0.0.1:3000/img/allproduct/76.png","后月第四款众筹茶 第一款众筹古树熟茶·布朗古醇 2016年云南众筹古树熟饼 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(28,"http://127.0.0.1:3000/img/allproduct/77.png","2015年后月第二款众筹古树——布朗古韵·壹伍壹拾·布朗山 357克/饼","299.00 包邮");
INSERT INTO goodpuer VALUES(29,"http://127.0.0.1:3000/img/allproduct/78.png","2015年中国第一款众筹古树普洱茶 壹伍壹拾•六山饼 普世级古树茶 357克","299.00 包邮");
INSERT INTO goodpuer VALUES(30,"http://127.0.0.1:3000/img/allproduct/79.jpg","2015年后月第二款众筹古树——布朗古韵·壹伍壹拾·布朗山沱茶 45克/盒","299.00 包邮");
INSERT INTO goodpuer VALUES(31,"http://127.0.0.1:3000/img/allproduct/80.jpg","第二款众筹茶后月布朗古树100克样茶饼 布朗古韵 普洱茶 生茶 100克/饼","299.00 包邮");











#6.白茶系列
CREATE TABLE goodbai(
id INT PRIMARY KEY,
img VARCHAR(255),
sell VARCHAR(255),
price VARCHAR(125)
);
INSERT INTO goodbai VALUES(1,"http://127.0.0.1:3000/img/allproduct/10.png","后月白茶 2018头春高山乔木 200克/饼","199.00 包邮");
INSERT INTO goodbai VALUES(2,"http://127.0.0.1:3000/img/allproduct/12.png","后月白茶 2018南糯古树头春 200克/饼","399.00 包邮");
INSERT INTO goodbai VALUES(3,"http://127.0.0.1:3000/img/allproduct/7.png","后月白茶 2018年勐海高山大树头春 60克/袋","60.00 包邮");
INSERT INTO goodbai VALUES(4,"http://127.0.0.1:3000/img/allproduct/33.png","后月2018勐海古雅 勐海白茶 白茶357克饼","299.00 包邮");






#7.半价样品数据
CREATE TABLE goodsbanjia(
id INT PRIMARY KEY,
img VARCHAR(255),
sell VARCHAR(255),
price VARCHAR(125)
);
INSERT INTO goodsbanjia VALUES(1,"http://127.0.0.1:3000/img/bjyp/1.png","后月 茶样促销组合装 生熟红白 普洱茶样 半价","55.00 包邮");
INSERT INTO goodsbanjia VALUES(2,"http://127.0.0.1:3000/img/bjyp/2.png","2018年南糯山古树晒红、勐海高山大树白茶——春味红白自取 头春 茶样","29.98");
INSERT INTO goodsbanjia VALUES(3,"http://127.0.0.1:3000/img/bjyp/3.png","2018年勐海高山大树晒青、南糯山古树晒青——春味双晒青自取 头春 茶样","29.98");
INSERT INTO goodsbanjia VALUES(4,"http://127.0.0.1:3000/img/bjyp/4.png","【半价样品】后月2018年勐海高山白茶 大树 头春","9.99");
INSERT INTO goodsbanjia VALUES(5,"http://127.0.0.1:3000/img/allproduct/26.png","【半价样品】2018年南糯山晒青 古树 头春 大树纯料","19.99");
INSERT INTO goodsbanjia VALUES(6,"http://127.0.0.1:3000/img/allproduct/28.png","【半价样品】2018年南糯山古树晒红 头春 纯料","19.99");
INSERT INTO goodsbanjia VALUES(7,"http://127.0.0.1:3000/img/allproduct/30.png","【半价样品】2018年勐海高山晒青 大树纯料 头春","9.99");
INSERT INTO goodsbanjia VALUES(8,"http://127.0.0.1:3000/img/allproduct/32.png","【半价样品】后月2018蘭饼 晒红红茶 品鉴级古树纯料晒红 20克/份","22.39");
INSERT INTO goodsbanjia VALUES(9,"http://127.0.0.1:3000/img/allproduct/35.png","【半价样品】后月第八款众筹生茶样品 20克/袋装","16.75");
INSERT INTO goodsbanjia VALUES(10,"http://127.0.0.1:3000/img/allproduct/44.png","【限时半价】领“我”回家，新年爆福","29.57 包邮");
INSERT INTO goodsbanjia VALUES(11,"http://127.0.0.1:3000/img/allproduct/46.png","后月2017年龙珠晒红样品 手工沱 红丝棉纸包装 20克／袋","10.00");
INSERT INTO goodsbanjia VALUES(12,"http://127.0.0.1:3000/img/allproduct/47.jpg","后月2017年第一批古树普洱熟茶样品 普洱茶 熟茶20克/包","15.88");
INSERT INTO goodsbanjia VALUES(13,"http://127.0.0.1:3000/img/allproduct/48.jpg","后月2017年第一批普洱熟茶样品 普洱茶 熟茶20克/包","22.32");
INSERT INTO goodsbanjia VALUES(14,"http://127.0.0.1:3000/img/allproduct/63.jpg","【半价取样】后月2017年众筹古树晒红茶样 171039","6.00");
INSERT INTO goodsbanjia VALUES(15,"http://127.0.0.1:3000/img/allproduct/64.jpg","【半价取样】后月2017年布朗山头春晒红茶样 171060","10.00");






#8.茶具礼盒数据
CREATE TABLE goodslihe(
id INT PRIMARY KEY,
img VARCHAR(255),
sell VARCHAR(255),
price VARCHAR(125)
);
INSERT INTO goodslihe VALUES(1,"http://127.0.0.1:3000/img/allproduct/1.png","后月存茶罐 红色陶瓷礼罐","160.00 包邮");
INSERT INTO goodslihe VALUES(2,"http://127.0.0.1:3000/img/allproduct/20.png","后月饼茶礼盒 2018最新款 畅销 200克/357克规格","30.00 包邮");
INSERT INTO goodslihe VALUES(3,"http://127.0.0.1:3000/img/allproduct/37.png","后月2017正红色单饼礼盒 礼盒包装 带手提袋礼盒 357克饼茶礼盒","39.00 包邮");
INSERT INTO goodslihe VALUES(4,"http://127.0.0.1:3000/img/allproduct/81.jpg","后月纯手工建水紫陶无底托斗笠盖碗 大号功夫茶具茶碗","399.00 包邮");
INSERT INTO goodslihe VALUES(5,"http://127.0.0.1:3000/img/allproduct/82.jpg","后月手绘青花陶瓷无底托盖碗大号功夫茶具茶碗","199.00 包邮");
INSERT INTO goodslihe VALUES(6,"http://127.0.0.1:3000/img/allproduct/83.jpg","后月手绘青花陶瓷品茗杯 茶碗 纯手工绘制每一个都独一无二","30.00");




#9.客服数据
CREATE TABLE helplist(
id INT PRIMARY KEY,
title   VARCHAR(10),
content VARCHAR(2048)
);
INSERT INTO helplist VALUES(1,"帮助中心","1、下完订单后在账户里看不见相关信息怎么办？您可能在后月古树茶有多个账户，建议您核实一下当时下订单的具体账户，如有疑问您可致电客服400-99-00001，帮您核查。2、网站显示有赠品为何下单后没有收到赠品？赠品的配送是和您的收货地址有关的，若您在浏览商品时用的地址非最终的收货地址，有可能出现下单后没有赠品的情况；您所在的地址是否支持赠品配送，请以结算页面的购物明细为准，谢谢。;");
INSERT INTO helplist VALUES(2,"买家须知","一.、红茶、普洱茶属农副产品，生产加工过程有些还没有完全工业化，同个别品种可能会有形状、松紧程度不同、包装印刷差别、瑕疵、遗漏内飞、内飞压反等等不规范，若有疑问，请咨询网站客服；二、本站所有产品都是本网站员工亲手实拍，因色温、灯光器等、显示关系，可能会造成颜色上稍有差异，敬请以实物为准；三、本站为后月品牌官方网站，保证您以最优质的价格买到正品后月茶品，本网站承诺绝无假货，欢迎广大饮茶爱好者监督；四、本站茶品运费由买家承担，运费每次购物10元封顶；购买前请与我们联系商量运输方式和运输费用，以便为您节省开支。 五、茶品订购流程：六、后月网站交易条款1、 后月网站和您之间的契约后月网站将尽最大努力保证您所购商品与网站上公布的价格一致，但价目表和声明并不构成要约。后月网站有权在发现了其网站上显现的产品及订单的明显错误或缺货的情况下，单方面撤回任何承诺。(参见下面相关条款)。后月网站保留对产品订购的数量的限制权。 在下订单的同时，您也同时承认了您拥有购买这些产品的权利能力和行为能力，并且将您对您在订单中提供的所有信息的真实性负责。2、 价格变化和缺货产品的价格和可获性都在后月网站站上指明。这类信息将随时更改且不发任何通知。商品的价格都为未含税价格，如须开据发票，请与客服人员联系，另加5%的税收金额。送货费将另外结算，费用根据您选择的送货方式的不同而异。如果发生了意外情况，在确认了您的订单后，由于供应商提价，税额变化引起的价格变化，或是由于网站的错误等造成商品价格变化，您有权取消您的订单，并希望您能及时通过电子邮件或电话通知后月网站客户服务部。您所订购的商品，如果发生缺货，您有权取消定单。3、 发货后月网站将会把产品送到您所指定的送货地址。所有在后月网站站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。4、 条款的修正这些交易条件的条款适用于后月网站为您提供的产品销售服务。这些条款将有可能不时的被修正。任何修正条款的发生，后月网站都将会及时公布。5、 条款的可执行性如果出于任何原因，这些条款及其条件的部分不能得以执行，其他条款及其条件的有效性将不受影响。6、适用的法律和管辖权您和后月网站之间的契约将适用中华人民共和国的法律，所有的争端将诉诸于后月网站所在地的人民法院。请注意: 为了您尽快收到货品，请仔细准确填写收货人信息，并及时付款，付款完毕后请联系客服告知汇款详情。");
INSERT INTO helplist VALUES(3,"付款方式","一、在线付款（电脑端）1、微信扫码支付。用户购物时，选择“支付方式”为“微信扫码支付”，在提交订单后，系统会自动生成一个由微信系统提供的付款二维码，，打开微信用“扫一扫”功能进行扫描并支付。2、支付宝支付。用户购物时，选择“支付方式”为“支付宝支付”，在提交订单后，点击付款按钮，系统会自动跳转至支付宝付款页面进行支付。二、在线付款（手机端）1、微信支付。用户购物时，选择“支付方式”为“微信支付”，在提交订单后，系统会自动调取由微信系统提供的支付窗口，根据提示操作即可完成支付。2、支付宝支付。（微信内不适用）用户购物时，选择“支付方式”为“支付宝支付”，在提交订单后，点击付款按钮，系统会自动跳转至支付宝付款页面进行支付。注意：下单、付款过程中有任何问题，请及时与客服联系。客服微信：ynhouyue，电话：15393936363");
INSERT INTO helplist VALUES(4,"配送说明及费用","后月官网配送方式默认发 申通快递 ，同时也支持顺丰速运、德邦物流、天地华宇物流及其他物流运输方式。 一、费用及价格 1、后月网站 ，发申通快递；2、客户可在后月提供的发货方式中自行选择发货方式，选择顺丰、EMS等方式需补差价；3、大宗购买客户，默认推荐物流方式，具体可于下单前与客服联系。二、配送时效说明 1、后月网站茶品、茶具由云南省西双版纳州勐海县发出，路途遥远，快递一般3-5日抵达，偏远区域顺延1-2天；2、如选择物流、汽运等其他方式，一般5-7日抵达，偏远区域顺延1-3天。客服联系 微信：ynhouyue  电话：15393936363");
INSERT INTO helplist VALUES(5,"15天包退换","一、无条件退货 （1）“凡在”网站上购买过的商品，只要您不满意，都可以在收到商品15天内无条件办理退换货，但必须保证退换的商品（须包装完整）是后月网站发出的原版商品。（2）如果是因商品破损或商品品质问题（如霉变---因普洱茶是农副产品，如果压制未干燥透，则可能发生老变现象），退/换货产生的所有费用由我们承担。二、多种支付方式 电脑端和手机端均可支付宝，微信支付   注意：退/换货的过程中有任何问题，请及时与客服联系。客服微信：houyue，电话：15393936363");
INSERT INTO helplist VALUES(6,"常见问题","问：我是第一次购买，请问应该怎么操作？
答：请查看买家须知说明
问：后月网所出售的茶叶和茶具产品会不会有假的？
答：请您放心，我们出售的茶叶和茶具都是我们后月品牌出品的产品，经过专门的检测，我们直接供货。我们提供的普洱茶全部都是正宗云南普洱茶，绝无假货，因为您无需浪费时间再就此求证。我们承诺，发现任何假的茶叶和茶具，我们将提供10倍的赔偿。
问：商品价格可以优惠吗？
答：本网站所售商品都是后月全国统一价，均为实价出售，因此请不要再还价。如果您购买量比较大，希望得到更多优惠请联系本站具体咨询。
问：如果购买多件商品运费怎么算？
答：购买多件只需按一件支付运费。如果您购买的是不同的茶品，请联系客服修改运费。
问：我付款后什么时候可以拿到货？
答：一般后月网的茶品都是现货，我们每天下午都发货。遇到特殊情况（比如缺货或货有质量问题）我会主动告知；建议使用快递，一般3～５天；平邮速度很慢，且问题较多，不推荐使用。
问：我能指定某一个时间时间，比如某天中午１２点前一定收到可以吗？
答：目前物流快递还不能达到这种服务标准，我们只能尽量备注，但不确保他们一定能做到。
问：对收货地址有什么要求吗？
答：一定要有能够联系到收件人的联系电话，（手机千万别关机），请尽量按以下格式：＿＿省＿＿市＿＿区（县）＿＿路＿＿号＿＿（单位或学校）＿＿收　联系电话：＿＿＿＿＿＿＿＿
");
INSERT INTO helplist VALUES(7,"联系我们","商品咨询或者其他问题需要联系我们，请在周一到周六9:00——20:00电话或者微信联系后月客服。
座机电话：0691-5510888
客服微信：ynhouyue
");



