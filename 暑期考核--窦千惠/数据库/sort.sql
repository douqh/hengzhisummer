/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : summer

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-07-27 11:29:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `SortID` int(11) NOT NULL AUTO_INCREMENT,
  `SortName` varchar(255) NOT NULL,
  `AddTime` datetime NOT NULL,
  PRIMARY KEY (`SortID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES ('1', '政治', '2019-07-24 20:02:49');
INSERT INTO `sort` VALUES ('2', '文学', '2019-07-10 20:03:16');
INSERT INTO `sort` VALUES ('3', '军事', '2019-07-13 20:03:42');
INSERT INTO `sort` VALUES ('4', '科研', '2018-04-25 00:00:00');
INSERT INTO `sort` VALUES ('5', '安全', '2019-07-19 20:04:20');
INSERT INTO `sort` VALUES ('6', '外交', '2019-07-18 20:05:00');
INSERT INTO `sort` VALUES ('7', '创新', '2019-07-20 20:08:46');
INSERT INTO `sort` VALUES ('9', '娱乐', '2018-09-22 16:00:00');
INSERT INTO `sort` VALUES ('10', '娱乐', '2018-09-22 16:00:00');
