/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : cafe

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2023-06-30 15:45:27
*/

SET FOREIGN_KEY_CHECKS=0;

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
