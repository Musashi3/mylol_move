#创建轮播图列表
CREATE TABLE lol_banner(
	id INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255)
);
INSERT INTO lol_banner VALUES(null,"http://127.0.0.1:3000/img/banner/1.jpg");
INSERT INTO lol_banner VALUES(null,"http://127.0.0.1:3000/img/banner/2.jpg");
INSERT INTO lol_banner VALUES(null,"http://127.0.0.1:3000/img/banner/3.jpg");
INSERT INTO lol_banner VALUES(null,"http://127.0.0.1:3000/img/banner/4.jpg");
#创建展示列表
CREATE TABLE lol_show(
	id INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	title VARCHAR(255),
	price INT,
	classify VARCHAR(255),
	pid INT
);
INSERT INTO lol_show VALUES(null,"http://127.0.0.1:3000/img/show/show_1.jpg","星之守护者套装",255,"clay",12);
INSERT INTO lol_show VALUES(null,"http://127.0.0.1:3000/img/show/show_2.jpg","开心魄罗公仔",180 "plush",5);
INSERT INTO lol_show VALUES(null,"http://127.0.0.1:3000/img/show/show_3.jpg","惊喜福袋礼包",188 "clay",13);
INSERT INTO lol_show VALUES(null,"http://127.0.0.1:3000/img/show/show_4.jpg","冰霜烈焰 提伯斯熊",150,"plush",4);
#创建手办列表
CREATE TABLE lol_clay(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	img_url VARCHAR(255),
	price INT
);
INSERT INTO lol_clay VALUES(null,"武器大师 贾克斯手办","http://127.0.0.1:3000/img/clay/1.jpg",180);
INSERT INTO lol_clay VALUES(null,"爆破鬼才 吉格斯雕塑","http://127.0.0.1:3000/img/clay/2.jpg",180);
INSERT INTO lol_clay VALUES(null,"虚空掠夺者 卡兹克手办","http://127.0.0.1:3000/img/clay/3.jpg",180);
INSERT INTO lol_clay VALUES(null,"曙光女神 蕾欧娜手办","http://127.0.0.1:3000/img/clay/4.jpg",180);
INSERT INTO lol_clay VALUES(null,"蛮族之王 泰达米尔手办","http://127.0.0.1:3000/img/clay/5.jpg",180);
INSERT INTO lol_clay VALUES(null,"海洋之灾 普朗克手办","http://127.0.0.1:3000/img/clay/6.jpg",180);
INSERT INTO lol_clay VALUES(null,"虚空恐惧 科加斯手办","http://127.0.0.1:3000/img/clay/7.jpg",180);
INSERT INTO lol_clay VALUES(null,"布隆手办","http://127.0.0.1:3000/img/clay/8.jpg",150);
INSERT INTO lol_clay VALUES(null,"大发明家 黑默丁格手办","http://127.0.0.1:3000/img/clay/9.jpg",180);
INSERT INTO lol_clay VALUES(null,"圣锤之毅 波比手办","http://127.0.0.1:3000/img/clay/10.jpg",180);
INSERT INTO lol_clay VALUES(null,"KDA阿狸 手办","http://127.0.0.1:3000/img/clay/11.jpg",180);
#创建衣服列表
CREATE TABLE lol_clothes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	img_url VARCHAR(255),
	price INT
);
INSERT INTO lol_clothes VALUES(null,"蕾欧娜T恤","http://127.0.0.1:3000/img/clothes/1.jpg",150);
INSERT INTO lol_clothes VALUES(null,"菲奥娜T恤","http://127.0.0.1:3000/img/clothes/2.jpg",150);
INSERT INTO lol_clothes VALUES(null,"总决赛应援服","http://127.0.0.1:3000/img/clothes/3.jpg",288);
INSERT INTO lol_clothes VALUES(null,"龙的传人卫衣","http://127.0.0.1:3000/img/clothes/4.jpg",288);
INSERT INTO lol_clothes VALUES(null,"世界赛T恤","http://127.0.0.1:3000/img/clothes/5.jpg",150);
INSERT INTO lol_clothes VALUES(null,"银河魔装机神T恤","http://127.0.0.1:3000/img/clothes/6.jpg",150);
INSERT INTO lol_clothes VALUES(null,"阿狸T恤","http://127.0.0.1:3000/img/clothes/7.jpg",150);
INSERT INTO lol_clothes VALUES(null,"魄罗毛绒衫(红色限定款)","http://127.0.0.1:3000/img/clothes/8.jpg",299);
INSERT INTO lol_clothes VALUES(null,"纳尔T恤","http://127.0.0.1:3000/img/clothes/9.jpg",150);
INSERT INTO lol_clothes VALUES(null,"RNG战衣","http://127.0.0.1:3000/img/clothes/10.jpg",359);
INSERT INTO lol_clothes VALUES(null,"LPL赛区应援帽","http://127.0.0.1:3000/img/clothes/11.jpg",120);
#创建公仔列表
CREATE TABLE lol_plush(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	img_url VARCHAR(255),
	price INT
);
INSERT INTO lol_plush VALUE(null,"提莫公仔","http://127.0.0.1:3000/img/plush/1.jpg",150);
INSERT INTO lol_plush VALUE(null,"魄罗王公仔","http://127.0.0.1:3000/img/plush/2.jpg",150);
INSERT INTO lol_plush VALUE(null,"开心魄罗套装","http://127.0.0.1:3000/img/plush/3.jpg",368);
INSERT INTO lol_plush VALUE(null,"冰霜烈焰 提伯斯熊","http://127.0.0.1:3000/img/plush/4.jpg",150);
INSERT INTO lol_plush VALUE(null,"开心魄罗","http://127.0.0.1:3000/img/plush/5.jpg",150);
INSERT INTO lol_plush VALUE(null,"星之守护者 公仔","http://127.0.0.1:3000/img/plush/6.jpg",150);
INSERT INTO lol_plush VALUE(null,"雷恩加尔公仔","http://127.0.0.1:3000/img/plush/7.jpg",150);
INSERT INTO lol_plush VALUE(null,"海牛王 公仔","http://127.0.0.1:3000/img/plush/8.jpg",150);
INSERT INTO lol_plush VALUE(null,"提伯斯收纳袋","http://127.0.0.1:3000/img/plush/9.jpg",88);
INSERT INTO lol_plush VALUE(null,"星之守护者公仔套装","http://127.0.0.1:3000/img/plush/10.jpg",368);
INSERT INTO lol_plush VALUE(null,"睡衣魄罗套装","http://127.0.0.1:3000/img/plush/11.jpg",368);
#创建购物车列表
CREATE TABLE lol_buycar(
	id INT PRIMARY KEY AUTO_INCREMENT,
	uid INT,
	title VARCHAR(255),
	img_url VARCHAR(255),
	price INT,
	count INT
);
INSERT INTO lol_buycar VALUES(null,1,"睡衣魄罗套装","http://127.0.0.1:3000/img/plush/11.jpg",368,1);
INSERT INTO lol_buycar VALUES(null,1,"提莫公仔","http://127.0.0.1:3000/img/plush/1.jpg",150,1);
INSERT INTO lol_buycar VALUES(null,1,"蕾欧娜T恤","http://127.0.0.1:3000/img/clothes/1.jpg",180,1);
#创建用户列表
CREATE TABLE lol_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(255),
    upwd VARCHAR(128),
    email VARCHAR(255),
    phone VARCHAR(11)
);
INSERT INTO lol_user VALUES(null,"Musashi",md5("123"),"Musashi@163.com","18111111111");