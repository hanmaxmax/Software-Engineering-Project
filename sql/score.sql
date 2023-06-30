/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cafe

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2023-06-30 15:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `userid` int(11) DEFAULT NULL,
  `paperid` int(11) DEFAULT NULL,
  `listening` double DEFAULT NULL,
  `reading` double DEFAULT NULL,
  `transition` double DEFAULT NULL,
  `composition` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('6', '1', '205.89999999999992', '220.09999999999994', '-1', '-1', '-1');
INSERT INTO `score` VALUES ('6', '1', '205.89999999999992', '220.09999999999994', '-1', '-1', '-1');
