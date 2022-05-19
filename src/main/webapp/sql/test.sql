/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-05-19 17:46:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) DEFAULT NULL,
  `roleDesc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1354095773917185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '院长', '负责全面工作');
INSERT INTO `sys_role` VALUES ('2', '研究员', '课程研发工作');
INSERT INTO `sys_role` VALUES ('3', '讲师', '授课工作');
INSERT INTO `sys_role` VALUES ('4', '助教', '协助解决学生的问题');
INSERT INTO `sys_role` VALUES ('5', '助管', '帮助老师处理事务');
INSERT INTO `sys_role` VALUES ('6', 'test', 'tests');
INSERT INTO `sys_role` VALUES ('7', '教授', '科研主力');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1354095760547845 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1354095760547841', 'admin', 'admin@qq.com', '$2a$10$b0wyYL44F6H8pNAPOqg2y.Z31b2zTkbbzHVWewiRh6CZLskGpVrre', '18750607859', '0', '1');
INSERT INTO `sys_user` VALUES ('1354095760547842', 'test', 'test@qq.com', '$2a$10$YWPtmR3F7VnXeiJvW1SbkOduBFytNybrMHzEIMrQ5iq4YCewBbNOS', '18750607859', '0', '1');
INSERT INTO `sys_user` VALUES ('1354095760547843', 'huweiv', 'huweiv@qq.com', '$2a$10$vPOCznAUh4avHO0MFR96VeLme37yA/m4KUiUriaus.YvkAqOhdeSu', '18750607859', '0', '1');
INSERT INTO `sys_user` VALUES ('1354095760547844', 'zhangsan', 'zhangsan@qq.com', '$2a$10$TonoFOHOWNheKRdGjjevAe7U.EkK0fV.aZ3OLROFyY28t9uPVJeqy', '18750607859', '0', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1354095760547841', '1');
INSERT INTO `sys_user_role` VALUES ('1354095760547841', '2');
INSERT INTO `sys_user_role` VALUES ('1354095760547843', '2');
INSERT INTO `sys_user_role` VALUES ('1354095760547844', '3');
INSERT INTO `sys_user_role` VALUES ('1354095760547843', '4');
INSERT INTO `sys_user_role` VALUES ('1354095760547844', '4');
INSERT INTO `sys_user_role` VALUES ('1354095760547843', '5');
INSERT INTO `sys_user_role` VALUES ('1354095760547844', '5');
INSERT INTO `sys_user_role` VALUES ('1354095760547842', '6');
INSERT INTO `sys_user_role` VALUES ('1354095760547843', '7');
