/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : comics

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-12-28 22:49:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(50) NOT NULL,
  `vip` int(11) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `is_use` int(11) DEFAULT NULL,
  `created_user` varchar(50) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `modified_user` varchar(50) DEFAULT NULL,
  `modified_time` date DEFAULT NULL,
  `red_ticket` int(11) DEFAULT NULL,
  `black_ticket` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookname` (`bookname`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('132', '一拳超人', '0', '/book/一拳超人/封面/b2de9c82d158ccbfa1f6592d1ad8bc3eb135415b.jpg', '《一拳超人》讲述的是主人公埼玉原本是一名整日奔波于求职的普通人。三年前的一天偶然遇到了要对淘气少年下杀手的异变螃蟹人后，回忆起年少年时“想要成为英雄”的梦想，最终拼尽全力救下了淘气少年。重拾对于成为英雄的兴趣之后，通过拼命锻炼，埼玉终于脱胎换骨获得了最强的力量，但同时失去了头发成了光头，似乎还失去了某些感情。', '/book/一拳超人', '搞笑', '日本', '2', 'yzc', '2018-11-08', 'yzc', '2018-11-18', '8', '2');
INSERT INTO `books` VALUES ('133', '七龙珠完全版', '0', '/book/七龙珠完全版/封面/d439b6003af33a87b20dc9cec05c10385243b586.jpg', '很久很久以前，地球上散落着七颗神奇的龙珠，传说只要聚齐它们，神龙就会出现，并可以为人实现一个愿望。为了寻找龙珠，布尔玛和孙悟空踏上了奇妙的寻珠之旅……', '/book/七龙珠完全版', '搞笑', '日本', '2', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '8', '5');
INSERT INTO `books` VALUES ('134', '东京食尸鬼RE', '1', '/book/东京食尸鬼RE/封面/a41f726b05111aa2ece646.jpg', '这是东京食尸鬼的简介', '/book/东京食尸鬼RE', '恐怖', '欧美', '1', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '10', '2');
INSERT INTO `books` VALUES ('135', '全职猎人HUNTER', '0', '/book/全职猎人HUNTER/封面/500fd9f9d72a6059f685a05c2134349b023bbadb.jpg', '这是简介', '/book/全职猎人HUNTER', '搞笑', '日本', '1', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '3', '8');
INSERT INTO `books` VALUES ('136', '地府我开的', '0', '/book/地府我开的/封面/5d922def2296423f.jpg', '这是简介', '/book/地府我开的', '搞笑', '中国', '5', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '10', '12');
INSERT INTO `books` VALUES ('137', '庖厨天下', '0', '/book/庖厨天下/封面/0b6257f4f0c64ad7.jpg', '这是简介', '/book/庖厨天下', '搞笑', '中国', '6', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '19', '39');
INSERT INTO `books` VALUES ('138', '斗破苍穹', '0', '/book/斗破苍穹/封面/25934.jpg-noresize.webp', '这是简介', '/book/斗破苍穹', '搞笑', '中国', '5', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '34', '22');
INSERT INTO `books` VALUES ('139', '斗罗大陆', '0', '/book/斗罗大陆/封面/25933.jpg-noresize.webp', '这是简介', '/book/斗罗大陆', '玄幻', '中国', '9', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '24', '21');
INSERT INTO `books` VALUES ('140', '火影忍者', '1', '/book/火影忍者/封面/e850352ac65c1038681ad890b1119313b07e897f.jpg', '这是简介', '/book/火影忍者', '搞笑', '日本', '10', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '9', '9');
INSERT INTO `books` VALUES ('141', '皇后娘娘的五毛特效', '0', '/book/皇后娘娘的五毛特效/封面/f377deaeb8cb4c3e.jpg', '这是简介', '/book/皇后娘娘的五毛特效', '搞笑', '中国', '12', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '9', '11');
INSERT INTO `books` VALUES ('142', '诸天纪', '0', '/book/诸天纪/封面/u=1133239172,358707704&fm=58&bpow=1000&bpoh=1414.jpg', '这是简介', '/book/诸天纪', '搞笑', '中国', '19', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '7', '8');
INSERT INTO `books` VALUES ('143', '赌博默示录', '0', '/book/赌博默示录/封面/a686c9177f3e6709e0b7fdde3cc79f3df8dc555f.jpg', '这是简介', '/book/赌博默示录', '赌博', '日本', '19', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '8', '10');
INSERT INTO `books` VALUES ('144', '重生之慕甄', '0', '/book/重生之慕甄/封面/2016719173117721.jpg', '这是简介', '/book/重生之慕甄', '穿越', '中国', '16', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '9', '8');
INSERT INTO `books` VALUES ('145', '隐语岛', '0', '/book/隐语岛/封面/yinyuddxxxx.jpg', '这是简介', '/book/隐语岛', '恐怖', '日本', '23', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '10', '8');
INSERT INTO `books` VALUES ('146', '非人哉', '0', '/book/非人哉/封面/14197110_1496393465_eS7n550fmnF5.big.jpg', '非人哉的简介', '/book/非人哉', '日常', '中国', '23', 'yzc', '2018-11-08', 'yzc', '2018-11-18', '2', '1');
INSERT INTO `books` VALUES ('147', '驭灵师', '1', '/book/驭灵师/封面/4486442_1496497477_zss3tq9b2Sq2.big.jpg', '御灵师的简介', '/book/驭灵师', '玄幻', '中国', '25', 'yzc', '2018-11-08', 'yzc', '2018-11-08', '10', '14');
INSERT INTO `books` VALUES ('149', '航海王', '0', '/book/航海王/封面/a_100013977_m_601_m10_195_260.jpg', '这是简介', '/book/航海王', '冒险', '日本', '24', 'yzc', '2018-11-11', 'yzc', '2018-11-11', '1', '0');
INSERT INTO `books` VALUES ('150', '端脑', '0', '/book/端脑/封面/eac4b74543a9822676895c098e82b9014a90eb50.jpg', '端脑的简介', '/book/端脑', '解密', '中国', '25', 'yzc', '2018-11-12', 'yzc', '2018-11-12', '12', '13');
INSERT INTO `books` VALUES ('153', '死神', '0', '/book/死神/封面/u=1710865316,1841243847&fm=58&s=215371869C9201F7C139151A0300C092.jpg', '死神的简介，真的好看看', '/book/死神', '科幻', '日本', '25', 'yzc', '2018-11-12', 'yzc', '2018-11-12', '0', '0');
INSERT INTO `books` VALUES ('156', '进击的巨人', '0', '/book/进击的巨人/封面/0e2442a7d933c89562f080e8db1373f083020092.jpg', '进击的巨人的简介', '/book/进击的巨人', '搞笑', '中国', '7', 'yzc', '2018-11-12', 'yzc', '2018-11-16', '3', '1');
INSERT INTO `books` VALUES ('157', '红雾', '0', '/book/红雾/封面/420.jpg', '红雾的简介', '/book/红雾', '搞笑', '中国', '0', 'yzc', '2018-11-17', 'yzc', '2018-11-19', '0', '0');
INSERT INTO `books` VALUES ('164', '犬夜叉', '0', '/book/犬夜叉/封面/42a98226cffc1e17c6f012bc4090f603728de9f4.jpg', '这是犬夜叉的产地', '/book/犬夜叉', '搞笑', '日本', '0', 'yzc', '2018-11-19', 'yzc', '2018-11-19', '0', '0');
INSERT INTO `books` VALUES ('165', '犬夜叉第二本', '1', '/book/犬夜叉第二本/封面/42a98226cffc1e17c6f012bc4090f603728de9f4.jpg', '犬夜叉的简介', '/book/犬夜叉第二本', '搞笑', '日本', '0', 'yzc', '2018-11-19', 'yzc', '2018-11-19', '0', '0');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('131', '25', '140');
INSERT INTO `collect` VALUES ('137', '25', '133');
INSERT INTO `collect` VALUES ('138', '25', '144');
INSERT INTO `collect` VALUES ('139', '25', '147');
INSERT INTO `collect` VALUES ('140', '25', '145');
INSERT INTO `collect` VALUES ('141', '25', '136');
INSERT INTO `collect` VALUES ('142', '25', '139');
INSERT INTO `collect` VALUES ('143', '25', '143');
INSERT INTO `collect` VALUES ('145', '21', '145');
INSERT INTO `collect` VALUES ('146', '21', '138');
INSERT INTO `collect` VALUES ('148', '37', '144');

-- ----------------------------
-- Table structure for index_image
-- ----------------------------
DROP TABLE IF EXISTS `index_image`;
CREATE TABLE `index_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(20) DEFAULT NULL,
  `bookname` varchar(50) DEFAULT NULL,
  `created_user` varchar(50) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `modified_user` varchar(50) DEFAULT NULL,
  `modified_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_image
-- ----------------------------
INSERT INTO `index_image` VALUES ('1', 'line1_play1', '斗罗大陆', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('2', 'line1_play2', '驭灵师', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('3', 'line1_play3', '东京食尸鬼RE', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('4', 'line1_right1', '斗破苍穹', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('5', 'line1_right2', '火影忍者', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('6', 'line1_right3', '七龙珠完全版', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('7', 'line1_right4', '隐语岛', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('8', 'line1_right5', '重生之慕甄', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('9', 'line1_right6', '驭灵师', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('10', 'line3_1', '地府我开的', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('11', 'line3_2', '地府我开的', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('12', 'line3_3', '火影忍者', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('13', 'line3_4', '赌博默示录', 'yzc', '2018-11-06', 'yzc', '2018-11-06');
INSERT INTO `index_image` VALUES ('14', 'line3_5', '斗罗大陆', 'yzc', '2018-11-06', 'yzc', '2018-11-06');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `mess` varchar(200) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `system` varchar(10) DEFAULT NULL,
  `address` varchar(10) DEFAULT NULL,
  `browser` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '174', '你sdfjhdsfbjdskhbfkjkdsjfnkdsjfn', '2018.12.12', 'win8.1', '北京', null);
INSERT INTO `message` VALUES ('41', '1', '147', 'sadsadsad', '2008.01.01 10:22:12', 'win8.1', '珠海', null);
INSERT INTO `message` VALUES ('42', '21', '138', 'ad', '2018-11-15 10:55:24', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('43', '21', '138', '阿萨', '2018-11-15 11:07:27', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('44', '21', '138', '阿萨德', '2018-11-15 11:07:34', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('45', '21', '138', '萨芬的', '2018-11-15 11:16:12', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('46', '21', '138', 'sad', '2018-11-15 11:16:15', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('47', '25', '138', 'aaa', '2018-11-15 11:17:42', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('48', '21', '138', '水电费水电费', '2018-11-15 11:53:39', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('49', '21', '138', '水电费', '2018-11-15 11:53:47', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('50', '34', '140', 'dsadsa', '2018-11-15 11:52:24', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('51', '21', '138', '水电费第三方第三方佛挡杀佛第三方水电费', '2018-11-15 11:53:56', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('52', '21', '145', 'lk;lk', '2018-11-15 12:32:35', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('53', '21', '140', '啊撒大声地', '2018-11-15 14:15:24', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('54', '21', '138', 'cxv ', '2018-11-15 14:25:15', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('55', '10', '143', 'safd ', '2018-11-16 16:33:02', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('56', '10', '143', 'asd asd ', '2018-11-16 16:33:06', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('57', '35', '149', 'good', '2018-11-16 18:53:43', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('58', '21', '144', '主人公好惨啊..', '2018-11-17 09:30:06', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('59', '21', '138', '你好', '2018-11-17 09:39:28', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('60', '21', '138', 'CVBS', '2018-11-17 10:31:36', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('61', '39', '144', '？？？', '2018-11-19 09:25:59', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('62', '25', '144', 'wwwww', '2018-11-19 09:28:03', 'window 7', '珠海', '谷歌');
INSERT INTO `message` VALUES ('63', '25', '138', 'asdasdasd', '2018-11-19 10:05:55', 'window 7', '珠海', '谷歌');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('1', '1234563');
INSERT INTO `payment` VALUES ('5', 'asdasd');
INSERT INTO `payment` VALUES ('6', null);
INSERT INTO `payment` VALUES ('7', null);
INSERT INTO `payment` VALUES ('8', '1111');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `bookname` varchar(15) DEFAULT NULL,
  `look_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('2', '25', '火影忍者', '2018-11-18 11:25:00');
INSERT INTO `record` VALUES ('4', '25', '七龙珠完全版', '2018-11-12 14:00:13');
INSERT INTO `record` VALUES ('6', '25', '隐语岛', '2018-11-12 16:38:01');
INSERT INTO `record` VALUES ('9', '10', '隐语岛', '2018-11-17 17:46:00');
INSERT INTO `record` VALUES ('11', '25', '斗破苍穹', '2018-11-12 19:32:26');
INSERT INTO `record` VALUES ('14', '10', '进击的巨人', '2018-11-16 10:43:00');
INSERT INTO `record` VALUES ('15', '10', '斗破苍穹', '2018-11-17 10:49:00');
INSERT INTO `record` VALUES ('16', '32', '斗破苍穹', '2018-11-14 14:43:00');
INSERT INTO `record` VALUES ('17', '10', '斗罗大陆', '2018-11-14 20:01:18');
INSERT INTO `record` VALUES ('18', '10', '死神', '2018-11-15 09:43:00');
INSERT INTO `record` VALUES ('19', '10', '七龙珠完全版', '2018-11-15 20:33:00');
INSERT INTO `record` VALUES ('20', '34', '重生之慕甄', '2018-11-15 14:01:00');
INSERT INTO `record` VALUES ('21', '21', '斗罗大陆', '2018-11-15 11:59:00');
INSERT INTO `record` VALUES ('23', '35', '斗破苍穹', '2018-11-16 18:26:00');
INSERT INTO `record` VALUES ('24', '35', '进击的巨人', '2018-11-16 14:23:00');
INSERT INTO `record` VALUES ('25', '35', '七龙珠完全版', '2018-11-16 18:28:00');
INSERT INTO `record` VALUES ('26', '35', '火影忍者', '2018-11-16 18:29:00');
INSERT INTO `record` VALUES ('27', '21', '地府我开的', '2018-11-17 09:38:00');
INSERT INTO `record` VALUES ('28', '21', '东京食尸鬼RE', '2018-11-17 09:43:00');
INSERT INTO `record` VALUES ('29', '10', '地府我开的', '2018-11-17 14:58:00');
INSERT INTO `record` VALUES ('30', '10', '驭灵师', '2018-11-18 14:29:00');
INSERT INTO `record` VALUES ('31', '10', '红雾', '2018-11-18 14:58:00');
INSERT INTO `record` VALUES ('32', '10', '非人哉', '2018-11-18 10:27:00');
INSERT INTO `record` VALUES ('33', '25', '东京食尸鬼RE', '2018-11-18 11:24:00');
INSERT INTO `record` VALUES ('34', '25', '驭灵师', '2018-11-18 11:29:00');
INSERT INTO `record` VALUES ('37', '37', '红雾', '2018-11-18 15:45:00');
INSERT INTO `record` VALUES ('38', '37', '东京食尸鬼RE', '2018-11-18 15:56:00');
INSERT INTO `record` VALUES ('39', '37', '犬夜叉', '2018-11-18 16:11:00');
INSERT INTO `record` VALUES ('40', '38', '斗破苍穹', '2018-11-19 08:40:00');
INSERT INTO `record` VALUES ('41', '38', '一拳超人', '2018-11-19 08:44:00');
INSERT INTO `record` VALUES ('42', '38', '赌博默示录', '2018-11-19 08:45:00');
INSERT INTO `record` VALUES ('43', '38', '驭灵师', '2018-11-19 08:45:00');
INSERT INTO `record` VALUES ('44', '38', '犬夜叉', '2018-11-19 08:55:00');
INSERT INTO `record` VALUES ('45', '38', '红雾', '2018-11-19 09:02:00');
INSERT INTO `record` VALUES ('46', '39', '红雾', '2018-11-19 09:15:00');
INSERT INTO `record` VALUES ('47', '40', '犬夜叉第二本', '2018-11-19 09:52:00');
INSERT INTO `record` VALUES ('49', '25', '犬夜叉', '2018-11-19 12:18:00');

-- ----------------------------
-- Table structure for t_flow
-- ----------------------------
DROP TABLE IF EXISTS `t_flow`;
CREATE TABLE `t_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `out_trade_no` varchar(30) DEFAULT NULL,
  `seller_id` varchar(20) DEFAULT NULL,
  `trans_method` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `gmt_close` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_flow
-- ----------------------------
INSERT INTO `t_flow` VALUES ('1', '25', '20181114152400', '2088102176391930', '10', '1400', '2018-11-15');
INSERT INTO `t_flow` VALUES ('2', '25', '20181114152400', '2088102176391930', '10', '1400', '2018-11-15');
INSERT INTO `t_flow` VALUES ('3', '10', '20181116210504513552511', '2018-11-16', '10', '30', null);
INSERT INTO `t_flow` VALUES ('4', '10', '20181116210705952092511', '2018-11-16', '10', '30', null);
INSERT INTO `t_flow` VALUES ('5', '10', '20181117083602703842511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('6', '10', '20181117084201279242511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('7', '10', '20181117084201279242511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('8', '10', '20181117084201279242511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('9', '10', '20181117084201279242511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('10', '10', '20181117084603207662511', '2018-11-17', '10', '30', null);
INSERT INTO `t_flow` VALUES ('11', '36', '20181118111501381592511', '2018-11-18', '10', '30', null);
INSERT INTO `t_flow` VALUES ('12', '25', '20181118112200267612511', '2018-11-18', '10', '30', null);
INSERT INTO `t_flow` VALUES ('13', '37', '20181118155503058902511', '2018-11-18', '10', '30', null);
INSERT INTO `t_flow` VALUES ('14', '38', '20181119084302629182511', '2018-11-19', '10', '30', null);
INSERT INTO `t_flow` VALUES ('15', '40', '20181119100100438182511', '2018-11-19', '10', '60', null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` char(32) NOT NULL,
  `nickname` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `qq` varchar(16) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `avadar` varchar(100) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `member` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `contact_way` varchar(32) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_user` varchar(16) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_user` varchar(16) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1230', '123', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', '123', '123', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('3', '11', '11', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('4', 'qq', 'qq', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('5', 'qqq', 'qqq', null, null, null, null, null, null, null, null, null, null, null, '哈哈哈', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('6', '哈哈', '123456', null, 'abcd@tedu.cn', null, null, '13013013000', '0', null, '54017acb687146cabafd61edc3100eae', null, '2018-11-08', null, '这家伙很懒，什么也没留下', '0', '0', null, '哈哈', '2018-11-03 16:22:37', '哈哈', '2018-11-03 16:22:37');
INSERT INTO `t_user` VALUES ('7', '嘻嘻', '85F9DDCBC1831AA21EE217F23D913A52', null, null, null, null, null, '0', null, 'bf38e823cfe8479f9aaf85611928b351', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '嘻嘻', '2018-11-03 16:37:03', '嘻嘻', '2018-11-03 16:37:03');
INSERT INTO `t_user` VALUES ('8', '999', 'BD3D86387989DE2160176F9E9A654E7B', null, '123@qq.com', null, null, '110', '0', null, '71025df4d5bc409cb14dd2e2018362bc', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '999', '2018-11-03 17:02:34', '999', '2018-11-03 17:02:34');
INSERT INTO `t_user` VALUES ('9', '2419931696', 'BD292F431E45498D9B65DE5D94445A37', null, '2419931696@qq.com', null, null, '13631232258', '0', null, '9dc42145341d479281825d1280d6e64a', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '2419931696', '2018-11-03 17:08:18', '2419931696', '2018-11-03 17:08:18');
INSERT INTO `t_user` VALUES ('10', '123456', '8F0798CFFFCA27AEC1A1A2F96FAC21E0', '李白', '123@qq.com', '133', null, '13631232258', '1', '/book/avatar/6b213a3a-f9bf-44f1-be3c-82621e0b527f.jpg', '9a86e46fe0a74b72ac947313e83088ac', '2018-12-17', '2001-03-07', null, '1231', '0', '0', null, '123456', '2018-11-17 15:09:57', '123456', '2018-11-17 15:09:57');
INSERT INTO `t_user` VALUES ('11', '1234567', 'F58528215D9AEB957414EA4EA36A9A46', null, '123456', null, null, '123456', '0', null, '680d80f9da894b928195f102844c5f70', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '1234567', '2018-11-05 09:52:46', '1234567', '2018-11-05 09:52:46');
INSERT INTO `t_user` VALUES ('12', '12345678', '98675DDBD8DE790E128976C47651DC67', null, '', null, null, '', '0', null, 'a15396a17df2459f8bff680b2d087fb1', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '12345678', '2018-11-05 09:54:19', '12345678', '2018-11-05 09:54:19');
INSERT INTO `t_user` VALUES ('13', '', '39D361262A00A1A486ADDB33339B3456', null, '', null, null, '', '0', null, '36fcfecd3a314cf59a04c7975cdcce25', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '', '2018-11-05 09:57:48', '', '2018-11-05 09:57:48');
INSERT INTO `t_user` VALUES ('14', '123456789999', '607A237B4825BB0C6885BDA001D13A77', null, '123@qq.com', null, null, '13631232258', '0', null, 'd3d8208b13f34176a16840624a3b0bb2', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '123456789999', '2018-11-05 14:32:15', '123456789999', '2018-11-05 14:32:15');
INSERT INTO `t_user` VALUES ('18', '2342354', '8AF88D21283F0484A8E5A4C3BD23A22A', null, '123@qq.com', null, null, '13631232258', '0', null, '97d0671b1ac641e99341c08aad22f0d2', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '2342354', '2018-11-05 14:34:35', '2342354', '2018-11-05 14:34:35');
INSERT INTO `t_user` VALUES ('19', 'daimeng', '75963B0DEE551B81C7EE39AB16F8A215', null, '2419931696@qq.com', null, null, '13631232258', '0', null, '48d300cb34204a1381039a5d18907f18', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, 'daimeng', '2018-11-05 15:16:36', 'daimeng', '2018-11-05 15:16:36');
INSERT INTO `t_user` VALUES ('20', '9999999999999999', '931533C506FE30AB795A535C8ABFE897', null, '9999999999999999@qq.com', null, null, '13631232258', '0', null, '3e318f619f724d1bbda75568da697422', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '9999999999999999', '2018-11-05 18:03:02', '9999999999999999', '2018-11-05 18:03:02');
INSERT INTO `t_user` VALUES ('21', '654321', '140892B5B449D818379601C528423608', '苍老师', 'abcd@tedu.cn', null, null, '13013013000', '0', '/book/avatar/24e4c49a-9974-4753-8ba8-b1143b7ff34a.jpg', 'c0737ab23ecf40abb55d88b493d887a7', null, '2018-11-10', null, '这家伙很懒，什么也没留下', '0', '0', null, '654321', '2018-11-17 10:31:18', '654321', '2018-11-17 10:31:18');
INSERT INTO `t_user` VALUES ('22', '2222222', 'DD8770FE07388406BD6BE90FBFAC8629', null, '2222222@qq.com', null, null, '2222222', '0', null, 'bd4b105bed794adba80c72a34faa143c', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '2222222', '2018-11-06 14:46:09', '2222222', '2018-11-06 14:46:09');
INSERT INTO `t_user` VALUES ('23', 'aaaa', 'EE4BABA1064B8C7BA3D6B020081D9FD0', null, '123@qq.com', null, null, '13631232258', '0', null, 'cef7acc88bd349fe88f213eedc6d4095', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, 'aaaa', '2018-11-06 20:39:11', 'aaaa', '2018-11-06 20:39:11');
INSERT INTO `t_user` VALUES ('24', '987654321', 'FF25F09901879C1E98CE039B192C1285', null, '123@qq.com', null, null, '13631232258', '0', null, '88f849b095be4ad9a00154aa98cd5dea', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '987654321', '2018-11-08 09:21:39', '987654321', '2018-11-08 09:21:39');
INSERT INTO `t_user` VALUES ('25', 'abcd', '1F15A5D96CB7742651476E43405AD152', '赵六', 'abc@tedu.cn', '476619557', null, '13800138000', '1', '/book/avatar/b938a3f0-e687-40fb-abba-adcfd3a20abf.png', '2435e9131cc341c4a9d738180ad66913', '2018-12-18', '1994-07-04', null, '为五位', '0', '0', null, 'abcd', '2018-11-17 11:21:04', 'abcd', '2018-11-17 11:21:04');
INSERT INTO `t_user` VALUES ('26', '1234', 'ED00BBCAC8209C87458F70CB288C0F22', null, '123@qq.com', null, null, '13631232258', '0', null, '06e5fb7e84f643f98348bae3ed988125', null, null, null, '这家伙很懒，什么也没留下', '0', '0', null, '1234', '2018-11-12 16:42:04', '1234', '2018-11-12 16:42:04');
INSERT INTO `t_user` VALUES ('27', 'qqqqqq', '640E741C8ABA79ABAAD8DFC85C5E773D', null, '12324@qq.com', null, null, '15992655407', '0', '/book/avatar/ed6b7669-aa27-4411-9814-7ae9d2bd01f5.jpg', 'b3f372309e9a4fcc8f7a71f60b947a63', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'qqqqqq', '2018-11-12 19:46:21', 'qqqqqq', '2018-11-12 19:46:21');
INSERT INTO `t_user` VALUES ('28', 'yangzhicheng', '482F6E6B8F19C99C3234A98587EC5B6F', '哈哈', '2419931696@qq.com', null, null, '13631232258', '0', null, 'f8324c70c7744b14856c0f8afc717c46', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'yangzhicheng', '2018-11-13 17:40:55', 'yangzhicheng', '2018-11-13 17:40:55');
INSERT INTO `t_user` VALUES ('32', 'dengmingfa', 'E96F6EC3E35F470967E4018CA3BD55F3', null, '12312@qq.com', null, null, '12345678910', '0', '/book/avatar/da3ad786-1151-46cc-ac6f-ae789d4619ee.png', '419da173111a48e1a723b4e17aa46cc2', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'dengmingfa', '2018-11-14 16:43:57', 'dengmingfa', '2018-11-14 16:43:57');
INSERT INTO `t_user` VALUES ('33', '7777777', 'E071235ED4C7F8FD4231A0409D3B8D91', '3', '7@qq.com', '123456', null, '13631232258', '0', '/book/avatar/dd372b6a-7367-40eb-a85a-a46b7069de0a.png', '552893a55eeb4bff9ad8629e2914a1c4', null, '1971-07-06', null, 'ssss', '0', '0', null, '7777777', '2018-11-14 15:01:37', '7777777', '2018-11-14 15:01:37');
INSERT INTO `t_user` VALUES ('34', 'dengming', 'D37184401558F855592EF8333C28CBA3', null, '123@qq.cn', null, null, '12345678910', '0', '/book/avatar/183e5094-bbeb-4da1-9621-88c28eb6dd59.png', '71233ed5355d400ebb1c013edd65ecaf', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'dengming', '2018-11-15 11:21:08', 'dengming', '2018-11-15 11:21:08');
INSERT INTO `t_user` VALUES ('35', 'xiaodai1', '940FDE0864BFBF4E39887DFDE611D649', '你好', '123@qq.com', null, null, '13631232258', '0', '/book/avatar/aab65a1b-359a-47a5-9630-3fe84e1f88c7.png', 'b316e5e0ba6b4246a6f2a70b397e6362', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'xiaodai1', '2018-11-16 14:14:09', 'xiaodai1', '2018-11-16 14:14:09');
INSERT INTO `t_user` VALUES ('36', '123456789', '632D47288E19AA033C17E94EC1681ADE', '专业vip', '2419931696@qq.com', '41654651', '广东省, 珠海市, 香洲区, 明珠南路, 2007号-5幢', '13631232258', '0', '/book/avatar/8320c512-74d7-4a80-94fd-215b2a66d91b.jpg', '76ea30b8b34c4a1e8cfd687ca5c2a185', '2018-12-18', '2014-03-05', null, '不懒', '0', '0', null, '123456789', '2018-11-18 15:29:59', '123456789', '2018-11-18 15:29:59');
INSERT INTO `t_user` VALUES ('37', 'aaaaa', '0E40A8A1922C9B9FD785FBB6A50B9982', '我是旋风', '2419931696@qq.com', '123456789', '广东省, 珠海市, 香洲区, 明珠南路, 2007号-4幢', '13631232258', '0', '/book/avatar/f5cfa910-48c3-466d-ad98-3acff1f16c0a.png', '718b20f56419473092337ec23f3a07a2', '2018-12-18', '1999-03-04', null, '有留下', '0', '0', null, 'aaaaa', '2018-11-18 15:35:55', 'aaaaa', '2018-11-18 15:35:55');
INSERT INTO `t_user` VALUES ('38', '999999', 'C1CD9CB49293B08E0F5374148A93C1BA', '小呆', '123@qq.com', '2132', '广东省, 珠海市, 香洲区, 明珠南路, 2007号-4幢', '13631232258', '0', '/book/avatar/bc265912-31f5-46e0-b44e-d40ae6d8c6d9.jpg', '3f2ebd6961bc4bc48f293e7cc64cb935', '2018-12-19', '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, '999999', '2018-11-19 08:41:47', '999999', '2018-11-19 08:41:47');
INSERT INTO `t_user` VALUES ('39', 'xiaodai2', 'FEAA40A049A63B6EDFE5A71B1258481B', null, '123@qq.com', null, '', '13631232258', '0', '/book/avatar/49e52bef-82c8-43df-af8e-2a88f3f3be7c.jpg', '8b410faabf7c47e7b5b44bbe123fca24', null, '1970-01-01', null, '这家伙很懒，什么也没留下', '0', '0', null, 'xiaodai2', '2018-11-19 09:31:28', 'xiaodai2', '2018-11-19 09:31:28');
INSERT INTO `t_user` VALUES ('40', 'xiaodai', 'BC36DF7A630C862D382E2684F28F57D1', '123456', '11111@qq.com', '476619557', '广东省, 珠海市, 香洲区, 明珠南路, 2007号-4幢', '13659681235', '0', '/book/avatar/b18b14bb-23c2-4814-b047-f290d503f7da.jpg', 'e885628b177440abb33379ac41d0d810', '2019-01-19', '1971-01-06', null, '你好', '0', '0', null, 'xiaodai', '2018-11-19 09:56:31', 'xiaodai', '2018-11-19 09:56:31');

-- ----------------------------
-- Table structure for urltable
-- ----------------------------
DROP TABLE IF EXISTS `urltable`;
CREATE TABLE `urltable` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `createTime` datetime(6) DEFAULT NULL,
  `flag` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urltable
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123', '张三');
INSERT INTO `user` VALUES ('2', 'lisi', '123', '李四');

-- ----------------------------
-- Table structure for user_book
-- ----------------------------
DROP TABLE IF EXISTS `user_book`;
CREATE TABLE `user_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `bookname` varchar(30) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `pass` int(1) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `image1url` varchar(100) DEFAULT NULL,
  `image2url` varchar(100) DEFAULT NULL,
  `image3url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_book
-- ----------------------------
INSERT INTO `user_book` VALUES ('8', '10', '这是一本短片漫画', '2018-11-15', '0', '/book/UserBook/这是一本短片漫画', '/book/UserBook\\这是一本短片漫画\\0001.jpg', '/book/UserBook\\这是一本短片漫画\\0006.jpg', '/book/UserBook\\这是一本短片漫画\\0011.jpg');
INSERT INTO `user_book` VALUES ('10', '10', '这是另一个短篇漫画', '2018-11-15', '0', '/book/UserBook/这是另一个短篇漫画', '/book/UserBook\\这是另一个短篇漫画\\0001.jpg', '/book/UserBook\\这是另一个短篇漫画\\0006.jpg', '/book/UserBook\\这是另一个短篇漫画\\0011.jpg');
INSERT INTO `user_book` VALUES ('11', '10', '第三个短篇漫画', '2018-11-15', '0', '/book/UserBook/第三个短篇漫画', '/book/UserBook\\第三个短篇漫画\\0001.jpg', '/book/UserBook\\第三个短篇漫画\\0009.jpg', '/book/UserBook\\第三个短篇漫画\\0017.jpg');
INSERT INTO `user_book` VALUES ('12', '35', '1', '2018-11-16', '0', '/book/UserBook/1', '/book/UserBook\\1\\0001.jpg', '/book/UserBook\\1\\0009.jpg', '/book/UserBook\\1\\0017.jpg');
INSERT INTO `user_book` VALUES ('13', '35', '测试1', '2018-11-16', '0', '/book/UserBook/测试1', '/book/UserBook\\测试1\\0001.jpg', '/book/UserBook\\测试1\\0006.jpg', '/book/UserBook\\测试1\\0011.jpg');
INSERT INTO `user_book` VALUES ('14', '35', '测试2', '2018-11-16', '0', '/book/UserBook/测试2', '/book/UserBook\\测试2\\0001.jpg', '/book/UserBook\\测试2\\0006.jpg', '/book/UserBook\\测试2\\0011.jpg');
INSERT INTO `user_book` VALUES ('15', '35', '测试3', '2018-11-16', '0', '/book/UserBook/测试3', '/book/UserBook\\测试3\\0001.jpg', '/book/UserBook\\测试3\\0009.jpg', '/book/UserBook\\测试3\\0017.jpg');
INSERT INTO `user_book` VALUES ('16', '35', '继续测试', '2018-11-16', '0', '/book/UserBook/继续测试', '/book/UserBook\\继续测试\\0001.jpg', '/book/UserBook\\继续测试\\0009.jpg', '/book/UserBook\\继续测试\\0017.jpg');
INSERT INTO `user_book` VALUES ('17', '10', '当当', '2018-11-17', '0', '/book/UserBook/当当', '/book/UserBook\\当当\\0001.jpg', '/book/UserBook\\当当\\0009.jpg', '/book/UserBook\\当当\\0017.jpg');
INSERT INTO `user_book` VALUES ('18', '37', '太好看了', '2018-11-18', '1', '/book/UserBook/太好看了', '/book/UserBook\\太好看了\\0001.jpg', '/book/UserBook\\太好看了\\0007.jpg', '/book/UserBook\\太好看了\\0012.jpg');
INSERT INTO `user_book` VALUES ('19', '38', '犬夜叉集锦', '2018-11-19', '1', '/book/UserBook/犬夜叉集锦', '/book/UserBook\\犬夜叉集锦\\0001.jpg', '/book/UserBook\\犬夜叉集锦\\0010.jpg', '/book/UserBook\\犬夜叉集锦\\0018.jpg');
INSERT INTO `user_book` VALUES ('20', '40', '犬夜叉', '2018-11-19', '0', '/book/UserBook/犬夜叉', '/book/UserBook\\犬夜叉\\0001.jpg', '/book/UserBook\\犬夜叉\\0007.jpg', '/book/UserBook\\犬夜叉\\0012.jpg');

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `ub_id` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words
-- ----------------------------
INSERT INTO `words` VALUES ('10', '21', '5', '138', '1230', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('11', '21', '5', '138', 'asd', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('12', '21', '16', '144', '5646', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('13', '21', '10', '140', '0000', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('14', '21', '16', '144', '您的作品我很喜欢!!麻烦您更新快一点..', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('15', '21', '5', '138', '测试..', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('16', '10', '2', '133', 'jQuery331010635274352227087_1542420303037?????', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('17', '10', '2', '133', '我没写', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('19', '10', '2', '133', '?什么', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('21', '21', '10', '140', '132', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('22', '21', '10', '140', '000000', '2018-11-17 10:25:12');
INSERT INTO `words` VALUES ('23', '21', '5', '138', 'CVC', '2018-11-17 10:31:31');
INSERT INTO `words` VALUES ('25', '10', '5', '136', '好好看', '2018-11-18 10:06:00');
INSERT INTO `words` VALUES ('26', '10', '10', '140', '？？？', '2018-11-18 10:07:27');
INSERT INTO `words` VALUES ('29', '37', '5', '138', '123456', '2018-11-18 15:41:11');
INSERT INTO `words` VALUES ('31', '37', '25', '147', '你好啊朋友', '2018-11-18 15:59:45');
INSERT INTO `words` VALUES ('32', '39', '25', '147', '你好啊朋友', '2018-11-19 09:31:15');
INSERT INTO `words` VALUES ('34', '25', '5', '138', 'sada', '2018-11-19 10:05:25');
