/*
Navicat MySQL Data Transfer

Source Server         : Con
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : cafe

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2023-07-01 17:48:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `manager` int(10) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `aacount_unique` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', '12345678@', '1');
INSERT INTO `admin` VALUES ('2', 'teacher', '12345678@', '0');

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `PaperId` int(11) DEFAULT NULL,
  `q1` smallint(6) DEFAULT NULL,
  `q2` smallint(6) DEFAULT NULL,
  `q3` smallint(6) DEFAULT NULL,
  `q4` smallint(6) DEFAULT NULL,
  `q5` smallint(6) DEFAULT NULL,
  `q6` smallint(6) DEFAULT NULL,
  `q7` smallint(6) DEFAULT NULL,
  `q8` smallint(6) DEFAULT NULL,
  `q9` smallint(6) DEFAULT NULL,
  `q10` smallint(6) DEFAULT NULL,
  `q11` smallint(6) DEFAULT NULL,
  `q12` smallint(6) DEFAULT NULL,
  `q13` smallint(6) DEFAULT NULL,
  `q14` smallint(6) DEFAULT NULL,
  `q15` smallint(6) DEFAULT NULL,
  `q16` smallint(6) DEFAULT NULL,
  `q17` smallint(6) DEFAULT NULL,
  `q18` smallint(6) DEFAULT NULL,
  `q19` smallint(6) DEFAULT NULL,
  `q20` smallint(6) DEFAULT NULL,
  `q21` smallint(6) DEFAULT NULL,
  `q22` smallint(6) DEFAULT NULL,
  `q23` smallint(6) DEFAULT NULL,
  `q24` smallint(6) DEFAULT NULL,
  `q25` smallint(6) DEFAULT NULL,
  `q26` smallint(6) DEFAULT NULL,
  `q27` smallint(6) DEFAULT NULL,
  `q28` smallint(6) DEFAULT NULL,
  `q29` smallint(6) DEFAULT NULL,
  `q30` smallint(6) DEFAULT NULL,
  `q31` smallint(6) DEFAULT NULL,
  `q32` smallint(6) DEFAULT NULL,
  `q33` smallint(6) DEFAULT NULL,
  `q34` smallint(6) DEFAULT NULL,
  `q35` smallint(6) DEFAULT NULL,
  `q36` smallint(6) DEFAULT NULL,
  `q37` smallint(6) DEFAULT NULL,
  `q38` smallint(6) DEFAULT NULL,
  `q39` smallint(6) DEFAULT NULL,
  `q40` smallint(6) DEFAULT NULL,
  `q41` smallint(6) DEFAULT NULL,
  `q42` smallint(6) DEFAULT NULL,
  `q43` smallint(6) DEFAULT NULL,
  `q44` smallint(6) DEFAULT NULL,
  `q45` smallint(6) DEFAULT NULL,
  `q46` smallint(6) DEFAULT NULL,
  `q47` smallint(6) DEFAULT NULL,
  `q48` smallint(6) DEFAULT NULL,
  `q49` smallint(6) DEFAULT NULL,
  `q50` smallint(6) DEFAULT NULL,
  `q51` smallint(6) DEFAULT NULL,
  `q52` smallint(6) DEFAULT NULL,
  `q53` smallint(6) DEFAULT NULL,
  `q54` smallint(6) DEFAULT NULL,
  `q55` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', '1', '4', '3', '3', '4', '2', '2', '1', '2', '3', '1', '3', '4', '2', '3', '1', '2', '2', '4', '1', '4', '4', '1', '3', '6', '1', '5', '10', '7', '14', '2', '3', '9', '15', '5', '9', '4', '1', '6', '10', '8', '9', '3', '7', '1', '2', '2', '1', '4', '2', '3', '1', '3', '4');

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
  `paperId` int(11) NOT NULL
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
INSERT INTO `fiveradio1` VALUES ('1', '1', '1', '1', '1', '2', '2', '1');
INSERT INTO `fiveradio1` VALUES ('6', '1', '1', '1', '1', '1', '2', '1');

-- ----------------------------
-- Table structure for registration
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` text CHARACTER SET utf8,
  `identification_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `payment_status` int(1) NOT NULL,
  `exam_time` int(10) NOT NULL,
  `examination_room_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exam_position` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exam_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES ('25', '2', '耿耿', '546546565654654656', '1', '202312', null, '0', '13561865112', '20231201096426854');
INSERT INTO `registration` VALUES ('35', '2', '宁', '123545646448465646', '1', '202312', null, '0', '13561865112', '20231209953235701');

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
INSERT INTO `score` VALUES ('2', '1', '50', '20', '50', '50', '170');

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
INSERT INTO `textanswer` VALUES ('56', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '125', '1', '1', '0');
INSERT INTO `textanswer` VALUES ('56', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '65', '1', '12', '0');
INSERT INTO `textanswer` VALUES ('57', '\rWhy should we have a sense of family responsibility in modern society? The reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '32', '1', '12', '0');
INSERT INTO `textanswer` VALUES ('56', '\rThe reasons, which are obvious to all, can be listed as follows: on the one hand, a sense of family responsibility plays an essential role in personal growth, or put it another way,without it, hardly can any individual be really successful. On the other hand, the difference between a man who succeeds and one who does not mainly lies in the fact whether or not he could own the sense of family responsibility, and a man with that spirit usually could think twice before make any important decisions.\r\n', '225', '1', '10', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `account_unique` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'cet6cet6', '123456xyz', '11111111111', '123@123.com');
INSERT INTO `user` VALUES ('2', 'genggeng', '12345678@', '13561865112', '123@123.com');
INSERT INTO `user` VALUES ('3', 'ningn', '12345678@', '13561865112', '123@123.com');
INSERT INTO `user` VALUES ('6', 'Test', '12345678@', '11111111111', '123@123.com');
