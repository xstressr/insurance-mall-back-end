/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : equipment_schema

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 25/10/2021 17:20:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_maintain
-- ----------------------------
DROP TABLE IF EXISTS `t_maintain`;
CREATE TABLE `t_maintain` (
  `mid` int NOT NULL AUTO_INCREMENT COMMENT '维修单号',
  `msubmit_time` datetime NOT NULL COMMENT '维修填报时间',
  `msubmit_people` varchar(50) NOT NULL COMMENT '维修上报人',
  `error_equip` varchar(50) NOT NULL COMMENT '故障设备',
  `error_descr` varchar(500) DEFAULT NULL COMMENT '故障描述',
  `main_status` varchar(50) NOT NULL COMMENT '维修状态',
  `main_people` varchar(50) NOT NULL COMMENT '维修人员',
  `main_price` float NOT NULL COMMENT '维修费用',
  `main_descr` varchar(500) DEFAULT NULL COMMENT '维修描述',
  `main_finish_data` datetime NOT NULL COMMENT '维修完成时间',
  `verify_descr` varchar(200) DEFAULT NULL COMMENT '验证描述',
  `verift_passtime` datetime DEFAULT NULL COMMENT '验证通过时间',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='维修管理表';

-- ----------------------------
-- Records of t_maintain
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_maintain_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_maintain_plan`;
CREATE TABLE `t_maintain_plan` (
  `mid` int NOT NULL AUTO_INCREMENT COMMENT '保养编号',
  `mtype` varchar(50) NOT NULL COMMENT '保养类型',
  `maintain_startime` datetime DEFAULT NULL COMMENT '保养开始时间',
  `maintain_equip` varchar(50) NOT NULL COMMENT '保养设备',
  `maintain_content` varchar(200) NOT NULL COMMENT '保养内容',
  `main_people` varchar(50) NOT NULL COMMENT '保养人员',
  `main_descr` varchar(500) DEFAULT NULL COMMENT '保养描述',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='保养计划表';

-- ----------------------------
-- Records of t_maintain_plan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_maintain_single
-- ----------------------------
DROP TABLE IF EXISTS `t_maintain_single`;
CREATE TABLE `t_maintain_single` (
  `mid` int NOT NULL AUTO_INCREMENT COMMENT '保养单号',
  `maintain_time` datetime NOT NULL COMMENT '保养时间',
  `maintain_plan_number` varchar(50) NOT NULL COMMENT '保养计划编号',
  `maintain_content` varchar(50) NOT NULL COMMENT '保养内容',
  `maintain_status` varchar(50) NOT NULL COMMENT '保养状态',
  `maintain_people` varchar(50) NOT NULL COMMENT '保养人员',
  `maintain_price` float NOT NULL COMMENT '保养费用',
  `maintain_descr` varchar(500) DEFAULT NULL COMMENT '保养描述',
  `maintain_finish_time` datetime NOT NULL COMMENT '保养完成时间',
  `verify_descr` varchar(200) DEFAULT NULL COMMENT '验证描述',
  `verift_passtime` datetime DEFAULT NULL COMMENT '验证通过时间',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='保养单表';

-- ----------------------------
-- Records of t_maintain_single
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
