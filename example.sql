/*
Navicat MySQL Data Transfer

Source Server         : xqk
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : example

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-06-13 10:41:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `fraction` varchar(20) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achievement
-- ----------------------------

-- ----------------------------
-- Table structure for blanks
-- ----------------------------
DROP TABLE IF EXISTS `blanks`;
CREATE TABLE `blanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `questions` varchar(100) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blanks
-- ----------------------------

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `questions` varchar(100) DEFAULT NULL,
  `optionA` varchar(20) DEFAULT NULL,
  `optionB` varchar(20) DEFAULT NULL,
  `optionC` varchar(20) DEFAULT NULL,
  `optionD` varchar(20) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES ('1', null, null, '', null, null, null, null);

-- ----------------------------
-- Table structure for judge
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `questions` varchar(100) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of judge
-- ----------------------------

-- ----------------------------
-- Table structure for language_written
-- ----------------------------
DROP TABLE IF EXISTS `language_written`;
CREATE TABLE `language_written` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `subject_con` varchar(255) NOT NULL,
  `options_a` varchar(255) NOT NULL,
  `options_b` varchar(255) NOT NULL,
  `options_c` varchar(255) NOT NULL,
  `options_d` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of language_written
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_per` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_per_role` (`role_id`),
  CONSTRAINT `fk_per_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', '专业设置', '3');
INSERT INTO `permissions` VALUES ('2', '科目设置', '3');
INSERT INTO `permissions` VALUES ('3', '教师管理', '3');
INSERT INTO `permissions` VALUES ('4', '班级管理', '3');
INSERT INTO `permissions` VALUES ('5', '学生管理', '3');
INSERT INTO `permissions` VALUES ('6', '题库管理', '3');
INSERT INTO `permissions` VALUES ('7', '试卷管理', '3');
INSERT INTO `permissions` VALUES ('8', '成绩管理', '3');
INSERT INTO `permissions` VALUES ('9', '个人信息', '1');
INSERT INTO `permissions` VALUES ('10', '修改密码', '1');
INSERT INTO `permissions` VALUES ('11', '在线考试', '1');
INSERT INTO `permissions` VALUES ('12', '查看成绩', '1');
INSERT INTO `permissions` VALUES ('13', '学生管理', '2');
INSERT INTO `permissions` VALUES ('14', '题库管理', '2');
INSERT INTO `permissions` VALUES ('15', '试卷管理', '2');
INSERT INTO `permissions` VALUES ('16', '成绩管理', '2');
INSERT INTO `permissions` VALUES ('17', '个人信息', '2');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role` (`user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '学生');
INSERT INTO `role` VALUES ('3', '管理员');
INSERT INTO `role` VALUES ('2', '讲师');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_gender` varchar(255) NOT NULL,
  `t_school` varchar(255) NOT NULL,
  `t_role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '201207814', '陈毅', '男', '武汉大学', '讲师');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '计算机二级');
INSERT INTO `test` VALUES ('2', '程序员');
INSERT INTO `test` VALUES ('3', '网络管理员');
INSERT INTO `test` VALUES ('4', '英语四级');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `user_acc` int(11) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`user_role`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`user_role`) REFERENCES `role` (`user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '李晓', '172008', 'qaz', '学生');
INSERT INTO `user` VALUES ('2', '李龙', '172003', 'wsx', '学生');
INSERT INTO `user` VALUES ('3', '张媛', '107882', 'edc', '讲师');
INSERT INTO `user` VALUES ('4', '王三', '127589', 'rfv', '管理员');
