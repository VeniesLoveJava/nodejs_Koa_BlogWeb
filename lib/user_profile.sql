/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mysql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-04 11:29:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `email` varchar(20) NOT NULL COMMENT '邮箱（登陆账号）',
  `pwd` varchar(20) DEFAULT NULL COMMENT '密码',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `role` varchar(5) DEFAULT NULL COMMENT '角色',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('123456@qq.com', '123456', '管理员', 'admin', '2018-6-19');
INSERT INTO `user_profile` VALUES ('654321@qq.com', '123456', '普通用户1', 'user1', '2018-6-19');
INSERT INTO `user_profile` VALUES ('ceshi3', '123', '测试3号', 'user', '2018-6-19');
