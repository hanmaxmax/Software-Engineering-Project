/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cafe

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2023-06-30 15:45:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for textanswer
-- ----------------------------
DROP TABLE IF EXISTS `textanswer`;
CREATE TABLE `textanswer` (
  `startAnswerNum` int(11) NOT NULL,
  `q` varchar(800) NOT NULL,
  `userId` int(11) NOT NULL,
  `paperId` int(11) NOT NULL,
  `score` double DEFAULT NULL,
  `marked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textanswer
-- ----------------------------
INSERT INTO `textanswer` VALUES ('56', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '8', '1', '8', '1');
INSERT INTO `textanswer` VALUES ('56', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '65', '1', '8', '0');
INSERT INTO `textanswer` VALUES ('57', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '32', '1', '8', '0');
INSERT INTO `textanswer` VALUES ('56', '\rThe reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '6', '1', '8', '1');
