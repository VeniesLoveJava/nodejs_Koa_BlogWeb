/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mysql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-04 11:30:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `myownpage_messagebox`
-- ----------------------------
DROP TABLE IF EXISTS `myownpage_messagebox`;
CREATE TABLE `myownpage_messagebox` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `messageCount` int(3) DEFAULT NULL,
  `message` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myownpage_messagebox
-- ----------------------------
INSERT INTO `myownpage_messagebox` VALUES ('1', '1', '你好，欢迎来到我的个人主页');
INSERT INTO `myownpage_messagebox` VALUES ('2', '2', '非常欢迎你留下您的修改意见和建议');
INSERT INTO `myownpage_messagebox` VALUES ('3', '3', '这是第一条用户留言');
INSERT INTO `myownpage_messagebox` VALUES ('9', '6', 'dsada');
INSERT INTO `myownpage_messagebox` VALUES ('10', '5', 'dsada');
