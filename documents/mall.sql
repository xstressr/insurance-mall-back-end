/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 24/01/2022 15:05:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_insurance_career
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_career`;
CREATE TABLE `t_insurance_career` (
  `career_id` int NOT NULL AUTO_INCREMENT COMMENT '职业编号',
  `career_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '职业名称',
  `career_level` int DEFAULT NULL COMMENT '职业等级',
  PRIMARY KEY (`career_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_career
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (1, '事业单位负责人', 1);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (2, '企业负责人', 1);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (3, '科学研究人员', 1);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (4, '计算机与应用工程技术人员', 2);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (5, '电力工程技术人员', 3);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (6, '水上交通工程技术人员', 4);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (7, '退休人员', 2);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (8, '老人', 3);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (9, '学生', 2);
INSERT INTO `t_insurance_career` (`career_id`, `career_name`, `career_level`) VALUES (10, '化学制品专家', 5);
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_carousel
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_carousel`;
CREATE TABLE `t_insurance_carousel` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `insurance_name` varchar(255) NOT NULL COMMENT '保险名字',
  `imgUrl` varchar(255) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_carousel
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_carousel` (`id`, `insurance_name`, `imgUrl`) VALUES (49023, '平安-长期意外险', 'http://r3gvhifgy.hd-bkt.clouddn.com/e7c00d510ff94342ab261ff792c412ba.jpg');
INSERT INTO `t_insurance_carousel` (`id`, `insurance_name`, `imgUrl`) VALUES (49024, '平安-飞机单次安全险', 'http://r3gvhifgy.hd-bkt.clouddn.com/55ef0cbc95764c71a782d073c3996d70.jpg');
INSERT INTO `t_insurance_carousel` (`id`, `insurance_name`, `imgUrl`) VALUES (49025, '平安-爱无忧意外伤害险', 'http://r3gvhifgy.hd-bkt.clouddn.com/d936e21571284e508be3c38256f4be0d.jpg');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_category`;
CREATE TABLE `t_insurance_category` (
  `id` int NOT NULL COMMENT '自定义种类id',
  `name` varchar(20) NOT NULL COMMENT '自定义种类名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='保险种类码表';

-- ----------------------------
-- Records of t_insurance_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (1, '重疾险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (2, '医疗险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (3, '意外险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (4, '财富险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (5, '旅游险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (6, '定期寿险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (7, '责任险');
INSERT INTO `t_insurance_category` (`id`, `name`) VALUES (8, '家财险');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_claim
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_claim`;
CREATE TABLE `t_insurance_claim` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guarantee_no` varchar(50) NOT NULL COMMENT '保单号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `event_time` datetime NOT NULL COMMENT '事故日',
  `location_accident` varchar(255) NOT NULL COMMENT '事故地点',
  `accident_desc` varchar(500) NOT NULL COMMENT '事故描述',
  `status` int NOT NULL DEFAULT '0' COMMENT '报案状态',
  `submitter` varchar(255) NOT NULL COMMENT '报案人',
  `resolver` varchar(255) DEFAULT NULL COMMENT '处理人',
  `money` float NOT NULL COMMENT '金额',
  `claim_no` varchar(50) NOT NULL COMMENT '报案号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_claim
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (21, 'bd16387855900092910', '2021-12-06 21:17:45', '2021-12-05 21:15:58', '上海市', '飞机引擎着火，但是成功安全迫降\ndawfawf', 0, 'sonder', 'pingan', 50, 'co16388568092173888');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (22, 'bd16387855900092910', '2021-12-06 21:18:54', '2021-12-05 21:15:58', '上海市', '飞机出现气流颠簸，导致心脏病', 0, 'sonder', 'pingan', 50, 'co16388568092173889');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (23, 'bd16387855900092910', '2021-12-07 11:45:40', '2021-12-07 11:45:20', '上海市', '不小心磕到手指了', 1, 'sonder', 'pingan', 100, 'co16388568092173890');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (24, 'bd16387857436143647', '2021-12-07 14:00:09', '2021-12-05 13:59:41', '上海市', '不小心摔了一觉，摔伤了手', 0, 'sonder', 'pingan', 30, 'co16388568092173891');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (25, '4124i', '2021-12-07 16:40:47', '2021-12-06 16:40:43', '214', '2132', 1, 'sonder', NULL, 50, 'co16388664475427077');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (26, '4124i', '2021-12-07 16:40:49', '2021-12-06 16:40:43', '214', '2132', 0, 'sonder', NULL, 50, 'co16388664495474563');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (27, '4124i', '2021-12-07 16:40:49', '2021-12-06 16:40:43', '214', '2132', 0, 'sonder', NULL, 50, 'co16388664499714079');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (28, 'bd16387857436143647', '2021-12-07 19:07:44', '2021-12-05 19:07:32', '上海市', '被自行车撞到了', 0, 'sonder', 'pingan', 50, 'co16388752648081930');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (29, 'bd16387857436143647', '2021-12-07 19:07:56', '2021-12-05 19:07:32', '上海市', '被电动车撞到了', 2, 'sonder', 'pingan', 5, 'co16388752768401429');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (30, 'bd16389664272203527', '2021-12-08 20:27:46', '2021-12-07 20:27:33', '上海市', '被摩托车撞了', 0, 'sonder', 'changhong', 5, 'co16389664665155851');
INSERT INTO `t_insurance_claim` (`id`, `guarantee_no`, `create_time`, `event_time`, `location_accident`, `accident_desc`, `status`, `submitter`, `resolver`, `money`, `claim_no`) VALUES (31, 'bd16390129695141611', '2021-12-09 09:24:20', '2021-12-07 09:24:08', '上海市', '发个饭嘎', 1, 'sonder', 'pingan', 50, 'co16390130603943786');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_goods_appraise
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_goods_appraise`;
CREATE TABLE `t_insurance_goods_appraise` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `appraise_user` varchar(11) NOT NULL COMMENT '评价用户',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `content` varchar(400) NOT NULL COMMENT '评价内容',
  `goods_name` varchar(200) NOT NULL COMMENT '评价商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_goods_appraise
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_guarantee_slip
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_guarantee_slip`;
CREATE TABLE `t_insurance_guarantee_slip` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `owner_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拥有者',
  `product` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保险商品',
  `product_claim_min` int NOT NULL COMMENT '保额最少赔付',
  `product_claim_max` int NOT NULL COMMENT '保额最大赔付',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guarantee_no` varchar(50) NOT NULL COMMENT '保单号',
  `price` float NOT NULL COMMENT '购买价格',
  `buyer` varchar(50) NOT NULL COMMENT '购买者',
  `company` varchar(50) NOT NULL COMMENT '保险公司',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb3 COMMENT='保单表';

-- ----------------------------
-- Records of t_insurance_guarantee_slip
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (27, '12401040124', '平安-飞机单次安全险', 1, 500000, '2021-12-06 18:13:10', 'bd16387855900092910', 50, 'sonder', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (28, '12401040125', '平安-长期意外险', 1, 500000, '2021-12-06 18:14:41', 'bd16387856812299082', 80, 'sonder', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (29, '12401040126', '平安-爱无忧意外伤害险', 1, 100000, '2021-12-06 18:15:43', 'bd16387857436143647', 59, 'sonder', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (302, '31001301412498410', '平安-飞机单次安全险', 1, 500000, '2021-12-08 17:01:49', 'bd16389541099491445', 50, 'judy', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (303, '310294124850192', '平安-爱无忧意外伤害险', 1, 100000, '2021-12-08 17:02:45', 'bd16389541653078879', 59, 'judy', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (304, '310013014124984132', '平安-长期意外险', 1, 500000, '2021-12-08 17:03:18', 'bd16389541985922413', 80, 'judy', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (305, '31024012402', '猪猪-宠物健康险', 1, 2000, '2021-12-08 17:04:22', 'bd16389542623005753', 5, 'judy', 'pig');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (306, '31001301412498411', '平安-哈哈健康险', 1, 5000, '2021-12-08 17:05:13', 'bd16389543134877628', 14, 'judy', 'pingan');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (307, '31001301412498419', '长虹-短期交通意外险', 1, 500000, '2021-12-08 20:27:07', 'bd16389664272203527', 10, 'sonder', 'changhong');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (308, '3123094122912319', '长虹-川藏旅游险', 1, 500000, '2021-12-08 20:32:52', 'bd16389667723241031', 20, 'judy', 'changhong');
INSERT INTO `t_insurance_guarantee_slip` (`id`, `owner_no`, `product`, `product_claim_min`, `product_claim_max`, `create_time`, `guarantee_no`, `price`, `buyer`, `company`) VALUES (309, '3104015004215', '平安-长期意外险', 1, 500000, '2021-12-09 09:22:49', 'bd16390129695141611', 80, 'sonder', 'pingan');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_guarantee_tmp
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_guarantee_tmp`;
CREATE TABLE `t_insurance_guarantee_tmp` (
  `goods_name` varchar(50) NOT NULL COMMENT '商品名字',
  `total` int NOT NULL COMMENT '商品总量',
  PRIMARY KEY (`goods_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_guarantee_tmp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_insurer
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_insurer`;
CREATE TABLE `t_insurance_insurer` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '保单名字',
  `id_no` varchar(20) NOT NULL COMMENT '身份证号',
  `age` int NOT NULL COMMENT '年龄',
  `career` int NOT NULL COMMENT '职业',
  `guarantee_no` varchar(50) DEFAULT NULL COMMENT '保单号',
  `mobile` varchar(50) NOT NULL COMMENT '手机号',
  `email` varchar(255) NOT NULL COMMENT '电子邮箱',
  `address` varchar(255) NOT NULL COMMENT '联系地址',
  `height` double NOT NULL COMMENT '身高',
  `weight` double NOT NULL COMMENT '体重',
  `belong_acc` varchar(255) NOT NULL COMMENT '所属账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_idno` (`id_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_insurer
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (12, 'Jiyuan Sun', '12401040124', 21, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 160, 50, 'sonder');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (13, 'Brian', '12401040125', 12, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 160, 50, 'sonder');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (14, 'Judy', '12401040126', 20, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 160, 123, 'sonder');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (17, 'judy', '31001301412498410', 21, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 170, 50, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (18, 'frank', '310294124850192', 23, 2, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 188, 88, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (19, 'Peter', '310013014124984132', 20, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 160, 50, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (20, 'Part', '31024012402', 2, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 20, 10, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (21, 'haha', '31001301412498411', 1, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 20, 20, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (24, 'Ludy', '31001301412498419', 23, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 178, 78, 'sonder');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (25, 'judy', '3123094122912319', 24, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 180, 55, 'judy');
INSERT INTO `t_insurance_insurer` (`id`, `name`, `id_no`, `age`, `career`, `guarantee_no`, `mobile`, `email`, `address`, `height`, `weight`, `belong_acc`) VALUES (26, 'Jiyuan Sun', '3104015004215', 20, 1, NULL, '+13381501606', 'xstress@outlook.com ', 'Hengrong Road 388 long\nJiading', 160, 20, 'sonder');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_admin_user`;
CREATE TABLE `t_insurance_mall_admin_user` (
  `admin_user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `login_mobile` varchar(50) DEFAULT NULL COMMENT '管理员注册手机号',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='保险商城管理员';

-- ----------------------------
-- Records of t_insurance_mall_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (1, 'baton', '123123', 'baton', 0, '2021-11-02 16:26:58', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (2, 'will', '123123', 'will', 0, '2021-11-02 16:27:11', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (3, 'steve', '123123', 'steve', 0, '2021-11-07 15:31:49', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (4, 'frank', '123123', 'frank', 0, '2021-11-07 15:31:59', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (5, 'judy', '123123', 'judy', 0, '2021-11-07 15:32:07', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (6, 'tiger', '123123', 'tiger', 0, '2021-11-09 16:07:49', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (7, 'elephant', '123123', 'ele', NULL, '2021-11-09 16:08:40', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (8, 'test11', '123123', 'test11', 0, '2021-11-09 17:16:58', NULL);
INSERT INTO `t_insurance_mall_admin_user` (`admin_user_id`, `login_name`, `login_password`, `nick_name`, `locked`, `create_time`, `login_mobile`) VALUES (16, 'batpo', '123123', 'batpo', 0, '2021-12-09 08:39:16', '13381501606');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_carousel`;
CREATE TABLE `t_insurance_mall_carousel` (
  `carousel_id` int NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(100) NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) NOT NULL DEFAULT '''##''' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int NOT NULL DEFAULT '0' COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int NOT NULL DEFAULT '0' COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='首页轮播图';

-- ----------------------------
-- Records of t_insurance_mall_carousel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_goods_info`;
CREATE TABLE `t_insurance_mall_goods_info` (
  `goods_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '保险商品表主键id',
  `goods_name` varchar(200) NOT NULL DEFAULT '' COMMENT '保险商品名',
  `goods_intro` varchar(200) NOT NULL DEFAULT '' COMMENT '保险商品简介',
  `goods_category_id` int NOT NULL DEFAULT '0' COMMENT '关联分类id',
  `goods_cover_img` varchar(200) DEFAULT NULL COMMENT '保险商品主图',
  `goods_carousel` varchar(500) DEFAULT NULL COMMENT '保险商品轮播图',
  `goods_detail_content` text NOT NULL COMMENT '保险商品详情',
  `original_price` float NOT NULL DEFAULT '1' COMMENT '保险商品价格',
  `selling_price` float NOT NULL DEFAULT '1' COMMENT '保险商品实际售价',
  `tag` varchar(20) NOT NULL DEFAULT '' COMMENT '保险商品标签',
  `goods_sell_status` tinyint NOT NULL DEFAULT '0' COMMENT '保险商品上架状态 0-申请 1-上架 2-下架',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '添加者名字',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '保险商品添加时间',
  `update_user` varchar(50) NOT NULL DEFAULT '0' COMMENT '修改者主键id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '保险商品修改时间',
  `claim_amount` float NOT NULL COMMENT '保障额度',
  `deadline` varchar(255) NOT NULL COMMENT '保障期限',
  `total` int NOT NULL DEFAULT '0' COMMENT '销售总量',
  `min_age` int NOT NULL COMMENT '最小年龄',
  `max_age` int NOT NULL COMMENT '最大年龄',
  `min_level` int NOT NULL COMMENT '支持最小职业等级',
  `max_level` int NOT NULL COMMENT '支持最大职业等级',
  PRIMARY KEY (`goods_id`) USING BTREE,
  UNIQUE KEY `unique_goods_name` (`goods_name`) USING BTREE,
  KEY `FK_goods_category` (`goods_category_id`),
  KEY `FK_goods_createuser` (`create_user`),
  CONSTRAINT `FK_goods_category` FOREIGN KEY (`goods_category_id`) REFERENCES `t_insurance_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COMMENT='保险商品表，有外键关联';

-- ----------------------------
-- Records of t_insurance_mall_goods_info
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (23, '平安-短期意外险', '保障短期意外', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/3db9220fc4514decac4b21f1a28e3941.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/3db9220fc4514decac4b21f1a28e3941.jpg', '在保险期间，被保险人因遭受意外伤害事故需门诊或住院治疗，发生的医疗费用，我们将就其事故发生之日起180日内实际支出的按照当地社会医疗保险主管部门规定可报销的、必要的、合理的医疗费用超过人民币100元的部分给付医疗保险金。', 50, 50.05, '', 1, 'pingan', '2021-11-20 11:14:46', '0', '2021-11-20 11:14:46', 500000, '三个月', 0, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (24, '平安-长期意外险', '保障长期意外', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/e7c00d510ff94342ab261ff792c412ba.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/e7c00d510ff94342ab261ff792c412ba.jpg', '被保险人不幸遭受意外伤害事故进行治疗，按照当地社会医疗保险主管部门规定可报销的、必要的、合理的医疗费用，对超过人民币100元的部分按照100%给付医疗保险金。', 80, 80, '', 1, 'pingan', '2021-11-20 11:15:31', '0', '2021-11-20 11:15:31', 500000, '一年期', 3, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (25, '平安-少儿重疾险', '保障少儿健康', 1, 'http://r3gvhifgy.hd-bkt.clouddn.com/559240cab8a74b96b8eafcb6a5d8b5c7.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/559240cab8a74b96b8eafcb6a5d8b5c7.jpg', '在保险期间内，若被保险人遭受意外伤害事故，并自事故发生之日起180日内因该事故身故的，保险公司按意外伤害保险金额给付身故保险金，对该被保险人的保险责任终止。若因该意外伤害事故造成《人身保险伤残评定标准及代码》所列伤残之一的，保险公司按该表所列给付比例乘以意外伤害保险金额给付伤残保险金，累计达到保险金额时，对该被保险人的保险责任终止。', 300, 300, '', 1, 'pingan', '2021-11-20 11:16:44', '0', '2021-11-20 11:16:44', 200000, '一年期', 0, 0, 16, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (26, '平安-老年重疾险', '老年人', 1, 'http://r3gvhifgy.hd-bkt.clouddn.com/2c0787e1cc67439780015990e2f4d556.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/2c0787e1cc67439780015990e2f4d556.jpg', '一、身故保险金\n若被保险人身故，保险公司将按以下两项金额中的较大者向身故保险金受益人给付身故保险金，本合同终止：\n1、被保险人身故时本合同的个人账户价值；\n2、被保险人身故时本合同已交保险费减去累计部分领取金额后的余额。\n\n二、年金\n本合同生效之日起满10年后，被保险人可申请年金领取，保险公司于审核通过当日后的每个保险单周年日，按照本合同每个保险单周年日当日的个人账户价值的10%向年金受益人给付年金。每次给付年金后，个人账户价值则按给付的金额相应减少。\n在同一保险单年度内，基于本合同于每个保险单年内累计领取的年金和部分领取金额之和以本合同已交保险费的20%为限。', 2000, 2000, '', 1, 'pingan', '2021-11-20 11:18:49', '0', '2021-11-20 11:18:49', 100000, '一年期', 0, 60, 100, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (27, '猪猪-宠物健康险', '猪猪公司，大品牌', 8, 'http://r3gvhifgy.hd-bkt.clouddn.com/521139d0e55944f497af6a96b43fb752.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/521139d0e55944f497af6a96b43fb752.jpg', '在保险期间内，因被保险人拥有、照管的宠物造成第三者人身伤亡和财产的直接损失，依法应由被保险人（主人）承担的经济赔偿责 任。例如，外出遛狗，家中爱犬咬伤路人；客人来访，被家中爱犬咬伤等等。', 5, 5, '', 1, 'pig', '2021-11-20 15:37:22', '0', '2021-11-20 15:37:22', 2000, '一年期', 1, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (29, '长虹-单次旅游险', '保障单次出行', 5, 'http://r3gvhifgy.hd-bkt.clouddn.com/ab93ee93e3aa4ff7b6d298a4c3d673ef.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/ab93ee93e3aa4ff7b6d298a4c3d673ef.jpg', '在保险期间内，被保险人在旅行期间遭受意外伤害事故，并自事故发生之日起180日内因该事故身故的，保险人按意外伤害保险金额给付身故保险金，对被保险人的保险责任终止；自事故发生之日起180日内因该事故造成《人身保险伤残评定标准及代码》（标准编号为JR/T0083—2013）所列伤残之一的，保险人按该表所列给付比例乘以意外伤害保险金额给付伤残保险金，对被保险人的保险责任终止。', 2, 2, '', 1, 'changhong', '2021-11-27 20:23:04', '0', '2021-11-27 20:23:04', 500000, '一年期', 0, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (32, '平安-飞机单次安全险', '保障单次出行', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/55ef0cbc95764c71a782d073c3996d70.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/55ef0cbc95764c71a782d073c3996d70.jpg', '在保险期间内，被保险人以乘客身份乘坐民航客机期间因遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故身故的，保险人将按“飞机意外伤害保险金额” 给付身故保险金；若被保险人以乘客身份乘坐民航客机期间因遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故造成《人身保险伤残评定 标准及代码》所列伤残之一的，保险人按该表所列给付比例乘以“飞机意外伤害保险金额” 给付事故对应的伤残保险金。', 50, 50, '', 1, 'pingan', '2021-11-30 10:42:40', '0', '2021-11-30 10:42:40', 500000, '单次', 2, 0, 100, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (125, '平安-爱无忧意外伤害险', '新冠隔离津贴,新冠确诊津贴,投保年龄段长,含猝死保障', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/d936e21571284e508be3c38256f4be0d.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/d936e21571284e508be3c38256f4be0d.jpg', '在保险期间内，若被保险人遭受意外，并自该意外发生之日起一百八十日内直接、完全因该意外而身故的，保险公司给付意外身故保险金，本保险合同终止；若被保险人遭受意外，并自该意外发生之日起一百八十日内直接、完全因该意外造成《人身保险伤残评定标准》所列伤残项目的，保险公司按照给付比例给付意外伤残保险金，累计达到保险金额时，本保险合同终止。', 59, 59, '', 1, 'pingan', '2021-12-05 19:52:06', '0', '2021-12-05 19:52:06', 100000, '一年期', 2, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (126, '猪猪-狗狗健康险', '保护爱犬的健康', 8, 'http://r3gvhifgy.hd-bkt.clouddn.com/c8b18d827ab44fc29ebcf0a5c6d817bd.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/f481c8467298423fabc6a46cbac0c611.jpg', '在保险期间内，因被保险人拥有、照管的宠物造成第三者人身伤亡和财产的直接损失，依法应由被保险人（主人）承担的经济赔偿责 任。例如，外出遛狗，家中爱犬咬伤路人；客人来访，被家中爱犬咬伤等等。', 16.58, 16.58, '', 1, 'pig', '2021-12-06 19:57:07', '0', '2021-12-06 19:57:07', 5000, '一年期', 0, 0, 10, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (127, '猪猪-猫咪健康险', '肠胃炎、皮肤病等常见疾病及意外伤害有保障', 8, 'http://r3gvhifgy.hd-bkt.clouddn.com/e0aa71dabac347a6945f5ccf06863831.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/1bf1b442f4f947a5993f8fe1ad6e1b9e.jpg', '门诊200元起赔，手术1元起赔，每次最高400元\n定点医院60%，非定点40%；保额内不限理赔次数', 20, 20, '', 1, 'pig', '2021-12-06 19:59:40', '0', '2021-12-06 19:59:40', 5000, '一年期', 0, 0, 10, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (128, '平安-国内旅游险', '保障单次出行', 5, 'http://r3gvhifgy.hd-bkt.clouddn.com/ef0593e96f594b9a8bd9cc0c53fbf66f.png', 'http://r3gvhifgy.hd-bkt.clouddn.com/f83296adb8f542e180efc7394aefbfbb.png', '在保险期间内，被保险人在旅行期间遭受意外伤害事故，并自事故发生之日起180日内因该事故身故的，保险人按意外伤害保险金额给付身故保险金，对被保险人的保险责任终止；自事故发生之日起180日内因该事故造成《人身保险伤残评定标准及代码》（标准编号为JR/T0083—2013）所列伤残之一的，保险人按该表所列给付比例乘以意外伤害保险金额给付伤残保险金，对被保险人的保险责任终止。', 20, 20, '', 1, 'pingan', '2021-12-08 14:02:07', '0', '2021-12-08 14:02:07', 500000, '单次', 0, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (129, '平安-滑雪运动险', '保障旅游时参加的滑雪项目', 5, 'http://r3gvhifgy.hd-bkt.clouddn.com/4ab0e6056e4545808ae04fda3d8e65c0.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/11d262deaae94b94b9711923c4b00ef2.jpg', '在保险期间内，被保险人在旅行期间遭受意外伤害事故，并自事故发生之日起180日内因该事故身故的，保险人按意外伤害保险金额给付身故保险金，对被保险人的保险责任终止；自事故发生之日起180日内因该事故造成《人身保险伤残评定标准及代码》（标准编号为JR/T0083—2013）所列伤残之一的，保险人按该表所列给付比例乘以意外伤害保险金额给付伤残保险金，对被保险人的保险责任终止。', 2, 2, '', 1, 'pingan', '2021-12-08 14:05:35', '0', '2021-12-08 14:05:35', 20000, '单次', 0, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (130, '平安-国外旅游险', '保障单次出行', 5, 'http://r3gvhifgy.hd-bkt.clouddn.com/0658301652a3491ab1c605f570c358c0.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/b7e54ffe05fe44e4b2f1fd639376aaa1.jpg', '在保险期间内，被保险人在旅行期间遭受意外伤害事故，并自事故发生之日起180日内因该事故身故的，保险人按意外伤害保险金额给付身故保险金，对被保险人的保险责任终止；自事故发生之日起180日内因该事故造成《人身保险伤残评定标准及代码》（标准编号为JR/T0083—2013）所列伤残之一的，保险人按该表所列给付比例乘以意外伤害保险金额给付伤残保险金，对被保险人的保险责任终止。', 100, 100, '', 1, 'pingan', '2021-12-08 14:07:14', '0', '2021-12-08 14:07:14', 500000, '单次', 0, 0, 60, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (131, '平安-哈哈健康险', '保障宠物狗的安全', 8, 'http://r3gvhifgy.hd-bkt.clouddn.com/32f5a8dcafe94d7db54a97294cc2f2ff.jpeg', 'http://r3gvhifgy.hd-bkt.clouddn.com/255b98025e89492ab12e0eec0c0b8f5c.jpeg', '门诊200元起赔，手术1元起赔，每次最高400元\n定点医院60%，非定点40%；保额内不限理赔次数', 14, 14, '', 1, 'pingan', '2021-12-08 14:10:18', '0', '2021-12-08 14:10:18', 5000, '一年期', 1, 0, 10, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (132, '平安-兔兔健康险', '保障兔兔的安全', 8, 'http://r3gvhifgy.hd-bkt.clouddn.com/eb5fc7c3fe084f23a1d3c17f308a83d9.jpeg', 'http://r3gvhifgy.hd-bkt.clouddn.com/93f32df0b7e84a609c1cf0369fa6702a.jpeg', '门诊200元起赔，手术1元起赔，每次最高400元\n定点医院60%，非定点40%；保额内不限理赔次数', 15, 15, '', 1, 'pingan', '2021-12-08 14:12:25', '0', '2021-12-08 14:12:25', 5000, '一年期', 0, 0, 10, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (133, '平安-国外飞机意外险', '保障国外飞行事故', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/f1c26c6a7c7d4b9e906fee6bf1b46376.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/bd6c218fc9ed4718b6a86c240d0aa28d.jpg', '在保险期间内，被保险人以乘客身份乘坐民航客机期间因遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故身故的，保险人将按“飞机意外伤害保险金额” 给付身故保险金；若被保险人以乘客身份乘坐民航客机期间因遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故造成《人身保险伤残评定 标准及代码》所列伤残之一的，保险人按该表所列给付比例乘以“飞机意外伤害保险金额” 给付事故对应的伤残保险金。', 50, 50, '', 1, 'pingan', '2021-12-08 14:14:57', '0', '2021-12-08 14:14:57', 500000, '单次', 0, 0, 80, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (134, '平安-跳伞运动意外险', '保障跳伞的安全', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/b0ceccef6ccb4eb99f2b96173092b7e5.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/dbd2c94972444536a6b27ce2546751f4.jpg', '在保险期间内，被保险人跳伞遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故身故的，保险人将按“保险金额” 给付身故保险金；若被保险人以乘客身份乘坐民航客机期间因遭受意外伤害事故，并自事故发生之日起一百八十日内因该事故造成《人身保险伤残评定 标准及代码》所列伤残之一的，保险人按该表所列给付比例乘以“保险金额” 给付事故对应的伤残保险金。', 10, 10, '', 1, 'pingan', '2021-12-08 14:16:38', '0', '2021-12-08 14:16:38', 50000, '单次', 0, 0, 40, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (135, '长虹-短期意外险', '保障短期的意外风险', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/d2132a26135a476381f175109d805fbc.png', 'http://r3gvhifgy.hd-bkt.clouddn.com/b7a68f4ca5964cc8a8db62c87f4372bf.png', '在保险期间，被保险人因遭受意外伤害事故导致身故或伤残，我们将赔偿意外身故保险金或意外伤残保险金。\n\n注：综合意外身故/伤残与公共交通意外身故/伤残保额累计赔付。', 20, 20, '', 1, 'changhong', '2021-12-08 14:19:15', '0', '2021-12-08 14:19:15', 500000, '三个月', 0, 0, 40, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (136, '长虹-短期交通意外险', '保障被保人短期的交通意外', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/5f9cdb6b2b1549649d5a408d31ecf7ee.png', 'http://r3gvhifgy.hd-bkt.clouddn.com/adf0ae391b1c493b86dd2b9657596179.png', '\n在保险期间内，以乘客身份乘坐民航客机期间因意外伤害事故身故/伤残，我们将按“飞机意外伤害保险金额”给付保险金；', 10, 10, '', 1, 'changhong', '2021-12-08 14:20:58', '0', '2021-12-08 14:20:58', 500000, '三个月', 1, 0, 50, 1, 6);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (137, '长虹-川藏旅游险', '保护旅客川藏行的安全', 5, 'http://r3gvhifgy.hd-bkt.clouddn.com/e84a1dfa949f43bba8fe49d72ad8ad04.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/b2144c12f6f44ab590641575bae82084.jpg', '保护旅客川藏行的安全', 20, 20, '', 1, 'changhong', '2021-12-08 20:31:26', '0', '2021-12-08 20:31:26', 500000, '单次', 1, 0, 60, 0, 60);
INSERT INTO `t_insurance_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`, `claim_amount`, `deadline`, `total`, `min_age`, `max_age`, `min_level`, `max_level`) VALUES (138, '平安-大发放', '保障单次出行', 3, 'http://r3gvhifgy.hd-bkt.clouddn.com/346604560b7443a98a9b52881a057717.jpg', 'http://r3gvhifgy.hd-bkt.clouddn.com/cd29e3d1954c485ab3de1516a346411c.jpg', '父爱我姐夫i啊我和i', 50, 50, '', 1, 'pingan', '2021-12-09 09:46:34', '0', '2021-12-09 09:46:34', 50000, '单次', 0, 0, 20, 0, 20);
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_thirdparty
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_thirdparty`;
CREATE TABLE `t_insurance_mall_thirdparty` (
  `seller_user_id` int NOT NULL AUTO_INCREMENT COMMENT '第三方公司id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第三方公司登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '第三方公司登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '第三方公司显示昵称',
  `login_mobile` varchar(11) NOT NULL COMMENT '注册手机号',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked` tinyint DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`seller_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='第三方公司账号表';

-- ----------------------------
-- Records of t_insurance_mall_thirdparty
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (1, 'pingan', '123123', 'pingan', '13381501606', 0, 0, '2021-11-09 14:16:53');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (2, 'changhong', '123123', 'changhong', '13381501606', 0, 0, '2021-11-09 14:17:06');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (3, 'aoxiang', '123123', 'aoxiang', '13381501606', 0, 0, '2021-11-09 14:17:20');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (4, 'yongshen', '123123', 'yongshen', '13381501606', 0, 0, '2021-11-09 14:17:33');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (5, 'pig', '123123', 'pig', '13381501606', 0, 0, '2021-11-09 17:14:50');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (6, 'pig11', '123123', 'pig11', '13381501606', 0, 0, '2021-11-09 17:29:32');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (7, '小猪猪2', '123123', 'pig11', '13381501606', 0, 0, '2021-11-13 22:03:31');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (8, '小猪猪23', 'test', 'pig23', '13381501606', 0, 0, '2021-11-13 22:03:57');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (9, 'pig33', '123123', 'pig33', '13381501606', 0, 0, '2021-11-13 22:26:52');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (10, 'test11', '123123', 'pig33', '13381501606', 0, 0, '2021-11-28 18:03:56');
INSERT INTO `t_insurance_mall_thirdparty` (`seller_user_id`, `login_name`, `login_password`, `nick_name`, `login_mobile`, `is_deleted`, `locked`, `create_time`) VALUES (11, 'taibao', '123123', 'taibao', '13381501606', 0, 0, '2021-12-09 08:38:57');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_user`;
CREATE TABLE `t_insurance_mall_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `login_name` varchar(11) NOT NULL DEFAULT '' COMMENT '登陆名称(默认为手机号)',
  `login_password` varchar(30) NOT NULL COMMENT '登陆密码',
  `login_mobile` varchar(11) NOT NULL COMMENT '注册手机号',
  `introduce_sign` varchar(100) NOT NULL DEFAULT '' COMMENT '个性签名',
  `user_address` varchar(64) NOT NULL DEFAULT '' COMMENT '收件详细地址(街道/楼宇/单元)',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked_flag` tinyint NOT NULL DEFAULT '0' COMMENT '锁定标识字段(0-未锁定 1-已锁定)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='会员用户表';

-- ----------------------------
-- Records of t_insurance_mall_user
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (1, 'sonder', 'sonder', '123123', '13381501606', '', '', 0, 0, '2021-11-02 16:24:08');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (2, 'judy', 'judy', '123123', '13381501607', '', '', 0, 0, '2021-11-02 16:24:30');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (3, 'sunny', 'sunny', '123123', '13381501608', '', '', 0, 0, '2021-11-02 16:24:48');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (4, 'funny', 'funny', '123123', '13381501609', '', '', 0, 0, '2021-11-02 16:25:22');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (5, 'xiaoming', 'xiaoming', '123123', '13381501606', '', '', 0, 0, '2021-11-09 15:09:53');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (6, 'test', 'sonder11', '123123', '13381501606', '', '', 0, 0, '2021-11-09 16:12:15');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (7, 'pig11', '小猪猪', '123123', '13381501606', '', '', 0, 0, '2021-11-13 22:02:35');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (8, 'pig11', '小猪猪2', '123123', '13381501606', '', '', 0, 0, '2021-11-13 22:03:15');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (9, 'pig33', 'pig33', '123123', '13381501606', '', '', 0, 0, '2021-11-13 22:26:33');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (10, 'pig33', 'test11', '123123', '13381501606', '', '', 0, 0, '2021-11-28 18:03:11');
INSERT INTO `t_insurance_mall_user` (`user_id`, `nick_name`, `login_name`, `login_password`, `login_mobile`, `introduce_sign`, `user_address`, `is_deleted`, `locked_flag`, `create_time`) VALUES (11, 'yulp', 'yulp', '123123', '13381501606', '', '', 0, 0, '2021-12-09 08:38:37');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_personal_insurance_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_personal_insurance_category`;
CREATE TABLE `t_insurance_personal_insurance_category` (
  `personal_insurance_cat_id` int NOT NULL COMMENT '人身险种类',
  `personal_insurance_cat_name` varchar(20) NOT NULL COMMENT '人身险名字',
  PRIMARY KEY (`personal_insurance_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='人身险种类表';

-- ----------------------------
-- Records of t_insurance_personal_insurance_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_personal_insurance_category` (`personal_insurance_cat_id`, `personal_insurance_cat_name`) VALUES (1, '成人保险');
INSERT INTO `t_insurance_personal_insurance_category` (`personal_insurance_cat_id`, `personal_insurance_cat_name`) VALUES (2, '老人保险');
INSERT INTO `t_insurance_personal_insurance_category` (`personal_insurance_cat_id`, `personal_insurance_cat_name`) VALUES (3, '儿童保险');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_topline
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_topline`;
CREATE TABLE `t_insurance_topline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_title` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_insurance_topline
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_topline` (`id`, `message_title`, `message_content`, `create_date`, `create_user`) VALUES (2, '人人都应该交社保', '国家医保，是社会福利。找不到比这性价比更高的产品了。\n\n医保其特点是： 覆盖范围广，带病也能买，投保年龄无限制。\n\n医保包括城镇职工医保和新农合。虽然其报销额度和范围有限，但还是能解决很大一部分医疗报销的。\n\n买商业保险前，请务必先买好社保。', '2021-11-11 17:00:45', NULL);
INSERT INTO `t_insurance_topline` (`id`, `message_title`, `message_content`, `create_date`, `create_user`) VALUES (3, '保单本质上是一纸“法律合同”', '每一份保险合同，都具有法律效力。它约定了投被保人和保险公司双方的权利与义务。\n\n保险合同有保险法约束，有银保监会托底。\n\n也有一些“保障型产品”，例如，支付宝“相互宝”、轻松筹“轻松互助”、水滴筹“水滴计划”等。其加入规则和理赔标准由发起方决定。\n\n虽然也有“保障功能”，但其本质是互助计划，并不是保险产品，没有监管托底。', '2021-11-11 17:01:07', NULL);
INSERT INTO `t_insurance_topline` (`id`, `message_title`, `message_content`, `create_date`, `create_user`) VALUES (4, '保险公司可能破产，但保单很安全', '保险公司理论上是有可能倒闭的。按照保险法规定，保险公司也是允许倒闭的。\n\n金融危机期间，西方世界就倒闭了很多家银行和保险公司。但是迄今为止，中国还没有一家保险公司倒闭。\n\n保险公司出现危机或面临倒闭时，由再保险公司提供保护，或者国家保险基金直接接盘。\n\n即便保险公司倒闭了，有银保监会兜底，监管部门会安排其它保险公司接手你的保单，保险合同依然有效', '2021-11-11 17:01:26', NULL);
INSERT INTO `t_insurance_topline` (`id`, `message_title`, `message_content`, `create_date`, `create_user`) VALUES (5, '解读中国人寿“长险短做”背后的逻辑', '本文观点仅就“长险短做”逻辑进行剖析，对中国人寿或任何保险公司没有丝毫诋毁之意。任何保险公司的产品都有他的优势。作为保险经纪人，一贯主张客观、中立。\n\n前不久，各媒体持续报道的人寿“长险短做”、“虚假增员”、“虚列费用”等负面新闻，身边不少人比较关心“长险短做”，有人问我，为什么可以长险短做。保险提前退保不是有损失么？', '2021-11-11 17:08:58', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_travel_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_travel_category`;
CREATE TABLE `t_insurance_travel_category` (
  `travel_category_id` int NOT NULL COMMENT '旅游险种类',
  `travel_category_name` varchar(20) NOT NULL COMMENT '旅游线种类名',
  PRIMARY KEY (`travel_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='旅行保险种类';

-- ----------------------------
-- Records of t_insurance_travel_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_travel_category` (`travel_category_id`, `travel_category_name`) VALUES (1, '国内旅游');
INSERT INTO `t_insurance_travel_category` (`travel_category_id`, `travel_category_name`) VALUES (2, '国外旅游');
INSERT INTO `t_insurance_travel_category` (`travel_category_id`, `travel_category_name`) VALUES (3, '团体旅游');
INSERT INTO `t_insurance_travel_category` (`travel_category_id`, `travel_category_name`) VALUES (4, '新冠责任');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_wealth_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_wealth_category`;
CREATE TABLE `t_insurance_wealth_category` (
  `wealth_cate_id` int NOT NULL COMMENT '财富种类分类',
  `wealth_cate_name` varchar(20) NOT NULL COMMENT '财富种类分类名字',
  PRIMARY KEY (`wealth_cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='财富险种类';

-- ----------------------------
-- Records of t_insurance_wealth_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_wealth_category` (`wealth_cate_id`, `wealth_cate_name`) VALUES (1, '养老储备');
INSERT INTO `t_insurance_wealth_category` (`wealth_cate_id`, `wealth_cate_name`) VALUES (2, '子女教育');
INSERT INTO `t_insurance_wealth_category` (`wealth_cate_id`, `wealth_cate_name`) VALUES (3, '资产继承');
COMMIT;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_test
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
