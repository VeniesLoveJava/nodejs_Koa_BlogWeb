/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mysql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-04 11:30:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `login_log`
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `page` varchar(50) DEFAULT NULL COMMENT '访问页面',
  `ip` varchar(20) DEFAULT NULL COMMENT '登陆IP地址',
  `login_time` varchar(20) DEFAULT '0000-00-00' COMMENT '登陆时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', null, '127.0.0.1', '2018-06-13');
INSERT INTO `login_log` VALUES ('2', null, '127.0.0.1', '0000-00-00');
INSERT INTO `login_log` VALUES ('3', null, '12321321', '0000-00-00');
INSERT INTO `login_log` VALUES ('11', '/HomePage.html', '::ffff:127.0.0.1', '2018-06-13');
INSERT INTO `login_log` VALUES ('16', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('17', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('18', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('19', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('20', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('21', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('22', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('23', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('24', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('25', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('26', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('27', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('28', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('29', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('30', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('31', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('32', '/HomePage.html', '::1', '2018-6-13');
INSERT INTO `login_log` VALUES ('33', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('34', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('35', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('36', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('37', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('38', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('39', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('40', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('41', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('42', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('43', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('44', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('45', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('46', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('47', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('48', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('49', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('50', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('51', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('52', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('53', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('54', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('55', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('56', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('57', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('58', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('59', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('60', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('61', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('62', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('63', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('64', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('65', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('66', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('67', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('68', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('69', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('70', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('71', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('72', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('73', '/HomePage.html', '::1', '2018-6-14');
INSERT INTO `login_log` VALUES ('74', '/HomePage.html', '::1', '2018-6-19');
INSERT INTO `login_log` VALUES ('75', '/HomePage.html', '::1', '2018-6-19');
INSERT INTO `login_log` VALUES ('76', '/HomePage.html', '::1', '2018-6-19');
INSERT INTO `login_log` VALUES ('77', '/HomePage.html', '::1', '2018-6-19');
INSERT INTO `login_log` VALUES ('78', '/HomePage.html', '::1', '2018-6-19');
INSERT INTO `login_log` VALUES ('79', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('80', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('81', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('82', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('83', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('84', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('85', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('86', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('87', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('88', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('89', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('90', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('91', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('92', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('93', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('94', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('95', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('96', '/HomePage.html', '::1', '2018-7-2');
INSERT INTO `login_log` VALUES ('97', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('98', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('99', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('100', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('101', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('102', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('103', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('104', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('105', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('106', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('107', '/HomePage.html', '::ffff:127.0.0.1', '2018-7-3');
INSERT INTO `login_log` VALUES ('108', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('109', '/HomePage.html', '::ffff:127.0.0.1', '2018-7-3');
INSERT INTO `login_log` VALUES ('110', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('111', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('112', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('113', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('114', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('115', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('116', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('117', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('118', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('119', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('120', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('121', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('122', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('123', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('124', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('125', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('126', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('127', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('128', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('129', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('130', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('131', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('132', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('133', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('134', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('135', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('136', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('137', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('138', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('139', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('140', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('141', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('142', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('143', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('144', '/HomePage.html', '::1', '2018-7-3');
INSERT INTO `login_log` VALUES ('145', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('146', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('147', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('148', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('149', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('150', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('151', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('152', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('153', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('154', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('155', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('156', '/HomePage.html', '::ffff:127.0.0.1', '2018-7-4');
INSERT INTO `login_log` VALUES ('157', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('158', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('159', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('160', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('161', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('162', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('163', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('164', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('165', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('166', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('167', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('168', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('169', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('170', '/HomePage.html', '::1', '2018-7-4');
INSERT INTO `login_log` VALUES ('171', '/HomePage.html', '::1', '2018-7-4');
