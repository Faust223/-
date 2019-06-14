/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2019-06-12 11:41:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `achievement`
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `id` int(11) NOT NULL auto_increment,
  `subject` varchar(20) default NULL,
  `duration` varchar(255) default NULL,
  `fraction` varchar(20) default NULL,
  `number` varchar(20) default NULL,
  `start` date default NULL,
  `end` date default NULL,
  `name` varchar(20) default NULL,
  `score` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `blanks`
-- ----------------------------
DROP TABLE IF EXISTS `blanks`;
CREATE TABLE `blanks` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `questions` varchar(100) default NULL,
  `answer` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blanks
-- ----------------------------

-- ----------------------------
-- Table structure for `choice`
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `questions` varchar(100) default NULL,
  `optionA` varchar(20) default NULL,
  `optionB` varchar(20) default NULL,
  `optionC` varchar(20) default NULL,
  `optionD` varchar(20) default NULL,
  `answer` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES ('1', null, null, '', null, null, null, null);

-- ----------------------------
-- Table structure for `judge`
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `questions` varchar(100) default NULL,
  `answer` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of judge
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `studentID` int(20) default NULL,
  `pwd` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '20170101', '123');
INSERT INTO `user` VALUES ('2', '20170102', '456');
INSERT INTO `user` VALUES ('3', '20170103', '789');
