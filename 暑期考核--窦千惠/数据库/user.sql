/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : summer

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-07-27 11:29:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `studentID` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=2019012777 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2018012000', '小红', '111111', '20', '2123145822@qq.com');
INSERT INTO `user` VALUES ('2018012001', '小蓝', '222222', '19', '2667633098@qq.com');
INSERT INTO `user` VALUES ('2018012002', '小黄', '333333', '21', '3426755534@qq.com');
INSERT INTO `user` VALUES ('2019012111', '4343', '666666', '23', '4552688364');
INSERT INTO `user` VALUES ('2019012765', '2121', '222232', '12', '2667600364');
INSERT INTO `user` VALUES ('2019012768', '111', '698d51a19d8a121ce581499d7b701668', '21', '3456700364@qq.com');
INSERT INTO `user` VALUES ('2019012770', '小小A', '1116711', '23', '3766700364@qq.com');
INSERT INTO `user` VALUES ('2019012771', '莉莉', '39bb56fc5f8c6092e41ce89671809c34', '23', '3489706764@qq.com');
INSERT INTO `user` VALUES ('2019012772', '小小美', '01c96beddb172095388e43835bdb7145', '23', '3456700364@qq.com');
INSERT INTO `user` VALUES ('2019012774', 'lili', 'fae0b27c451c728867a567e8c1bb4e53', '21', 'Douqh568@nenu.edu.cn');
INSERT INTO `user` VALUES ('2019012775', 'de', '81dc9bdb52d04dc20036dbd8313ed055', null, 'Douqh568@nenu.edu.cn');
INSERT INTO `user` VALUES ('2019012776', 'ss', '202cb962ac59075b964b07152d234b70', null, 'Douqh568@nenu.edu.cn');
