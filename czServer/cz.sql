set names UTF8;
drop database if EXISTS cz;
create database cz charset=UTF8;
use cz;
-- 用户信息表
create table cz_user(
    uid int primary key auto_increment,  #用户ID
    region varchar(32),  #地区
    uname varchar(32), #用户昵称
    upwd varchar(32),  #密码
    email varchar(64),  #邮箱
    phone varchar(16),   #手机号码
    username varchar(32),  #姓名
    gender varchar(4),  #性别
    portrait varchar(128)  #头像图片路径
);

/*********商品分类 *******/
CREATE  TABLE cz_sort(
    sid INT PRIMARY KEY AUTO_INCREMENT ,
    fname VARCHAR (8)
);

-- 在售商品
CREATE  TABLE cz_article(
    fid INT PRIMARY KEY AUTO_INCREMENT, #编号
    fname VARCHAR (32),  #手机名称
    subtitle VARCHAR(32),  #子标题
    colour  VARCHAR(16),   #颜色
    spec VARCHAR(16),   #规格
    price INT, #价格
    state VARCHAR(32), #服务说明
    imgage VARCHAR(64),  #图片路径
    sort INT (8),    #商品分类
    FOREIGN KEY(sort) REFERENCES cz_sort(sid)
);


/**********插入分类**********/
INSERT INTO cz_sort VALUES(NULL ,'手机');
INSERT INTO cz_sort VALUES(NULL ,'耳机');
INSERT INTO cz_sort VALUES(NULL ,'TNT');
INSERT INTO cz_sort VALUES(NULL ,'手机壳');

/******首页轮播图商品*******/ 
CREATE TABLE cz_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT ,    #商品id
    img VARCHAR (64),   #图片路径
    title VARCHAR (32)  #图片说明
);

/******首页轮播图下面的四张图**/ 
CREATE TABLE cz_index_11(
    cid INT PRIMARY KEY AUTO_INCREMENT ,
    img VARCHAR (64),
    title VARCHAR (16)
);

/************热门商品列表的第一张图*************/
CREATE  TABLE cz_index(
    cid INT PRIMARY KEY AUTO_INCREMENT ,
    title VARCHAR(16),  #商品标题
    img VARCHAR (32)    #图片的路径  
);

/********************插入热门商品列表第一张图****************************/
INSERT INTO cz_index VALUES(NULL,'是下一代手机，更是下一代电脑','index/first/66.webp');
INSERT INTO cz_index VALUES(NULL,'欢迎使用下一代电脑','index/first/77.webp');
INSERT INTO cz_index VALUES(NULL,'精品配件，限时直降','index/first/88.webp');
INSERT INTO cz_index VALUES(NULL,'两面都有好故事','index/first/99.webp');



/******插入首页轮播图下面的四张图**/ 
INSERT  INTO cz_index_11 VALUES(NULL ,'index/first/11.webp','2020坚果新品发布会');
INSERT  INTO cz_index_11 VALUES(NULL ,'index/first/22.webp','教育专区');
INSERT  INTO cz_index_11 VALUES(NULL ,'index/first/33.webp','地平线8号背包');
INSERT  INTO cz_index_11 VALUES(NULL ,'index/first/44.webp','精选好物');

/*****插入用户信息数据*****/
insert into cz_user values(null,'中国','zhangsan',123456,'1355858@126.com',18584844881,'张三','男',"img/portrait/动漫1.jpg");
insert into cz_user values(null,'中国','东东',123456,'1355858@126.com',18584844881,'张东','男',"img/portrait/动漫2.jpg");
insert into cz_user values(null,'中国','亮亮',123456,'1355858@126.com',18584844881,'成亮','男',"img/portrait/动漫3.jpg");
insert into cz_user values(null,'中国','涛桑',123456,'1355858@126.com',18584844881,'程涛','男',"img/portrait/动漫4.jpg");

/****插入商品数据****/
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','8G+128G',2699,'满 88 元包邮','img/phone/img15.webp',1);
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','8G+256G',2599,'满 88 元包邮','img/phone/img15.webp',1);
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','16G+512G',4999,'满 88 元包邮','img/phone/img15.webp',1);
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','松绿色','8G+128G',2699,'满 88 元包邮','img/phone/img13.webp',1);
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','松绿色','12+256G',2999,'满 88 元包邮','img/phone/img13.webp',1);
INSERT INTO cz_article VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','纯白色光阴特别版','16G+512G',4999,'满 88 元包邮','img/phone/img14.webp',1);
INSERT INTO cz_article VALUES(NULL ,'Smartisan 真无线蓝牙耳机 Pro','通话降噪 全新升级','白色',NULL,129,'满 88 元包邮','img/bluetooth/11.webp',2);
INSERT INTO cz_article VALUES(NULL ,'Smartisan 真无线蓝牙耳机（抖音文创限量款)','抖音文创限量版','黑色',NULL,'299.00','满 99 元包邮','img/bluetooth/22.webp',2);
INSERT INTO cz_article VALUES(NULL ,'Smartisan 真无线TWS蓝牙耳机','智能配对 开盖即连','白色',NULL,'99.00','满 88 元包邮','img/bluetooth/33.webp',2);
INSERT INTO cz_article VALUES(NULL ,'Smartisan 颈挂蓝牙耳机','“圈铁一体代表作”','绿色',NULL,'199.00','满 88 元包邮','img/bluetooth/44.webp',2);
INSERT INTO cz_article VALUES(NULL ,'Smartisan 颈挂蓝牙耳机','“圈铁一体代表作”','白色',NULL,'89.00','满 88 元包邮','img/bluetooth/55.webp',2);
insert into cz_article values(null,'Smartisan 手机立式扩展坞','连屏幕，连外设，手机拓展一步到位',NULL,NULL,299.00,'满 88 元包邮','img/tnt-product/img16.webp',3);
insert into cz_article values(null,'Smartisan TNT go','欢迎使用下一代电脑',NULL,'有线版',1199.00,'满 88 元包邮','img/tnt-product/img12.webp',3);
insert into cz_article values(null,'Smartisan TNT 大满足套装','下一代手机，下一代电脑',NULL,NULL,3999.00,'满 88 元包邮','img/tnt-product/img13.webp',3);
insert into cz_article values(null,'Smartisan 手机支架','立得住，放的稳',NULL,NULL,39.00,'满 88 元包邮','img/tnt-product/img14.webp',3);
insert into cz_article values(null,'Smartisan 智能手写笔','六月配件直降',NULL,NULL,199.00,'满 88 元包邮','img/tnt-product/img15.webp',3);
INSERT INTO cz_article VALUES(NULL ,'坚果 R2 足迹系列保护套','7种主题随机发货',NULL ,'盲盒设计 7款主题随机发货',59.00,'满 88 元包邮','img/phone-shell/11.webp',4);
INSERT INTO cz_article VALUES(NULL ,'坚果 R2 足迹系列保护套','7种主题随机发货',NULL ,'盲盒设计 7款主题随机发货',59.00,'满 88 元包邮','img/phone-shell/44.webp',4);
INSERT INTO cz_article VALUES(NULL ,'坚果 R2 足迹系列保护套 3M 开始销售透明胶带','为了那些改变人类足迹的进程',NULL ,'3M 开始销售透明胶带',29.00,'满 88 元包邮','img/phone-shell/22.webp',4);
INSERT INTO cz_article VALUES(NULL ,'坚果 R2 足迹系列保护套 3M 开始销售透明胶带','为了那些改变人类足迹的进程',NULL ,'3M 开始销售透明胶带',29.00,'满 88 元包邮','img/phone-shell/55.webp',4);
INSERT INTO cz_article VALUES(NULL ,'坚果 R2 足迹系列保护套 圆珠笔的改进者出生','为了那些改变人类足迹的进程',NULL ,'圆珠笔的改进者出生',59.00,'满 88 元包邮','img/phone-shell/33.webp',4);
insert into cz_article values(null,'Smartisan TNT go','欢迎使用下一代电脑',NULL,'无线版，含Smartisan 智能手写笔',1699.00,'满 88 元包邮','img/tnt-product/17.webp',3);
INSERT INTO cz_article VALUES(NULL, 'Smartisan TNT 大满足套装', '下一代手机，下一代电脑', NULL, '坚果 R2（12+256） + TNT go（无线版套装，含笔、扩展坞）', '5199.00', '满 88 元包邮', 'img/tnt-product/18.webp', 3);
INSERT INTO cz_article VALUES(NULL, '坚果彩虹数据线', '七彩配色随机发货，为生活增添一份小小惊喜', NULL, '1 条装', '9.90', '数据线颜色随机发货，不支持因颜色喜好问题的更换', 'img/phone-shell/66.webp', 4);
INSERT INTO cz_article VALUES(NULL, 'Smartisan 多功能数据线（USB 3.2 Gen 2）', '高清投屏，高速传输', '', '灰色', '39.00', '满 88 元包邮', 'img/phone-shell/77.webp', 4);
INSERT INTO cz_article VALUES(NULL, '坚果 R2 足迹系列保护套 正电子的发现者出生', '为了那些改变人类足迹的进程', NULL, '正电子的发现者出生', '59.00', '满 88 元包邮', 'img/phone-shell/88.webp', 4);
INSERT INTO cz_article VALUES(NULL, '足迹保护套 克里斯蒂安·多普勒出生 for iPhone 11', '公益宝贝', NULL, '克里斯蒂安·多普勒出生 for iPhone 11', '29.00', '满 88 元包邮', 'img/phone-shell/99.webp', 4);
INSERT INTO cz_article VALUES(NULL, '足迹保护套 莱卡成为第一只进入地球轨道的动物 for iPhone 11', '公益宝贝', NULL, '官方标配', '29.00', '满 88 元包邮', 'img/phone-shell/100.webp', 4);
INSERT INTO cz_article VALUES(NULL, '坚果 R2 足迹系列保护套 联合国通过《儿童权利宣言》', '为了那些改变人类足迹的进程', NULL, '联合国通过《儿童权利宣言》', '29.00', '满 88 元包邮', 'img/phone-shell/101.webp', 4);
INSERT INTO cz_article VALUES(NULL, '足迹保护套 人类首次公开使用乙醚 for iPhone 11', '公益宝贝', NULL, '人类首次公开使用乙醚 for iPhone 11', '29.00', '满 88 元包邮', 'img/phone-shell/102.webp', 4);
INSERT INTO cz_article VALUES(NULL, '坚果 QuickCharge 4+ 快速充电器', '全面兼容的 18W 快速充电', NULL, NULL, '59.00', '此款充电器为 Type-C 接口', 'img/phone-shell/103.webp', 4);
INSERT INTO cz_article VALUES(NULL, 'Smartisan 原装快充充电器 18W', '18W 安全快充', NULL, NULL, '49.00', '满 88 元包邮', 'img/phone-shell/104.webp', 4);





/**插入轮播图***/
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img13.webp','大力智能作业灯');
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img14.webp','锤子商城会员日');
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img15.webp','寓教渔人，快乐成长');


