set names UTF8;
drop database if EXISTS cz;
create database cz charset=UTF8;
use cz;
-- 用户信息表
create table cz_user(
    uid int primary key auto_increment,  #用户ID
    region VARCHAR (32),  #地区
    uname varchar(32), #用户昵称
    upwd varchar(32),  #密码
    email varchar(64),  #邮箱
    phone varchar(16),   #手机号码
    username varchar(32),  #姓名
    gender varchar(4),  #性别
    portrait varchar(128)  #头像图片路径
);
insert into cz_user values(null,'中国','zhangsan',123456,'1355858@126.com',18584844881,'张三','男',"img/portrait/动漫1.jpg");
insert into cz_user values(null,'中国','东东',123456,'1355858@126.com',18584844881,'张东','男',"img/portrait/动漫2.jpg");
insert into cz_user values(null,'中国','亮亮',123456,'1355858@126.com',18584844881,'成亮','男',"img/portrait/动漫3.jpg");
insert into cz_user values(null,'中国','涛桑',123456,'1355858@126.com',18584844881,'程涛','男',"img/portrait/动漫4.jpg");

-- 在售手机
create table cz_mobile_phone(
    fid int primary key auto_increment, #编号
    fname varchar(32),  #手机名称
    subtitle VARCHAR (32),  #子标题
    colour  VARCHAR (16),   #颜色
    spec VARCHAR(16),   #规格
    price   DECIMAL (10,2),  #价格
    explaia VARCHAR(32),  #服务说明
    imgages VARCHAR (64)  #图片路径
);

/****插入手机数据****/
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','8G+128G',2699,'满 88 元包邮','img/phone/img15.webp');
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','8G+256G',2599,'满 88 元包邮','img/phone/img15.webp');
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','浅黑色','16G+512G',4999,'满 88 元包邮','img/phone/img15.webp');
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','松绿色','8G+128G',2699,'满 88 元包邮','img/phone/img13.webp');
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','松绿色','12+256G',2999,'满 88 元包邮','img/phone/img13.webp');
INSERT INTO cz_mobile_phone VALUES(NULL,'坚果R2','是下一代手机，更是下一代电脑','纯白色光阴特别版','16G+512G',4999,'满 88 元包邮','img/phone/img14.webp');








/******首页轮播图商品**/ 
CREATE TABLE cz_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT ,    #商品id
    img VARCHAR (64),   #图片路径
    title VARCHAR (32)  #图片说明
);

/**插入轮播图***/
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img13.webp','大力智能作业灯');
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img14.webp','锤子商城会员日');
INSERT INTO cz_index_carousel VALUES(null,'img/slideshow/img15.webp','寓教渔人，快乐成长');

-- 在售TNT
create table cz_TNT(
    fid int primary key auto_increment, #编号
    fproduct varchar(128), #商品图片
    fname varchar(32),   #商品名称
    ftitle varchar(32), #子标题
    fprice decimal(10,2) #在售价格
);
insert into cz_TNT values(null,'img/tnt-product/img16.webp','Smartisan 手机立式扩展坞','连屏幕，连外设，手机拓展一步到位',299.00);
insert into cz_TNT values(null,'img/tnt-product/img12.webp','Smartisan TNT go','欢迎使用下一代电脑',1199.00);
insert into cz_TNT values(null,'img/tnt-product/img13.webp','Smartisan TNT 大满足套装','下一代手机，下一代电脑',3999.00);
insert into cz_TNT values(null,'img/tnt-product/img14.webp','Smartisan 手机支架','立得住，放的稳',39.00);
insert into cz_TNT values(null,'img/tnt-product/img15.webp','Smartisan 智能手写笔','六月配件直降',199.00);


