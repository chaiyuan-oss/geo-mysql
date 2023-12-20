/*
 Navicat Premium Data Transfer

 Source Server         : laragon-local
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 20/12/2023 17:31:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city_geo_gcj02
-- ----------------------------
DROP TABLE IF EXISTS `city_geo_gcj02`;
CREATE TABLE `city_geo_gcj02`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` int(11) NOT NULL COMMENT '父ID',
  `deep` int(11) NOT NULL COMMENT '层级',
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '简称',
  `ext_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '全称',
  `point` geometry NULL COMMENT '中心点',
  `polygon` geometry NULL COMMENT '边界',
  `code` int(11) NOT NULL COMMENT '城市编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 463 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'geojson表坐标标准gcj02，其他标准经纬度请转换后再使用' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
