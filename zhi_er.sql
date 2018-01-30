/*
Navicat MySQL Data Transfer

Source Server         : 10.3.136.62
Source Server Version : 50714
Source Host           : 10.3.136.62:3306
Source Database       : zhi_er

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-30 19:26:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_in_order
-- ----------------------------
DROP TABLE IF EXISTS `address_in_order`;
CREATE TABLE `address_in_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relation` varchar(11) DEFAULT NULL,
  `localarea` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_in_order
-- ----------------------------
INSERT INTO `address_in_order` VALUES ('1', '123', '123', '123', '123', '123');
INSERT INTO `address_in_order` VALUES ('2', '1234', 'dadad', '13232489011', '广东 广州', 'qeadeaw');
INSERT INTO `address_in_order` VALUES ('3', '1234', 'bmm', '13232489011', '北京 北京', 'mbbme');
INSERT INTO `address_in_order` VALUES ('4', '1234', 'ccccc', '13232489011', '广东 广州', '23213213');
INSERT INTO `address_in_order` VALUES ('5', '1234', '2333', '13232489011', '天津 天津', '2312321');
INSERT INTO `address_in_order` VALUES ('6', '1234', 'dgsdg', '13232489011', '上海 上海', '11111111111');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `carousel_img` varchar(255) NOT NULL COMMENT '小图',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel_img_large` varchar(255) NOT NULL COMMENT '大图',
  `activity` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('./src/assets/j_act1.png,./src/assets/j_act3.png,./src./assets/j_act2.png', '1', './src/assets/j_act1.png', '流苏风情', '时尚达人必备元素');
INSERT INTO `carousel` VALUES ('./src/assets/j_act1.png,./src/assets/j_act3.png,./src./assets/j_act2.png', '2', './src/assets/j_act2.png', '简约成就经典', '冬日里的一抹白');
INSERT INTO `carousel` VALUES ('./src/assets/j_act1.png,./src/assets/j_act3.png,./src./assets/j_act2.png', '3', './src/assets/j_act3.png', '浪漫斗篷装', '奏响优雅冬日序曲');
INSERT INTO `carousel` VALUES ('./src/assets/j_act1.png,./src/assets/j_act3.png,./src./assets/j_act2.png', '4', './src/assets/j_act4.png', '好物遗珠', '不容错过的单品荟萃');

-- ----------------------------
-- Table structure for caution
-- ----------------------------
DROP TABLE IF EXISTS `caution`;
CREATE TABLE `caution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caution
-- ----------------------------
INSERT INTO `caution` VALUES ('1', '红包过期提醒', '888元新人红包来啦，有效期30天，还不快过来看看。', '2018-01-17 18:43:00');
INSERT INTO `caution` VALUES ('2', '红包没收提醒', '888元新人红包没收啦！！', '2018-01-22 18:43:00');

-- ----------------------------
-- Table structure for goods_data
-- ----------------------------
DROP TABLE IF EXISTS `goods_data`;
CREATE TABLE `goods_data` (
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_trademark` varchar(255) NOT NULL COMMENT '品牌名称',
  `title_name` varchar(255) NOT NULL COMMENT '标题名称',
  `size` varchar(12) NOT NULL COMMENT '码数',
  `sell_prices` float(10,0) NOT NULL COMMENT '原价',
  `sell_price` float(12,0) NOT NULL COMMENT '销售价格',
  `goods_info` varchar(255) NOT NULL COMMENT '商品信息',
  `normal_problem` varchar(255) NOT NULL COMMENT '常见问题',
  `goods_pto` varchar(255) NOT NULL COMMENT '商品图片',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(255) NOT NULL COMMENT '类型',
  `activity` varchar(255) NOT NULL COMMENT '按照活动分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_data
-- ----------------------------
INSERT INTO `goods_data` VALUES ('女士时尚潮流拼色女包', 'GUCCI', '经典款酒神燕子包', 'M码', '34000', '28900', '牛皮', '能否水洗', './src/assets/goodlist2.jpg', '3', '包袋', '简约成就经典');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'PRADA', 'MILANO普拉达女包', 'M码', '1488', '998', '貂皮', '能否水洗', './src/assets/goodlist3.jpg', '4', '包袋', '简约成就经典');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'COACH', '蔻驰单肩斜跨手提女', 'M码', '1588', '998', '貂皮', '能否水洗', './src/assets/goodlist4.jpg', '5', '包袋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', 'L码', '1288', '998', '貂皮', '能否水洗', './src/assets/goodlist5.jpg', '6', '包袋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/goodlist6.jpg', '7', '包袋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '321', '貂皮', '能否水洗', './src/assets/goodlist7.jpg', '8', '包袋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1288', '9981', '貂皮', '能否水洗', './src/assets/goodlist8.jpg', '9', '包袋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '123', '貂皮', '能否水洗', './src/assets/goodlist9.jpg', '10', '包袋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1119', '436', '貂皮', '能否水洗', './src/assets/goodlist10.jpg', '11', '包袋', '流苏风情');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1118', '987', '貂皮', '能否水洗', './src/assets/goodlist11.jpg', '12', '包袋', '简约成就经典');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1119', '432', '貂皮', '能否水洗', './src/assets/goodlist10.jpg', '13', '包袋', '流苏风情');
INSERT INTO `goods_data` VALUES ('女士时尚潮流拼接包', 'Dior', 'Dior2017夏季黑色羊皮经典手提包', '均码', '28999', '986', '羊皮', '能否水洗', 'https://img.alicdn.com/imgextra/i1/2010197355/TB2hRAgXwfHK1Jjy1zbXXahRFXa_!!2010197355.jpg_430x430q90.jpg', '38', '包袋', '全新专区');
INSERT INTO `goods_data` VALUES ('加长潮羽绒服', 'ONLY', '毛领直筒加长潮羽绒服女', '均码', '1119', '998', '貂皮', '能否水洗', './src/assets/girl1.jpg', '14', '女装', '流苏风情');
INSERT INTO `goods_data` VALUES ('刺绣宽松卫衣女', 'ONLY', '刺绣宽松卫衣女', '均码', '688', '349', '貂皮', '能否水洗', './src/assets/girl2.jpg', '15', '女装', '简约成就经典');
INSERT INTO `goods_data` VALUES ('廓形白色高领毛衣', '太平鸟', '插肩袖毛针织衫女', '均码', '599', '148', '纯棉', '能否水洗', './src/assets/girl3.jpg', '16', '女装', '流苏风情');
INSERT INTO `goods_data` VALUES ('2018春装卫衣女', '韩都衣舍', '长袖宽松拼接套头连帽潮', '均码', '1119', '998', '貂皮', '能否水洗', './src/assets/girl4.jpg', '17', '女装', '流苏风情');
INSERT INTO `goods_data` VALUES ('加长潮羽绒服', 'ONLY', '毛领直筒加长潮羽绒服女', '均码', '1119', '998', '貂皮', '能否水洗', './src/assets/girl1.jpg', '18', '女装', '流苏风情');
INSERT INTO `goods_data` VALUES ('刺绣宽松卫衣女', 'ONLY', '刺绣宽松卫衣女', '均码', '688', '349', '貂皮', '能否水洗', './src/assets/girl2.jpg', '19', '女装', '简约成就经典');
INSERT INTO `goods_data` VALUES ('廓形白色高领毛衣', '太平鸟', '插肩袖毛针织衫女', '均码', '599', '148', '纯棉', '能否水洗', './src/assets/girl3.jpg', '20', '女装', '流苏风情');
INSERT INTO `goods_data` VALUES ('女士时尚潮流拼色女包', 'COACH', '经典款酒神燕子包', 'M码', '1388', '1299', '100%PVC', '能否水洗', './src/assets/shoes.jpg', '21', '女鞋', '流苏风情');
INSERT INTO `goods_data` VALUES ('卡洛黛茜斜跨手提包', '卡洛黛茜', '购物即赠水星VIP大牌日', '均码', '1388', '998', 'PU皮', '能否水洗', './src/assets/shoes.jpg', '22', '女鞋', '流苏风情');
INSERT INTO `goods_data` VALUES ('女士时尚潮流拼色女包', 'GUCCI', '经典款酒神燕子包', 'M码', '34000', '28900', '牛皮', '能否水洗', './src/assets/shoes.jpg', '23', '女鞋', '简约成就经典');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'PRADA', 'MILANO普拉达女包', 'M码', '1488', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '24', '女鞋', '简约成就经典');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'COACH', '蔻驰单肩斜跨手提女', 'M码', '1588', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '25', '女鞋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', 'L码', '1288', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '26', '女鞋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '27', '女鞋', '浪漫斗篷装');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '28', '女鞋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1288', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '29', '女鞋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/shoes.jpg', '30', '女鞋', '好物遗珠');
INSERT INTO `goods_data` VALUES ('典雅气质项链女款锁骨链', '施华洛世奇', '女款锁骨链配饰情人节礼物', 'M码', '1388', '1190', '合金/镀银/镀金', '能否水洗', './src/assets/accessory.jpg', '31', '配饰', '流苏风情');
INSERT INTO `goods_data` VALUES ('翡拉拉安吉系列', 'Fellala翡拉拉', '长款衣链女秋冬配毛衣配饰女', '均码', '1388', '998', 'PU皮', '能否水洗', './src/assets/accessory1.jpg', '32', '配饰', '流苏风情');
INSERT INTO `goods_data` VALUES ('施华洛世奇元素水晶胸针', '施华洛世奇', '韩国奢华领针月亮胸花毛衣链配', 'M码', '34000', '28900', '牛皮', '能否水洗', './src/assets/accessory2.jpg', '33', '配饰', '简约成就经典');
INSERT INTO `goods_data` VALUES ('莉迪卡娜大衣胸针女', '莉迪卡娜', '胸花韩国配饰外套大衣时尚', 'M码', '1488', '368', '貂皮', '能否水洗', './src/assets/accessory3.jpg', '34', '配饰', '简约成就经典');
INSERT INTO `goods_data` VALUES ('撞色八股编织衫', 'zara', 'zara2018新品女装', 'S码', '1299', '399', '针织', '能否水洗', 'https://img.alicdn.com/bao/uploaded/i1/2228361831/TB1qNRBmvDH8KJjy1XcXXcpdXXa_!!0-item_pic.jpg_430x430q90.jpg', '39', '女装', '真人展示');
INSERT INTO `goods_data` VALUES ('连帽羊毛外套', 'zara', '秋冬折扣ZARA TRf女装', 'L码', '799', '299', '羊皮', '能否水洗', 'https://img.alicdn.com/bao/uploaded/i1/2228361831/TB1Z9m0l8fH8KJjy1XbXXbLdXXa_!!0-item_pic.jpg_430x430q90.jpg', '40', '女装', '真人展示');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/accessory1.jpg', '36', '配饰', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/accessory.jpg', '35', '配饰', '好物遗珠');
INSERT INTO `goods_data` VALUES ('貂皮大衣', 'coach', '经典款酒神燕子包', '均码', '1388', '998', '貂皮', '能否水洗', './src/assets/accessory2.jpg', '37', '配饰', '好物遗珠');
INSERT INTO `goods_data` VALUES ('迷你草帽', 'zara', '酒椰草圆形购物包', '均码', '1323', '112', '草', '能否水洗', 'https://img.alicdn.com/imgextra/i4/2228361831/TB2wdEMe8LN8KJjSZPhXXc.spXa_!!2228361831.jpg_430x430q90.jpg', '47', '配饰', '特惠专场');
INSERT INTO `goods_data` VALUES ('经典高价值手表', 'Dior', 'dior 经典女士手表', '均码', '39990', '12990', '合金/镀银/镀金', '能否水洗', 'https://img.alicdn.com/bao/uploaded/i4/2939402618/TB2uE5RulNkpuFjy0FaXXbRCVXa-2939402618.jpg_430x430q90.jpg', '46', '配饰', '特惠专场');
INSERT INTO `goods_data` VALUES ('成功女士首选', 'Louic Vuitton(LV)', '路易威登lv女包', '均码', '14760', '4769', '牛皮', '能否水洗', 'https://gd1.alicdn.com/imgextra/i3/0/TB1bTOdir_I8KJjy1XaXXbsxpXa_!!0-item_pic.jpg_400x400.jpg_.webp', '48', '包袋', '特惠专场');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_detail` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('308', '{\"goods_name\":\"貂皮大衣\",\"goods_trademark\":\"coach\",\"title_name\":\"经典款酒神燕子包\",\"size\":\"均码\",\"sell_prices\":1119,\"sell_price\":436,\"goods_info\":\"貂皮\",\"normal_problem\":\"能否水洗\",\"goods_pto\":\"./src/assets/goodlist10.jpg\",\"id\":11,\"type\":\"包袋\",\"activity\":\"流苏风情\"}', '1234', '1', '1');
INSERT INTO `order_item` VALUES ('309', '{\"goods_name\":\"貂皮大衣\",\"goods_trademark\":\"PRADA\",\"title_name\":\"MILANO普拉达女包\",\"size\":\"M码\",\"sell_prices\":1488,\"sell_price\":998,\"goods_info\":\"貂皮\",\"normal_problem\":\"能否水洗\",\"goods_pto\":\"./src/assets/goodlist3.jpg\",\"id\":4,\"type\":\"包袋\",\"activity\":\"简约成就经典\"}', '1234', '1', '1');

-- ----------------------------
-- Table structure for sells_goods
-- ----------------------------
DROP TABLE IF EXISTS `sells_goods`;
CREATE TABLE `sells_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_trademark` varchar(255) NOT NULL,
  `goods_pto` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `default_price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sells_goods
-- ----------------------------
INSERT INTO `sells_goods` VALUES ('23', 'Dior', 'https://www.dior.cn/couture/var/dior/storage/images/joaillerie-horlogerie/push-joaillerie/11700888-54-chi-CN/珠宝_width_440.jpg', '配饰', '1', '1000');
INSERT INTO `sells_goods` VALUES ('74', 'undefined', 'https://img.alicdn.com/imgextra/i3/2010197355/TB2iSVTcVHM8KJjSZFwXXcibXXa_!!2010197355.jpg_430x430q90.jpg', '女装', '0', '1000');
INSERT INTO `sells_goods` VALUES ('72', '4444444444', 'https://img.alicdn.com/imgextra/i3/2010197355/TB2iSVTcVHM8KJjSZFwXXcibXXa_!!2010197355.jpg_430x430q90.jpg', '女鞋', '0', '1000');

-- ----------------------------
-- Table structure for staff_data
-- ----------------------------
DROP TABLE IF EXISTS `staff_data`;
CREATE TABLE `staff_data` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) NOT NULL COMMENT '用户名',
  `staff_password` varchar(255) NOT NULL COMMENT '密码',
  `availability` tinyint(255) NOT NULL COMMENT '可用性',
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_data
-- ----------------------------
INSERT INTO `staff_data` VALUES ('17', 'undefined', 'undefined', '0');
INSERT INTO `staff_data` VALUES ('15', 'undefined', 'undefined', '0');
INSERT INTO `staff_data` VALUES ('14', '黄子健', '123456', '0');
INSERT INTO `staff_data` VALUES ('1', 'admin', 'admin', '1');
INSERT INTO `staff_data` VALUES ('19', '123', '123', '0');
INSERT INTO `staff_data` VALUES ('20', '111', '111', '0');
INSERT INTO `staff_data` VALUES ('21', '1706', '1706', '0');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL DEFAULT '00:00:00.000000',
  `head_img` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('22', '123456789', '123456789', '123456789', '广州千锋1707第四组', '2018-1-26 14:03:36', 'http://www.snowcoal.com/image/portrait/default_header.jpg');
INSERT INTO `userlist` VALUES ('45', '1234', '1234', '1234', '广州千锋1707第四组', '2018-1-27 11:47:48', 'http://www.snowcoal.com/image/portrait/default_header.jpg');
SET FOREIGN_KEY_CHECKS=1;
