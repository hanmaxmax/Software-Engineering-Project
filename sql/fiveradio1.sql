/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cafe

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2023-06-30 15:45:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fiveradio1
-- ----------------------------
DROP TABLE IF EXISTS `fiveradio1`;
CREATE TABLE `fiveradio1` (
  `startAnswerNum` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `paperId` int(11) NOT NULL,
  PRIMARY KEY (`startAnswerNum`,`userId`,`paperId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fiveradio1
-- ----------------------------
INSERT INTO `fiveradio1` VALUES ('1', '1', '1', '4', '3', '3', '6', '1');
INSERT INTO `fiveradio1` VALUES ('6', '4', '2', '2', '1', '2', '6', '1');
INSERT INTO `fiveradio1` VALUES ('11', '3', '1', '3', '4', '2', '6', '1');
INSERT INTO `fiveradio1` VALUES ('16', '3', '1', '2', '2', '4', '6', '1');
INSERT INTO `fiveradio1` VALUES ('21', '1', '2', '1', '2', '3', '6', '1');
INSERT INTO `fiveradio1` VALUES ('26', '1', '3', '9', '5', '5', '6', '1');
INSERT INTO `fiveradio1` VALUES ('31', '4', '2', '3', '1', '4', '6', '1');
INSERT INTO `fiveradio1` VALUES ('36', '5', '9', '4', '1', '6', '6', '1');
INSERT INTO `fiveradio1` VALUES ('41', '10', '8', '9', '3', '7', '6', '1');
INSERT INTO `fiveradio1` VALUES ('46', '1', '2', '2', '1', '4', '6', '1');
INSERT INTO `fiveradio1` VALUES ('51', '2', '3', '1', '3', '4', '6', '1');
