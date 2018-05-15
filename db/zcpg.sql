/*
Navicat MySQL Data Transfer

Source Server         : 我的服务器
Source Server Version : 50637
Source Host           : 47.95.255.97:3306
Source Database       : zcpg

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-05-15 16:11:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zp_input_deal
-- ----------------------------
DROP TABLE IF EXISTS `zp_input_deal`;
CREATE TABLE `zp_input_deal` (
  `deal_id` varchar(32) NOT NULL COMMENT '买卖id',
  `organization` varchar(128) DEFAULT NULL COMMENT '机构',
  `province` varchar(16) DEFAULT NULL COMMENT '省份',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `area` varchar(32) DEFAULT NULL COMMENT '区域',
  `min_area` varchar(128) DEFAULT NULL COMMENT '小区',
  `completion_year` varchar(16) DEFAULT NULL COMMENT '建成年份',
  `decoration` varchar(64) DEFAULT NULL COMMENT '装修情况',
  `deal_unit_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '交易单价（单位 元/m^2）',
  `texes_bear` varchar(32) DEFAULT NULL COMMENT '税费承担',
  `data_source` varchar(128) DEFAULT NULL COMMENT '资料来源',
  `orientation` varchar(128) DEFAULT NULL COMMENT '朝向',
  `input_time` varchar(16) DEFAULT NULL COMMENT '录入时间',
  `case_code` varchar(16) NOT NULL COMMENT '案例编码',
  `total_floor` varchar(6) DEFAULT NULL COMMENT '总楼层',
  `floor_height` varchar(16) DEFAULT NULL COMMENT '层高',
  `build_struct` varchar(64) DEFAULT NULL COMMENT '建筑结构',
  `decorate_unit_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '装修单价（元/m^2）',
  `deal_total` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '交易总价（元/m^2）',
  `exact_position` varchar(255) DEFAULT NULL COMMENT '具体位置',
  `housing_type` varchar(32) DEFAULT NULL COMMENT '住宅户型',
  `build_location` varchar(64) DEFAULT NULL COMMENT '楼栋位置',
  `input_user` varchar(32) DEFAULT NULL COMMENT '录入人员',
  `currentfloor` varchar(32) DEFAULT NULL COMMENT '所在楼层',
  `use` varchar(128) DEFAULT NULL COMMENT '用途',
  `covered_area` varchar(64) DEFAULT NULL COMMENT '建筑面积（m^2）',
  `has_elevator` tinyint(1) DEFAULT '0' COMMENT '是有带电梯 0-没有 1-有',
  `deal_time` varchar(16) DEFAULT NULL COMMENT '交易时间',
  `appearance` varchar(255) DEFAULT NULL COMMENT '外观',
  `remark` text,
  `create_time` varchar(16) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(16) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '0-未删除  1-已删除',
  `deleted_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`deal_id`,`case_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息录入（买卖）';

-- ----------------------------
-- Records of zp_input_deal
-- ----------------------------

-- ----------------------------
-- Table structure for zp_input_lease
-- ----------------------------
DROP TABLE IF EXISTS `zp_input_lease`;
CREATE TABLE `zp_input_lease` (
  `lease_id` varchar(32) NOT NULL COMMENT '买卖id',
  `organization` varchar(128) DEFAULT NULL COMMENT '机构',
  `province` varchar(16) DEFAULT NULL COMMENT '省份',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `area` varchar(32) DEFAULT NULL COMMENT '区域',
  `min_area` varchar(128) DEFAULT NULL COMMENT '小区',
  `completion_year` varchar(16) DEFAULT NULL COMMENT '建成年份',
  `decoration` varchar(64) DEFAULT NULL COMMENT '装修情况',
  `deal_unit_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '交易单价（单位 元/m^2）',
  `texes_bear` varchar(32) DEFAULT NULL COMMENT '税费承担',
  `data_source` varchar(128) DEFAULT NULL COMMENT '资料来源',
  `indoor_equipment` text COMMENT '室内设备',
  `input_time` varchar(16) DEFAULT NULL COMMENT '录入时间',
  `case_code` varchar(16) NOT NULL COMMENT '案例编码',
  `total_floor` varchar(6) DEFAULT NULL COMMENT '总楼层',
  `floor_height` varchar(16) DEFAULT NULL COMMENT '层高',
  `build_struct` varchar(64) DEFAULT NULL COMMENT '建筑结构',
  `decorate_unit_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '装修单价（元/m^2）',
  `deal_total` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '交易总价（元/m^2）',
  `exact_position` varchar(255) DEFAULT NULL COMMENT '具体位置',
  `housing_type` varchar(32) DEFAULT NULL COMMENT '住宅户型',
  `cash_pledge` varchar(64) DEFAULT NULL COMMENT '押金',
  `input_user` varchar(32) DEFAULT NULL COMMENT '录入人员',
  `currentfloor` varchar(32) DEFAULT NULL COMMENT '所在楼层',
  `use` varchar(128) DEFAULT NULL COMMENT '用途',
  `covered_area` varchar(64) DEFAULT NULL COMMENT '建筑面积（m^2）',
  `has_elevator` tinyint(1) DEFAULT '0' COMMENT '是有带电梯 0-没有 1-有',
  `deal_time` varchar(16) DEFAULT NULL COMMENT '交易时间',
  `deal_type` varchar(16) DEFAULT NULL COMMENT '交易方式',
  `remark` text,
  `create_time` varchar(16) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(16) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '0-未删除  1-已删除',
  `deleted_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`lease_id`,`case_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息录入（租赁）';

-- ----------------------------
-- Records of zp_input_lease
-- ----------------------------

-- ----------------------------
-- Table structure for zp_user
-- ----------------------------
DROP TABLE IF EXISTS `zp_user`;
CREATE TABLE `zp_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `nickname` varchar(16) DEFAULT NULL COMMENT '用户昵称',
  `department` varchar(32) DEFAULT NULL COMMENT '所属部门',
  `post` varchar(32) DEFAULT NULL COMMENT '岗位',
  `status` tinyint(1) DEFAULT '0' COMMENT '账号状态 0-正常 1-停用',
  `identity` tinyint(1) DEFAULT '2' COMMENT '账号身份 1-超级管理员 2-普通用户',
  `create_time` varchar(16) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(16) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  `deleted_time` varchar(16) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`user_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of zp_user
-- ----------------------------
INSERT INTO `zp_user` VALUES ('10000000000000000000000000000000', 'admin', '123123', '超级管理员', 'boss', 'boss', '0', '1', '1526367957', '', '0', null);

-- ----------------------------
-- Table structure for zp_user_info
-- ----------------------------
DROP TABLE IF EXISTS `zp_user_info`;
CREATE TABLE `zp_user_info` (
  `user_info_id` varchar(32) NOT NULL COMMENT '用户信息id',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `home` varchar(255) DEFAULT NULL COMMENT '家乡',
  `birthday` varchar(16) DEFAULT NULL COMMENT '生日',
  `fax` varchar(64) DEFAULT NULL COMMENT '传真',
  `contact_addr` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `resume` text COMMENT '个人简历',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别 0-未知 1-男 2-女',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  `email` varchar(64) DEFAULT NULL COMMENT 'email',
  `head_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` varchar(16) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(16) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of zp_user_info
-- ----------------------------
INSERT INTO `zp_user_info` VALUES ('10000000000000000000000000000000', '10000000000000000000000000000000', null, null, null, null, null, null, null, null, null, null, null);
