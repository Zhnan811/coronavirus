/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100140
 Source Host           : localhost:3306
 Source Schema         : dataworks

 Target Server Type    : MySQL
 Target Server Version : 100140
 File Encoding         : 65001

 Date: 04/02/2020 04:36:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_area
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `level` int(16) DEFAULT NULL COMMENT '等级;1:国,2:省/直辖市/自治区,3:市',
  `parent_id` int(255) DEFAULT NULL COMMENT '上级地区id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '地区名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='地区表';

-- ----------------------------
-- Table structure for t_data_entry_log
-- ----------------------------
DROP TABLE IF EXISTS `t_data_entry_log`;
CREATE TABLE `t_data_entry_log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间日期',
  `data_source_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '数据源名称',
  `entry_time` datetime DEFAULT NULL COMMENT '录入时间日期',
  `data_source_url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '数据源url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_epidemic_situation
-- ----------------------------
DROP TABLE IF EXISTS `t_epidemic_situation`;
CREATE TABLE `t_epidemic_situation` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `location_id` int(255) DEFAULT NULL COMMENT '地区外键',
  `country_id` int(255) DEFAULT NULL COMMENT '数据所属国家id',
  `province_id` int(255) DEFAULT NULL COMMENT '数据所属省id',
  `city_id` int(255) DEFAULT NULL COMMENT '数据所属城市id',
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间',
  `totalConfirmed` int(128) DEFAULT NULL COMMENT '确诊病例数目',
  `totalDoubtful` int(128) DEFAULT NULL COMMENT '疑似病例数目',
  `totalDeath` int(128) DEFAULT NULL COMMENT '死亡病例数目',
  `totalCured` int(128) DEFAULT NULL COMMENT '治愈人数',
  `entry_time` datetime DEFAULT NULL COMMENT '录入本表的时间',
  `entry_log_id` int(255) DEFAULT NULL COMMENT '录入日志表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1153 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='疫情数据表';

SET FOREIGN_KEY_CHECKS = 1;
