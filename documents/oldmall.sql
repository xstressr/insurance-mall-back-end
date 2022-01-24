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

 Date: 08/11/2021 19:57:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_insurance_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_category`;
CREATE TABLE `t_insurance_category` (
  `id` int NOT NULL COMMENT '自定义种类id',
  `name` varchar(20) NOT NULL COMMENT '自定义种类名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_insurance_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_category` VALUES (1, '重疾险');
INSERT INTO `t_insurance_category` VALUES (2, '医疗险');
INSERT INTO `t_insurance_category` VALUES (3, '意外险');
INSERT INTO `t_insurance_category` VALUES (4, '财富险');
INSERT INTO `t_insurance_category` VALUES (5, '旅游险');
INSERT INTO `t_insurance_category` VALUES (6, '定期寿险');
INSERT INTO `t_insurance_category` VALUES (7, '责任险');
INSERT INTO `t_insurance_category` VALUES (8, '家财险');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_guarantee_slip
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_guarantee_slip`;
CREATE TABLE `t_insurance_guarantee_slip` (
  `id` int NOT NULL COMMENT '保单号',
  `owner` varchar(50) NOT NULL COMMENT '拥有者',
  `product` varchar(50) NOT NULL COMMENT '保险商品',
  `product_claim_min` int NOT NULL COMMENT '保额最少赔付',
  `product_claim_max` int NOT NULL COMMENT '保额最大赔付',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_insurance_guarantee_slip
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_guarantee_slip` VALUES (1, 'sjy', '专业产险', 10000, 50000, '2021-11-08 16:12:09');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_admin_user`;
CREATE TABLE `t_insurance_mall_admin_user` (
  `admin_user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='保险商城管理员';

-- ----------------------------
-- Records of t_insurance_mall_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_admin_user` VALUES (1, 'baton', '123123', 'baton', 0, '2021-11-02 16:26:58');
INSERT INTO `t_insurance_mall_admin_user` VALUES (2, 'will', '123123', 'will', 0, '2021-11-02 16:27:11');
INSERT INTO `t_insurance_mall_admin_user` VALUES (3, 'steve', '123123', 'steve', 0, '2021-11-07 15:31:49');
INSERT INTO `t_insurance_mall_admin_user` VALUES (4, 'frank', '123123', 'frank', 0, '2021-11-07 15:31:59');
INSERT INTO `t_insurance_mall_admin_user` VALUES (5, 'judy', '123123', 'judy', 0, '2021-11-07 15:32:07');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

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
  `goods_category_id` bigint NOT NULL DEFAULT '0' COMMENT '关联分类id',
  `goods_cover_img` varchar(200) DEFAULT NULL COMMENT '保险商品主图',
  `goods_carousel` varchar(500) DEFAULT NULL COMMENT '保险商品轮播图',
  `goods_detail_content` text NOT NULL COMMENT '保险商品详情',
  `original_price` int NOT NULL DEFAULT '1' COMMENT '保险商品价格',
  `selling_price` int NOT NULL DEFAULT '1' COMMENT '保险商品实际售价',
  `tag` varchar(20) NOT NULL DEFAULT '' COMMENT '保险商品标签',
  `goods_sell_status` tinyint NOT NULL DEFAULT '0' COMMENT '保险商品上架状态 1-下架 0-上架',
  `create_user` int NOT NULL DEFAULT '0' COMMENT '添加者主键id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '保险商品添加时间',
  `update_user` int NOT NULL DEFAULT '0' COMMENT '修改者主键id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '保险商品修改时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_insurance_mall_goods_info
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_goods_info` VALUES (1, '短期意外险', '短期保障', 0, NULL, NULL, '短期保障', 50, 50, '', 0, 1, '2021-11-02 16:29:44', 0, '2021-11-02 16:29:44');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_mall_thirdparty
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_mall_thirdparty`;
CREATE TABLE `t_insurance_mall_thirdparty` (
  `seller_user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '第三方公司id',
  `login_user_name` varchar(50) NOT NULL COMMENT '第三方公司登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '第三方公司登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '第三方公司显示昵称',
  `login_mobile` varchar(11) NOT NULL COMMENT '注册手机号',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked` tinyint DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`seller_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='第三方公司账号表';

-- ----------------------------
-- Records of t_insurance_mall_thirdparty
-- ----------------------------
BEGIN;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='会员用户表';

-- ----------------------------
-- Records of t_insurance_mall_user
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_mall_user` VALUES (1, 'sonder', 'sonder', '123123', '13381501606', '', '', 0, 0, '2021-11-02 16:24:08');
INSERT INTO `t_insurance_mall_user` VALUES (2, 'judy', 'judy', '123123', '13381501607', '', '', 0, 0, '2021-11-02 16:24:30');
INSERT INTO `t_insurance_mall_user` VALUES (3, 'sunny', 'sunny', '123123', '13381501608', '', '', 0, 0, '2021-11-02 16:24:48');
INSERT INTO `t_insurance_mall_user` VALUES (4, 'funny', 'funny', '123123', '13381501609', '', '', 0, 0, '2021-11-02 16:25:22');
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
INSERT INTO `t_insurance_personal_insurance_category` VALUES (1, '成人保险');
INSERT INTO `t_insurance_personal_insurance_category` VALUES (2, '老人保险');
INSERT INTO `t_insurance_personal_insurance_category` VALUES (3, '儿童保险');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_travel_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_travel_category`;
CREATE TABLE `t_insurance_travel_category` (
  `travel_category_id` int NOT NULL COMMENT '旅游险种类',
  `travel_category_name` varchar(20) NOT NULL COMMENT '旅游线种类名',
  PRIMARY KEY (`travel_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_insurance_travel_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_travel_category` VALUES (1, '国内旅游');
INSERT INTO `t_insurance_travel_category` VALUES (2, '国外旅游');
INSERT INTO `t_insurance_travel_category` VALUES (3, '团体旅游');
INSERT INTO `t_insurance_travel_category` VALUES (4, '新冠责任');
COMMIT;

-- ----------------------------
-- Table structure for t_insurance_wealth_category
-- ----------------------------
DROP TABLE IF EXISTS `t_insurance_wealth_category`;
CREATE TABLE `t_insurance_wealth_category` (
  `wealth_cate_id` int NOT NULL COMMENT '财富种类分类',
  `wealth_cate_name` varchar(20) NOT NULL COMMENT '财富种类分类名字',
  PRIMARY KEY (`wealth_cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_insurance_wealth_category
-- ----------------------------
BEGIN;
INSERT INTO `t_insurance_wealth_category` VALUES (1, '养老储备');
INSERT INTO `t_insurance_wealth_category` VALUES (2, '子女教育');
INSERT INTO `t_insurance_wealth_category` VALUES (3, '资产继承');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
