/*
Navicat MySQL Data Transfer

Source Server         : mysqls
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : goos

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-11-11 17:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `cls_id` int(11) NOT NULL AUTO_INCREMENT,
  `cls_name` varchar(30) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`cls_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '家具', '0');
INSERT INTO `class` VALUES ('2', '电子产品', '0');
INSERT INTO `class` VALUES ('3', '鞋子', '0');
INSERT INTO `class` VALUES ('4', '纸类', '0');

-- ----------------------------
-- Table structure for classift
-- ----------------------------
DROP TABLE IF EXISTS `classift`;
CREATE TABLE `classift` (
  `clsif_id` int(11) NOT NULL AUTO_INCREMENT,
  `clsif_name` varchar(10) DEFAULT NULL,
  `clsif_list` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`clsif_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of classift
-- ----------------------------
INSERT INTO `classift` VALUES ('1', '颜色', '红色,白色,黑色,紫色');
INSERT INTO `classift` VALUES ('2', '尺寸', 'M,XL,S,XS');
INSERT INTO `classift` VALUES ('3', '鞋码', '39,40,41,42,43,44,45');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `brand` varchar(10) DEFAULT NULL,
  `repertory` int(11) DEFAULT NULL,
  `cls_id` int(11) DEFAULT NULL,
  `classif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_id` (`cls_id`),
  CONSTRAINT `com_id` FOREIGN KEY (`cls_id`) REFERENCES `class` (`cls_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '旗舰键盘', '558.00', '4545.png', '旗舰', null, null, null);

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `site` varchar(40) DEFAULT NULL,
  `add_tab` varchar(5) DEFAULT NULL,
  `delete_tab` varchar(5) DEFAULT NULL,
  `amend_tab` varchar(5) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '王麻子', '外太空一号基地', '添加', '删除', '修改', '2019-11-08 09:42:25');
INSERT INTO `list` VALUES ('2', '王麻二', '外太空二号基地', '添加', '删除', '修改', '2019-11-08 10:56:51');

-- ----------------------------
-- Table structure for uren
-- ----------------------------
DROP TABLE IF EXISTS `uren`;
CREATE TABLE `uren` (
  `id_uren` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(10) DEFAULT NULL,
  `tle` int(11) DEFAULT NULL,
  `elme` varchar(30) DEFAULT NULL,
  `ai_hao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_uren`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of uren
-- ----------------------------
INSERT INTO `uren` VALUES ('1', '帅哥', '101010101', '1457@qq.com', '还是问问');
INSERT INTO `uren` VALUES ('2', '帅', '101010544', '1454557@qq.com', '54问问');
INSERT INTO `uren` VALUES ('3', '帅v', '555545', '1435557@qq.com', '巍峨问问');
INSERT INTO `uren` VALUES ('4', '帅哥', '101010101', '1457@qq.com', '还是问问');
INSERT INTO `uren` VALUES ('5', '帅', '101010544', '1454557@qq.com', '54问问');
INSERT INTO `uren` VALUES ('6', '帅v', '555545', '1435557@qq.com', '巍峨问问');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `starus` int(10) DEFAULT NULL COMMENT '0 表示失效, 1 表示成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for usrfy
-- ----------------------------
DROP TABLE IF EXISTS `usrfy`;
CREATE TABLE `usrfy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of usrfy
-- ----------------------------
INSERT INTO `usrfy` VALUES ('1', '1487770458@qq.com', '5740', '2019-11-02 11:34:04');
