/*
Navicat MySQL Data Transfer

Source Server         : demo
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : xianyu

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-05-09 14:26:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shName` varchar(255) DEFAULT NULL,
  `diqu` varchar(255) DEFAULT NULL,
  `addressName` varchar(255) DEFAULT NULL,
  `guHua` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKBB979BF4E374451C` (`userId`),
  CONSTRAINT `FKBB979BF4E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `canshuUrl` varchar(255) DEFAULT NULL,
  `yuanjia` float DEFAULT NULL,
  `xianjia` float DEFAULT NULL,
  `yunfei` float DEFAULT NULL,
  `miaoshu` longtext,
  `address` varchar(255) DEFAULT NULL,
  `zhenshiname` varchar(255) DEFAULT NULL,
  `oldOrNew` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lanMuId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1EDE370D903AE532` (`lanMuId`),
  KEY `FK1EDE370DE374451C` (`userId`),
  CONSTRAINT `FK1EDE370D903AE532` FOREIGN KEY (`lanMuId`) REFERENCES `lanmu` (`id`),
  CONSTRAINT `FK1EDE370DE374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('7', '手机', '1462773215248.png', '1462773215249.png', '3200', '1600', '10', '		白色16GB内存，3GB运行内存！没拆过机，没有暗病，官网抢购的，现在官网卖4000！只限同城交易，支持面交！						\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 13:53:35', '13000000000', '2', '1', '1');
INSERT INTO `commodity` VALUES ('8', '三星s7 edg', '1462773374096.jpg', '1462773374096.jpg', '5000', '4300', '0', '三星s7 edge 。帅气版。铂光金。有标志就是好看啦。无磕碰。无刮擦。无拆修。配件999新。手机999新。刀客勿扰。刀客勿扰。刀客勿扰。诚心价出售。刀者全家死光，坟前蹦迪，骨灰拌饭，祖坟诈尸。就是这么狠。所以大家嘴巴积点德。跑火车勿扰。最低价了。真真的好机。						\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 13:56:14', '13000000000', '2', '1', '1');
INSERT INTO `commodity` VALUES ('9', '9成新的笔记本', '1462773541265.jpg', '1462773541265.jpg', '3700', '668', '20', '因为学姐毕业了，帮她转让台东芝笔记本，本本用了两年不到，保养得很好，9成新。无拆无修，运行流畅，办公，上网，看电影都OK，游戏体验也相当给力！配件齐全，鼠标，鼠标垫，耳机，电脑包都有。基本配置是酷睿双核，2G内存，160G硬盘，15寸大屏。可以见面看货，满意再买。不方便的话也可以货到付款。本人比较爽快，看中直接联系就行！							\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 13:59:01', '13000000000', '3', '1', '1');
INSERT INTO `commodity` VALUES ('10', '宏碁e1-571笔记本', '1462773725908.jpg', '1462773725908.jpg', '4000', '2050', '20', '双硬盘双显卡，15.6寸，赠送外接显卡卡座，可以插台式机显卡，性能强劲，没有任何问题，整机正常，没暗病，大刀勿扰。							\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 14:02:05', '13000000000', '3', '1', '1');
INSERT INTO `commodity` VALUES ('11', '相机 处理 换也行', '1462773877434.jpg', '1462773877437.jpg', '1000', '399', '10', '爱国者T80 399  处理  置换也可以						\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 14:04:37', '13000000000', '4', '1', '1');
INSERT INTO `commodity` VALUES ('12', '蓝色加绒外套', '1462773975212.jpg', '1462773975212.jpg', '60', '20', '10', '全新，6个月左右可以穿						', '郑州轻工业', '张三', '0', '2016-05-09 14:06:15', '13000000000', '16', '1', '1');
INSERT INTO `commodity` VALUES ('13', 'Carter\'s3件装混色短袖', '1462774081008.jpg', '1462774081011.jpg', '125', '110', '0', '		我买73cm的，买小了，我宝宝比较多肉肉，全新的没穿没洗～			', '郑州轻工业', '张三', '0', '2016-05-09 14:08:01', '13000000000', '17', '1', '1');
INSERT INTO `commodity` VALUES ('14', '浮雕软胶软积木', '1462774179006.jpg', '1462774179007.jpg', '194', '155', '10', '无咬痕，无损伤，99新，孩子不喜欢。无缺块，有原包装，商标牌都在。包邮。同城自提可议价					', '郑州轻工业', '张三', '0', '2016-05-09 14:09:39', '13000000000', '18', '1', '1');
INSERT INTO `commodity` VALUES ('15', '优质木制床铺', '1462774301860.jpg', '1462774301863.jpg', '800', '700', '0', '专业定做教学设备、铁床、架子床、课桌椅、餐桌椅、阶梯教室排椅、讲桌、办公家具的生产厂家。是集教学设备、铁床、公寓床、架子床、课桌椅、餐桌椅、讲桌的生产、科研、生产、销售、服务为一体，拥有业界先进的生产加工设备。联系方式：吴18588946117				', '郑州轻工业', '张三', '0', '2016-05-09 14:11:41', '13000000000', '19', '1', '1');
INSERT INTO `commodity` VALUES ('16', '四件套', '1462774401353.jpg', '1462774401354.jpg', '300', '230', '10', '四件套，床单+被套＋两个枕套，海门三星叠石桥工厂店里的，纯棉，很舒服，自家也用的，欢迎咨询^_^						', '郑州轻工业', '张三', '0', '2016-05-09 14:13:21', '13000000000', '20', '1', '1');
INSERT INTO `commodity` VALUES ('17', '浮雕花纹玻璃沙拉碗6件套 ', '1462774487288.jpg', '1462774487288.jpg', '89', '40', '10', '加厚玻璃，使用放心，居家必备，经济实用，价格优惠，从速拍单！本店内所以商品可以混合拼凑下单，并附送赠品，价格私聊，欢迎垂询！					', '郑州轻工业', '张三', '0', '2016-05-09 14:14:47', '13000000000', '21', '1', '1');
INSERT INTO `commodity` VALUES ('18', '超璐家庭空气净化器', '1462774586855.jpg', '1462774586855.jpg', '600', '368', '20', '			全新未开封超璐，空气净化器一台 没开封颜色不知道，看运气吧！扫描条形码上是银色，那应该就是银色的。品牌:超璐型号:CL-101A噪音:20-30dB控制方式:按键式滤网类型:复合滤网货号:CL-101A颜色分类:暗金,白色,酒红色,紫色,粉红色风量:300立方米/小时适用面积:41㎡(含)-60㎡(含)功能:定时,除花粉,除甲醛,除烟除尘,杀菌工作原理:活性炭,负离子,HEPA技术,光触媒,其他空气净化产品类别:空气净化器风量::51-300 立方米/小时电源方式:交流电适用对象:家用			', '郑州轻工业', '张三', '0', '2016-05-09 14:16:26', '13000000000', '22', '1', '1');
INSERT INTO `commodity` VALUES ('19', '孩视宝台灯', '1462774685113.jpg', '1462774685114.jpg', '150', '50', '10', '	用过两次，搬家不方便携带，沃尔玛购买，发票没啦，不议价，不包邮，带刀的就不要问了！							\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 14:18:05', '13000000000', '23', '1', '1');
INSERT INTO `commodity` VALUES ('20', '全新卓朗2层多功能电蒸锅家用', '1462774799570.jpg', '1462774799571.jpg', '299', '149', '10', '全新，买来一次都没用过，可定时。嘉兴市区可当面交易。								\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 14:19:59', '13000000000', '24', '1', '1');
INSERT INTO `commodity` VALUES ('21', '性感夜店女装抹胸连衣裙长款', '1462774905337.jpg', '1462774905338.jpg', '400', '200', '10', '2015春夏性感夜店女装抹胸连衣裙长款晚礼服宴会演出服，买来演出穿过两次，s码，上身效果极好，很显瘦和性感（闲置商品，实情描述，不退不换）								\r\n								', '郑州轻工业', '张三', '0', '2016-05-09 14:21:45', '13000000000', '25', '1', '1');

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shangJiLanMu` varchar(255) DEFAULT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `yijilm` varchar(255) DEFAULT NULL,
  `lanmuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK61FAD01903AE532` (`lanmuId`),
  CONSTRAINT `FK61FAD01903AE532` FOREIGN KEY (`lanmuId`) REFERENCES `lanmu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES ('1', '闲置数码', null, 'admin', '2016-04-22', null, null);
INSERT INTO `lanmu` VALUES ('2', '手机', null, 'admin', '2016-04-22', null, '1');
INSERT INTO `lanmu` VALUES ('3', '笔记本', null, 'admihn', '2016-04-22', null, '1');
INSERT INTO `lanmu` VALUES ('4', '相机', null, 'admin', '2016-04-22', null, '1');
INSERT INTO `lanmu` VALUES ('11', '闲置母婴', null, 'admin', '2016-05-09', null, null);
INSERT INTO `lanmu` VALUES ('12', '家居日用', null, 'admin', '2016-05-09', null, null);
INSERT INTO `lanmu` VALUES ('13', '影音家电', null, 'admin', '2016-05-09', null, null);
INSERT INTO `lanmu` VALUES ('14', '鞋服配饰', null, 'admin', '2016-05-09', null, null);
INSERT INTO `lanmu` VALUES ('15', '珠宝收藏', null, 'admin', '2016-05-09', null, null);
INSERT INTO `lanmu` VALUES ('16', '童装', null, 'admin', '2016-05-09', null, '11');
INSERT INTO `lanmu` VALUES ('17', '婴儿服', null, 'admin', '2016-05-09', null, '11');
INSERT INTO `lanmu` VALUES ('18', '玩具', null, 'admin', '2016-05-09', null, '11');
INSERT INTO `lanmu` VALUES ('19', '家具', null, 'admin', '2016-05-09', null, '12');
INSERT INTO `lanmu` VALUES ('20', '家纺', null, 'admin', '2016-05-09', null, '12');
INSERT INTO `lanmu` VALUES ('21', '日用', null, 'admin', '2016-05-09', null, '12');
INSERT INTO `lanmu` VALUES ('22', '大家电', null, 'admin', '2016-05-09', null, '13');
INSERT INTO `lanmu` VALUES ('23', '小家电', null, 'admin', '2016-05-09', null, '13');
INSERT INTO `lanmu` VALUES ('24', '料理机', null, 'admin', '2016-05-09', null, '13');
INSERT INTO `lanmu` VALUES ('25', '女装', null, 'admin', '2016-05-09', null, '14');
INSERT INTO `lanmu` VALUES ('26', '女鞋', null, 'admin', '2016-05-09', null, '14');
INSERT INTO `lanmu` VALUES ('27', '箱包', null, 'admin', '2016-05-09', null, '14');
INSERT INTO `lanmu` VALUES ('28', '珠宝', null, 'admin', '2016-05-09', null, '15');
INSERT INTO `lanmu` VALUES ('29', '饰品', null, 'admin', '2016-05-09', null, '15');
INSERT INTO `lanmu` VALUES ('30', '艺术收藏', null, 'admin', '2016-05-09', null, '15');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` longtext,
  `huifuStyle` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9C2397E740BDBFEA` (`commodityId`),
  KEY `FK9C2397E7E374451C` (`userId`),
  CONSTRAINT `FK9C2397E740BDBFEA` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`id`),
  CONSTRAINT `FK9C2397E7E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) DEFAULT NULL,
  `merMoney` float DEFAULT NULL,
  `zhuangtai` int(11) DEFAULT NULL,
  `zhifu` varchar(255) DEFAULT NULL,
  `peisong` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `kuaidi` varchar(255) DEFAULT NULL,
  `kuaididanhao` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8D444F0540BDBFEA` (`commodityId`),
  KEY `FK8D444F05FB341CF8` (`addressId`),
  KEY `FK8D444F05E374451C` (`userId`),
  CONSTRAINT `FK8D444F0540BDBFEA` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`id`),
  CONSTRAINT `FK8D444F05E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK8D444F05FB341CF8` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for tuijian
-- ----------------------------
DROP TABLE IF EXISTS `tuijian`;
CREATE TABLE `tuijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Adminname` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuijian
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `Admin` tinyint(1) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '张三', '13000000000', '0', '2016-04-22');
INSERT INTO `user` VALUES ('2', 'admin', 'admin', 'admin', '00000000000', '1', '2016-04-22');
