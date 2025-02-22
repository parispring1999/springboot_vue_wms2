/*
 Navicat MySQL Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : wms

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 22/02/2025 15:34:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for eac_node_qua
-- ----------------------------
DROP TABLE IF EXISTS `eac_node_qua`;
CREATE TABLE `eac_node_qua`  (
  `eac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `st` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `rc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `vu` json NULL,
  PRIMARY KEY (`eac`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eac_node_qua
-- ----------------------------
INSERT INTO `eac_node_qua` VALUES ('EAC0001', '9', '9', '0', '3', '0', '0.3', '0', '0', '5', '{\"TA0001\": 4, \"TA0002\": 4.2, \"TA0003\": 4.2, \"TA0004\": 4.2, \"TA0005\": 4.2, \"TA0006\": 4.2, \"TA0007\": 4.1, \"TA0008\": 4, \"TA0011\": 4.2, \"TA0040\": 4.1}');
INSERT INTO `eac_node_qua` VALUES ('EAC0002', '9', '3', '6', '3', '0', '0.3', '0', '0', '10', '{\"TA0003\": 5.1, \"TA0005\": 5.1, \"TA0006\": 4, \"TA0008\": 4, \"TA0009\": 4, \"TA0010\": 5.8, \"TA0011\": 5.2, \"TA0040\": 4}');
INSERT INTO `eac_node_qua` VALUES ('EAC0003', '9', '12', '0', '15', '6', '0.8', '0.8', '0', '30', '{\"TA0001\": 3.5, \"TA0002\": 3.5, \"TA0003\": 4.6, \"TA0004\": 3.8, \"TA0005\": 3.9, \"TA0006\": 4.4, \"TA0008\": 3.8, \"TA0011\": 4.2, \"TA0040\": 3.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0004', '9', '3', '9', '15', '0', '0.5', '0', '0', '20', '{\"TA0009\": 4, \"TA0010\": 3.5, \"TA0011\": 5.7}');
INSERT INTO `eac_node_qua` VALUES ('EAC0005', '0', '3', '0', '9', '0', '0', '0', '0', '30', '{\"TA0001\": 4.9, \"TA0002\": 5.2, \"TA0003\": 5, \"TA0004\": 5.2, \"TA0005\": 5.4, \"TA0006\": 5, \"TA0007\": 4.9, \"TA0008\": 5.2, \"TA0009\": 4.2, \"TA0010\": 4, \"TA0011\": 4.5, \"TA0040\": 4.3, \"TA0043\": 4.3}');
INSERT INTO `eac_node_qua` VALUES ('EAC0006', '9', '9', '3', '15', '9', '0', '0.3', '0.3', '30', '{\"TA0001\": 7.5, \"TA0002\": 7.5, \"TA0003\": 7.5, \"TA0004\": 7.5, \"TA0005\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0008\": 7.5, \"TA0009\": 7.5, \"TA0011\": 7.5, \"TA0040\": 7.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0007', '9', '3', '15', '15', '0', '0', '0.2', '0.2', '30', '{\"TA0001\": 7.5, \"TA0003\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0009\": 7.5, \"TA0040\": 7.5, \"TA0043\": 7.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0008', '0', '0', '0', '6', '0', '0', '0', '0', '5', '{\"TA0001\": 5.4, \"TA0003\": 5.4, \"TA0004\": 5.4, \"TA0005\": 5.4, \"TA0007\": 5.4, \"TA0009\": 6.5, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua` VALUES ('EAC0009', '0', '9', '3', '6', '0', '0.3', '0.3', '0.3', '0', '{\"TA0001\": 4.6, \"TA0009\": 5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0010', '6', '6', '3', '9', '0', '0.2', '0.5', '0.3', '5', '{\"TA0001\": 3, \"TA0007\": 3.9, \"TA0008\": 3, \"TA0009\": 6.2, \"TA0010\": 4.3, \"TA0011\": 3.2}');
INSERT INTO `eac_node_qua` VALUES ('EAC0011', '0', '3', '0', '6', '6', '0.3', '0', '0', '5', '{\"TA0001\": 5.4, \"TA0002\": 5.4, \"TA0003\": 5.4, \"TA0004\": 5.4, \"TA0005\": 5.4, \"TA0006\": 5.4, \"TA0007\": 4.7, \"TA0008\": 5.4, \"TA0009\": 5.4, \"TA0010\": 5.3, \"TA0011\": 5.4, \"TA0040\": 6.5, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua` VALUES ('EAC0012', '9', '15', '3', '15', '0', '0.5', '0', '0', '30', '{\"TA0001\": 6.4, \"TA0002\": 6.5, \"TA0003\": 6.4, \"TA0004\": 6.4, \"TA0005\": 6.4, \"TA0006\": 5.8, \"TA0007\": 5.2, \"TA0009\": 5.2, \"TA0011\": 7, \"TA0040\": 6.2, \"TA0043\": 5.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0013', '12', '6', '3', '12', '0', '0', '0', '0', '25', '{\"TA0002\": 4, \"TA0005\": 4, \"TA0011\": 4.8, \"TA0040\": 4}');
INSERT INTO `eac_node_qua` VALUES ('EAC0014', '0', '6', '3', '12', '3', '0.6', '0.5', '0.2', '20', '{\"TA0001\": 4.3, \"TA0002\": 4.7, \"TA0003\": 5.2, \"TA0004\": 4.7, \"TA0005\": 5.8, \"TA0006\": 4.7, \"TA0007\": 4.8, \"TA0008\": 4.9, \"TA0009\": 5.4, \"TA0011\": 5.4, \"TA0040\": 4.7}');
INSERT INTO `eac_node_qua` VALUES ('EAC0015', '6', '9', '3', '15', '0', '0.5', '0', '0', '30', '{\"TA0002\": 5, \"TA0005\": 4.9, \"TA0007\": 5.4, \"TA0008\": 7.5, \"TA0009\": 5.1, \"TA0010\": 7.5, \"TA0011\": 7.5, \"TA0040\": 5.8, \"TA0043\": 5.1}');
INSERT INTO `eac_node_qua` VALUES ('EAC0016', '3', '0', '15', '9', '6', '0.3', '0.3', '0.3', '20', '{\"TA0001\": 5.4, \"TA0002\": 6.2, \"TA0003\": 5.4, \"TA0005\": 5.8, \"TA0006\": 5.4, \"TA0007\": 5.4, \"TA0008\": 4.7, \"TA0009\": 5.4, \"TA0010\": 5.3, \"TA0011\": 5.4, \"TA0040\": 5.4, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua` VALUES ('EAC0017', '0', '0', '0', '6', '24', '0.8', '0.8', '0.8', '0', '{\"TA0009\": 6.2}');
INSERT INTO `eac_node_qua` VALUES ('EAC0018', '6', '3', '3', '6', '0', '0.5', '0.5', '0.5', '5', '{\"TA0001\": 6.2, \"TA0002\": 5.5, \"TA0003\": 5.5, \"TA0004\": 5.2, \"TA0005\": 5.9, \"TA0006\": 5.9, \"TA0007\": 6.2, \"TA0008\": 6.2, \"TA0009\": 6.2, \"TA0010\": 5.4, \"TA0011\": 6.2, \"TA0040\": 6.2}');
INSERT INTO `eac_node_qua` VALUES ('EAC0019', '6', '9', '0', '12', '21', '0.4', '1', '1', '0', '{\"TA0003\": 6.2, \"TA0004\": 6.2, \"TA0005\": 4.9, \"TA0040\": 4.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0020', '3', '9', '0', '9', '12', '0.4', '0.7', '0.7', '0', '{\"TA0001\": 3.4, \"TA0002\": 6.2, \"TA0008\": 2.4, \"TA0011\": 4.3}');
INSERT INTO `eac_node_qua` VALUES ('EAC0021', '12', '12', '6', '9', '0', '0.3', '0.7', '0.7', '0', '{\"TA0001\": 4, \"TA0002\": 5.7, \"TA0003\": 6.2, \"TA0008\": 2.4, \"TA0011\": 4.3}');
INSERT INTO `eac_node_qua` VALUES ('EAC0022', '9', '6', '3', '15', '0', '0', '0.2', '0.2', '30', '{\"TA0001\": 7.5, \"TA0002\": 7.5, \"TA0003\": 7.5, \"TA0004\": 7.5, \"TA0005\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0009\": 7.5, \"TA0040\": 7.5, \"TA0043\": 7.5}');
INSERT INTO `eac_node_qua` VALUES ('EAC0023', '3', '6', '0', '9', '3', '0', '0', '0', '30', '{\"TA0002\": 4.8, \"TA0004\": 4.8, \"TA0006\": 4.8, \"TA0007\": 4.8, \"TA0008\": 4.8}');

-- ----------------------------
-- Table structure for eac_node_qua_float
-- ----------------------------
DROP TABLE IF EXISTS `eac_node_qua_float`;
CREATE TABLE `eac_node_qua_float`  (
  `eac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cp` float NULL DEFAULT NULL,
  `st` float NULL DEFAULT NULL,
  `nb` float NULL DEFAULT NULL,
  `ot` float NULL DEFAULT NULL,
  `bi` float NULL DEFAULT NULL,
  `rc` float NULL DEFAULT NULL,
  `ri` float NULL DEFAULT NULL,
  `ra` float NULL DEFAULT NULL,
  `ia` float NULL DEFAULT NULL,
  `vu` json NULL,
  PRIMARY KEY (`eac`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eac_node_qua_float
-- ----------------------------
INSERT INTO `eac_node_qua_float` VALUES ('EAC0001', 9, 9, 0, 3, 0, 0.3, 0, 0, 5, '{\"TA0001\": 4, \"TA0002\": 4.2, \"TA0003\": 4.2, \"TA0004\": 4.2, \"TA0005\": 4.2, \"TA0006\": 4.2, \"TA0007\": 4.1, \"TA0008\": 4, \"TA0011\": 4.2, \"TA0040\": 4.1}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0002', 9, 3, 6, 3, 0, 0.3, 0, 0, 10, '{\"TA0003\": 5.1, \"TA0005\": 5.1, \"TA0006\": 4, \"TA0008\": 4, \"TA0009\": 4, \"TA0010\": 5.8, \"TA0011\": 5.2, \"TA0040\": 4}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0003', 9, 12, 0, 15, 6, 0.8, 0.8, 0, 30, '{\"TA0001\": 3.5, \"TA0002\": 3.5, \"TA0003\": 4.6, \"TA0004\": 3.8, \"TA0005\": 3.9, \"TA0006\": 4.4, \"TA0008\": 3.8, \"TA0011\": 4.2, \"TA0040\": 3.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0004', 9, 3, 9, 15, 0, 0.5, 0, 0, 20, '{\"TA0009\": 4, \"TA0010\": 3.5, \"TA0011\": 5.7}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0005', 0, 3, 0, 9, 0, 0, 0, 0, 30, '{\"TA0001\": 4.9, \"TA0002\": 5.2, \"TA0003\": 5, \"TA0004\": 5.2, \"TA0005\": 5.4, \"TA0006\": 5, \"TA0007\": 4.9, \"TA0008\": 5.2, \"TA0009\": 4.2, \"TA0010\": 4, \"TA0011\": 4.5, \"TA0040\": 4.3, \"TA0043\": 4.3}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0006', 9, 9, 3, 15, 9, 0, 0.3, 0.3, 30, '{\"TA0001\": 7.5, \"TA0002\": 7.5, \"TA0003\": 7.5, \"TA0004\": 7.5, \"TA0005\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0008\": 7.5, \"TA0009\": 7.5, \"TA0011\": 7.5, \"TA0040\": 7.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0007', 9, 3, 15, 15, 0, 0, 0.2, 0.2, 30, '{\"TA0001\": 7.5, \"TA0003\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0009\": 7.5, \"TA0040\": 7.5, \"TA0043\": 7.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0008', 0, 0, 0, 6, 0, 0, 0, 0, 5, '{\"TA0001\": 5.4, \"TA0003\": 5.4, \"TA0004\": 5.4, \"TA0005\": 5.4, \"TA0007\": 5.4, \"TA0009\": 6.5, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0009', 0, 9, 3, 6, 0, 0.3, 0.3, 0.3, 0, '{\"TA0001\": 4.6, \"TA0009\": 5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0010', 6, 6, 3, 9, 0, 0.2, 0.5, 0.3, 5, '{\"TA0001\": 3, \"TA0007\": 3.9, \"TA0008\": 3, \"TA0009\": 6.2, \"TA0010\": 4.3, \"TA0011\": 3.2}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0011', 0, 3, 0, 6, 6, 0.3, 0, 0, 5, '{\"TA0001\": 5.4, \"TA0002\": 5.4, \"TA0003\": 5.4, \"TA0004\": 5.4, \"TA0005\": 5.4, \"TA0006\": 5.4, \"TA0007\": 4.7, \"TA0008\": 5.4, \"TA0009\": 5.4, \"TA0010\": 5.3, \"TA0011\": 5.4, \"TA0040\": 6.5, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0012', 9, 15, 3, 15, 0, 0.5, 0, 0, 30, '{\"TA0001\": 6.4, \"TA0002\": 6.5, \"TA0003\": 6.4, \"TA0004\": 6.4, \"TA0005\": 6.4, \"TA0006\": 5.8, \"TA0007\": 5.2, \"TA0009\": 5.2, \"TA0011\": 7, \"TA0040\": 6.2, \"TA0043\": 5.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0013', 12, 6, 3, 12, 0, 0, 0, 0, 25, '{\"TA0002\": 4, \"TA0005\": 4, \"TA0011\": 4.8, \"TA0040\": 4}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0014', 0, 6, 3, 12, 3, 0.6, 0.5, 0.2, 20, '{\"TA0001\": 4.3, \"TA0002\": 4.7, \"TA0003\": 5.2, \"TA0004\": 4.7, \"TA0005\": 5.8, \"TA0006\": 4.7, \"TA0007\": 4.8, \"TA0008\": 4.9, \"TA0009\": 5.4, \"TA0011\": 5.4, \"TA0040\": 4.7}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0015', 6, 9, 3, 15, 0, 0.5, 0, 0, 30, '{\"TA0002\": 5, \"TA0005\": 4.9, \"TA0007\": 5.4, \"TA0008\": 7.5, \"TA0009\": 5.1, \"TA0010\": 7.5, \"TA0011\": 7.5, \"TA0040\": 5.8, \"TA0043\": 5.1}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0016', 3, 0, 15, 9, 6, 0.3, 0.3, 0.3, 20, '{\"TA0001\": 5.4, \"TA0002\": 6.2, \"TA0003\": 5.4, \"TA0005\": 5.8, \"TA0006\": 5.4, \"TA0007\": 5.4, \"TA0008\": 4.7, \"TA0009\": 5.4, \"TA0010\": 5.3, \"TA0011\": 5.4, \"TA0040\": 5.4, \"TA0043\": 5.4}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0017', 0, 0, 0, 6, 24, 0.8, 0.8, 0.8, 0, '{\"TA0009\": 6.2}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0018', 6, 3, 3, 6, 0, 0.5, 0.5, 0.5, 5, '{\"TA0001\": 6.2, \"TA0002\": 5.5, \"TA0003\": 5.5, \"TA0004\": 5.2, \"TA0005\": 5.9, \"TA0006\": 5.9, \"TA0007\": 6.2, \"TA0008\": 6.2, \"TA0009\": 6.2, \"TA0010\": 5.4, \"TA0011\": 6.2, \"TA0040\": 6.2}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0019', 6, 9, 0, 12, 21, 0.4, 1, 1, 0, '{\"TA0003\": 6.2, \"TA0004\": 6.2, \"TA0005\": 4.9, \"TA0040\": 4.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0020', 3, 9, 0, 9, 12, 0.4, 0.7, 0.7, 0, '{\"TA0001\": 3.4, \"TA0002\": 6.2, \"TA0008\": 2.4, \"TA0011\": 4.3}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0021', 12, 12, 6, 9, 0, 0.3, 0.7, 0.7, 0, '{\"TA0001\": 4, \"TA0002\": 5.7, \"TA0003\": 6.2, \"TA0008\": 2.4, \"TA0011\": 4.3}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0022', 9, 6, 3, 15, 0, 0, 0.2, 0.2, 30, '{\"TA0001\": 7.5, \"TA0002\": 7.5, \"TA0003\": 7.5, \"TA0004\": 7.5, \"TA0005\": 7.5, \"TA0006\": 7.5, \"TA0007\": 7.5, \"TA0009\": 7.5, \"TA0040\": 7.5, \"TA0043\": 7.5}');
INSERT INTO `eac_node_qua_float` VALUES ('EAC0023', 3, 6, 0, 9, 3, 0, 0, 0, 30, '{\"TA0002\": 4.8, \"TA0004\": 4.8, \"TA0006\": 4.8, \"TA0007\": 4.8, \"TA0008\": 4.8}');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL,
  `menuCode` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
  `menuName` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单名字',
  `menuLevel` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单级别',
  `menuParentCode` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单的父code',
  `menuClick` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '点击触发的函数',
  `menuRight` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限 0超级管理员，1表示管理员，2表示普通用户，可以用逗号组合使用',
  `menuComponent` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `menuIcon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '001', '管理员管理', '1', NULL, 'Admin', '0', 'admin/AdminManage.vue', 'el-icon-s-custom');
INSERT INTO `menu` VALUES (2, '002', '用户管理', '1', NULL, 'User', '0,1', 'user/UserManage.vue', 'el-icon-user-solid');
INSERT INTO `menu` VALUES (3, '003', '查询攻击技术', '1', NULL, 'TNode', '0,1,2', 'tnode/TNodeSelect', 'el-icon-search');
INSERT INTO `menu` VALUES (4, '004', '查询技术对应活动', '1', NULL, 'TNodeRel', '0,1,2', 'tnode/TNodeRelSelect', 'el-icon-search');
INSERT INTO `menu` VALUES (5, '005', '查询防御反制活动', '1', NULL, 'EacNode', '0,1,2', 'eacnode/EacNodeSelect', 'el-icon-search');
INSERT INTO `menu` VALUES (6, '006', '查询战术包含的技术', '1', NULL, 'TANode', '0,1,2', 'tanode/TANodeRelSelect', 'el-icon-search');
INSERT INTO `menu` VALUES (7, '007', '攻击技术量化值', '1', NULL, 'TNodeQua', '0,1,2', 'tnodequa/TNodeQuaManage', 'el-icon-s-data');
INSERT INTO `menu` VALUES (8, '008', '防御反制活动量化值', '1', NULL, 'EacNodeQua', '0,1,2', 'eacnodequa/EacNodeQuaManage', 'el-icon-s-data');
INSERT INTO `menu` VALUES (9, '009', '计算主机价值', '1', NULL, 'HostValue', '0,1,2', 'hostvalue/HostValue', 'el-icon-cpu');
INSERT INTO `menu` VALUES (10, '0010', '计算公式取值(攻击）', '1', NULL, 'TNodeQuaCom', '0,1,2', 'tnodequacom/TNodeQuaCom', 'el-icon-cpu');
INSERT INTO `menu` VALUES (11, '0011', '计算公式取值(防御）', '1', NULL, 'EacNodeQuaCom', '0,1,2', 'eacnodequacom/EacNodeQuaCom', 'el-icon-cpu');
INSERT INTO `menu` VALUES (12, '0012', '计算博弈均衡', '1', NULL, 'GameCom', '0,1,2', 'gamecom/GameCom', 'el-icon-cpu');
INSERT INTO `menu` VALUES (13, '0013', '案例计算与防御者决策', '1', NULL, 'Example', '0,1,2', 'example/Example', 'el-icon-guide');

-- ----------------------------
-- Table structure for t_node_qua
-- ----------------------------
DROP TABLE IF EXISTS `t_node_qua`;
CREATE TABLE `t_node_qua`  (
  `t` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `rs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `lia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `av` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`t`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_node_qua
-- ----------------------------
INSERT INTO `t_node_qua` VALUES ('T1001', '10', '0.8', '1', '0.2', '0.8', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1003', '20', '0.8', '0.7', '0.5', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1005', '10', '0.7', '1', '0.6', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1006', '20', '0.6', '0.7', '0.6', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1007', '20', '0.6', '1', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1008', '20', '0.6', '0.7', '0.2', '0.1', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1010', '20', '0.6', '0.7', '0.3', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1011', '20', '0.6', '0.7', '0.7', '0.4', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1012', '20', '0.6', '0.7', '1', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1014', '30', '0.6', '1', '0.2', '0.4', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1016', '30', '1', '1', '0.7', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1018', '20', '0.6', '0.7', '0.3', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1020', '20', '0.6', '0.7', '1', '0.3', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1021', '17', '0.8', '0.6', '0.8', '0.8', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1025', '20', '0.6', '0.7', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1027', '18', '0.7', '1', '0.5', '0.2', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1029', '20', '0.6', '0.7', '1', '0.2', '0.2', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1030', '20', '0.6', '0.7', '1', '0.3', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1033', '20', '0.8', '1', '0.3', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1036', '20', '0.6', '0.7', '0', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1037', '20', '0.6', '0.7', '0', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1039', '10', '0.6', '1', '0.6', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1040', '30', '0.7', '0.7', '0.7', '0', '0', '0.5', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1041', '20', '0.6', '0.7', '1', '0.4', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1046', '10', '0.8', '1', '0.5', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1047', '20', '0.6', '0.7', '0.2', '0.4', '0.2', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1048', '20', '0.6', '0.7', '0.9', '0.6', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1049', '30', '1', '1', '0.4', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1052', '20', '0.6', '0.7', '1', '0.2', '0', '1', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1053', '20', '0.6', '0.7', '0.2', '0.4', '0.2', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1055', '20', '0.7', '0.3', '0', '0.6', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1056', '20', '0.6', '0.9', '0.5', '0', '0', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1057', '20', '0.4', '0.7', '0.8', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1059', '20', '0.6', '0.7', '0.6', '0.6', '0.6', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1068', '20', '0.6', '0.7', '0.2', '0.7', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1069', '30', '1', '0.3', '0.7', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1070', '20', '0.4', '0.7', '0', '0.9', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1071', '20', '0.6', '0.7', '0.6', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1072', '30', '0.6', '1', '0.2', '0.6', '0.4', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1074', '20', '0.6', '0.7', '0.2', '0.6', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1078', '20', '0.4', '0.9', '0.7', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1080', '10', '1', '1', '0.8', '1', '0.7', '0.25', '0.5', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1082', '15', '0.8', '1', '0.5', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1083', '10', '0.4', '0.7', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1087', '20', '0.6', '0.7', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1090', '20', '0.8', '0.5', '0.6', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1091', '20', '0.8', '0.7', '0', '0.8', '0.2', '1', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1092', '20', '0.8', '0.7', '0.6', '0', '0', '1', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1095', '20', '0.6', '0.7', '0.4', '0', '0', '0.5', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1098', '20', '0.6', '0.7', '0.2', '0.5', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1102', '20', '0.6', '0.7', '0.6', '0.2', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1104', '20', '0.6', '0.7', '0.3', '0.7', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1105', '20', '0.6', '0.7', '0.2', '0.4', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1106', '20', '0.6', '0.7', '0.4', '0.4', '0.2', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1110', '20', '0.8', '0.6', '0.3', '0', '0.1', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1111', '15', '0.6', '1', '0.4', '0', '0', '1', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1112', '20', '0.6', '0.7', '0.3', '0.8', '0.2', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1113', '30', '0.6', '0.7', '0.5', '0', '0', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1114', '30', '0.8', '0.3', '0.9', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1115', '30', '0.8', '0.7', '0.8', '0', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1119', '20', '0.8', '0.7', '0.9', '0.5', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1120', '20', '0.8', '0.3', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1123', '20', '0.4', '0.3', '0.8', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1124', '20', '1', '0.3', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1125', '20', '0.4', '0.3', '0.6', '0', '0', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1127', '20', '0.8', '0.7', '0', '0.6', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1129', '20', '0.6', '0.7', '0.2', '0.4', '0.1', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1132', '20', '0.6', '0.7', '0.2', '0.6', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1133', '30', '0.8', '0.3', '0.4', '0.2', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1134', '30', '0.8', '0.3', '0.5', '0.8', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1135', '10', '0.8', '0.7', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1136', '20', '0.6', '0.7', '0', '0.8', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1137', '20', '0.6', '0.7', '0', '0.2', '0', '0.75', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1140', '20', '0.6', '0.7', '0.2', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1176', '20', '0.6', '0.7', '0.1', '0.4', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1185', '10', '0.5', '0.9', '0.4', '0.7', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1187', '20', '0.6', '0.7', '0.6', '0', '0', '0.5', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1189', '20', '0.6', '0.7', '0.4', '0.8', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1190', '10', '0.6', '1', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1195', '23', '0.8', '0.4', '0.4', '0.4', '0.1', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1197', '20', '0.6', '0.7', '0', '0.4', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1199', '20', '0.6', '0.7', '0.4', '0.2', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1200', '20', '0.8', '0.3', '0.3', '0.8', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1201', '20', '0.6', '0.7', '0.7', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1202', '20', '0.6', '0.7', '0', '0.8', '0.2', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1203', '20', '0.6', '0.7', '0.6', '0.8', '0.6', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1204', '20', '0.6', '0.7', '0.6', '0.4', '0', '0.25', '0.5', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1205', '20', '0.6', '0.7', '0.6', '0.4', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1207', '20', '0.6', '0.7', '0', '0.7', '0.3', '0.75', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1210', '20', '0.6', '0.7', '0.4', '0.1', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1211', '20', '0.6', '0.7', '0', '0.6', '0.4', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1212', '20', '0.6', '0.7', '0.5', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1213', '20', '0.8', '0.7', '0.8', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1216', '20', '0.6', '0.7', '0.2', '0.7', '0.4', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1217', '10', '0.8', '1', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1218', '10', '0.8', '1', '0.3', '0.8', '0.5', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1219', '20', '0.6', '0.7', '0.6', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1220', '10', '0.7', '1', '0.2', '0.2', '0.2', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1221', '10', '0.8', '1', '0.1', '0.5', '0.2', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1222', '20', '0.6', '0.7', '0.5', '0.8', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1480', '20', '0.6', '0.7', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1482', '20', '0.6', '0.7', '0.5', '0', '0', '0.75', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1484', '20', '0.6', '0.7', '0', '0.7', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1485', '20', '0.6', '0.7', '0', '0.9', '0.9', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1486', '20', '0.6', '0.7', '0.3', '0.7', '0.6', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1489', '20', '0.6', '0.7', '0', '0.8', '0.8', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1490', '20', '0.6', '0.7', '0', '1', '0.5', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1491', '20', '0.8', '0.7', '0.1', '0.9', '0.4', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1495', '20', '0.6', '0.7', '0', '0.8', '1', '0.75', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1496', '20', '0.6', '0.7', '0.1', '0.6', '0.7', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1497', '20', '0.6', '0.7', '0.1', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1498', '10', '1', '0.7', '0', '0.3', '1', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1499', '10', '1', '0.3', '0', '0.3', '1', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1505', '15', '0.8', '1', '0', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1518', '10', '0.6', '0.7', '0.4', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1525', '20', '0.6', '0.7', '0', '0.7', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1526', '20', '0.6', '0.7', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1527', '20', '0.6', '0.7', '0.9', '0.4', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1528', '20', '0.6', '0.7', '0.3', '0', '0', '0.25', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1529', '20', '0.6', '0.7', '0', '0.7', '0.6', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1530', '20', '0.8', '0.7', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1531', '20', '0.8', '0.7', '0.2', '0.7', '0.8', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1534', '20', '0.6', '0.7', '0.9', '0.3', '0', '0.5', '0.5', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1535', '20', '0.8', '0.7', '0.2', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1538', '20', '0.6', '0.7', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1539', '30', '0.8', '0.3', '0.8', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1542', '30', '0.7', '1', '0', '1', '0', '0.75', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1543', '27', '0.7', '0.6', '0.2', '0.8', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1546', '13', '0.8', '0.7', '0.2', '0.6', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1547', '28', '0.7', '0.6', '0', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1548', '17', '0.7', '0.6', '0.3', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1550', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1552', '13', '0.6', '0.6', '0.2', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1553', '10', '0.7', '0.7', '0.2', '0.6', '0.4', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1554', '10', '0.8', '1', '0.6', '0.6', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1555', '15', '0.7', '0.9', '0.5', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1556', '10', '0.8', '0.7', '0.4', '0.5', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1557', '20', '0.9', '0.9', '0.4', '0.4', '0.2', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1558', '25', '1', '0.7', '0.8', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1559', '20', '0.6', '0.7', '0.4', '0.6', '0.4', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1560', '20', '0.6', '0.7', '0.2', '0.5', '0', '0', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1561', '20', '0.6', '0.7', '0', '1', '1', '0.75', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1562', '20', '0.4', '0.7', '0.2', '0.6', '0.5', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1563', '20', '0.2', '1', '0', '0.3', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1564', '20', '0.6', '0.7', '0', '0.3', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1565', '30', '0.8', '0.7', '0.2', '1', '0.4', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1566', '30', '0.7', '0.3', '0.8', '0', '0', '0.25', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1567', '20', '0.6', '0.7', '0.9', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1568', '20', '0.6', '0.7', '0.5', '0.1', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1569', '20', '0.6', '0.7', '0.2', '0.4', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1570', '20', '0.6', '0.7', '0', '0.8', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1571', '20', '0.6', '0.7', '0.6', '0.2', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1572', '20', '0.6', '0.7', '0.6', '0.4', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1573', '20', '0.6', '0.7', '0.4', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1574', '23', '0.8', '0.5', '0', '0.8', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1578', '20', '0.6', '0.7', '0.2', '0.4', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1580', '20', '0.6', '0.7', '0.3', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1583', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1584', '20', '0.6', '0.7', '0.2', '0', '0.6', '0.5', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1585', '20', '0.6', '0.7', '0.2', '0.4', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1586', '20', '0.8', '0.7', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1587', '10', '0.2', '1', '0.2', '0.1', '0.1', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1588', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1589', '10', '0.8', '0.7', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1590', '30', '1', '1', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1591', '20', '0.6', '0.7', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1592', '15', '0.8', '0.7', '0.6', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1593', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1594', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1595', '10', '0.8', '1', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1596', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1597', '20', '0.6', '0.7', '0.7', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1598', '30', '0.7', '0.3', '0.7', '0', '0', '0.25', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1599', '20', '0.8', '0.7', '0.2', '0.5', '0', '0.5', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1600', '10', '0.8', '0.7', '0.3', '0.3', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1601', '20', '0.6', '0.7', '0.6', '0.9', '0.3', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1602', '20', '0.8', '0.7', '0.9', '0', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1606', '30', '0.8', '0.3', '0.8', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1608', '20', '0.6', '0.7', '0.4', '0.6', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1609', '20', '0.6', '0.7', '0.2', '0.4', '0.2', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1610', '20', '0.6', '0.7', '0', '0.8', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1611', '20', '1', '1', '0', '0.5', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1612', '20', '0.6', '0.7', '0', '0.3', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1613', '20', '0.6', '0.7', '0.3', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1614', '20', '1', '1', '0.2', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1615', '30', '1', '0.3', '0.8', '0', '0', '0.75', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1619', '20', '0.6', '0.7', '0.5', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1620', '20', '0.4', '0.7', '0', '0.8', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1621', '20', '0.6', '0.7', '0.5', '0', '0', '0.25', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1622', '20', '0.6', '0.7', '0', '0.2', '0', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1647', '20', '0.6', '0.7', '0', '0.7', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1648', '20', '0.6', '0.7', '0.2', '0.4', '0.1', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1649', '20', '0.6', '0.7', '0.4', '0', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1650', '20', '0.6', '0.7', '0.8', '0', '0', '0.5', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1651', '20', '0.6', '0.7', '0.2', '0.4', '0.2', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1652', '20', '0.6', '0.7', '0.4', '0', '0', '0.75', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1653', '20', '0.6', '0.7', '0', '0.3', '0', '0.25', '1', '0');
INSERT INTO `t_node_qua` VALUES ('T1654', '20', '0.6', '0.7', '0.8', '0', '0', '0.25', '0.5', '0');
INSERT INTO `t_node_qua` VALUES ('T1656', '20', '0.6', '0.7', '0.8', '0', '0.2', '0.25', '0', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1657', '20', '0.6', '0.7', '0.8', '0', '0.6', '0.25', '0.5', '0.5');
INSERT INTO `t_node_qua` VALUES ('T1659', '20', '0.6', '0.7', '0.5', '0.8', '0', '0.25', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1665', '20', '0.6', '0.7', '0.2', '0', '0', '0', '0', '0');
INSERT INTO `t_node_qua` VALUES ('T1666', '20', '0.6', '0.7', '0.2', '0.3', '0', '0.25', '1', '0');

-- ----------------------------
-- Table structure for t_node_qua_float
-- ----------------------------
DROP TABLE IF EXISTS `t_node_qua_float`;
CREATE TABLE `t_node_qua_float`  (
  `t` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `rs` float(255, 2) NULL DEFAULT NULL,
  `sa` float(255, 2) NULL DEFAULT NULL,
  `lia` float(255, 2) NULL DEFAULT NULL,
  `pc` float(255, 2) NULL DEFAULT NULL,
  `pi` float(255, 2) NULL DEFAULT NULL,
  `pa` float(255, 2) NULL DEFAULT NULL,
  `av` float(255, 2) NULL DEFAULT NULL,
  `pr` float(255, 2) NULL DEFAULT NULL,
  `ui` float(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`t`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_node_qua_float
-- ----------------------------
INSERT INTO `t_node_qua_float` VALUES ('T1001', 10.00, 0.80, 1.00, 0.20, 0.80, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1003', 20.00, 0.80, 0.70, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1005', 10.00, 0.70, 1.00, 0.60, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1006', 20.00, 0.60, 0.70, 0.60, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1007', 20.00, 0.60, 1.00, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1008', 20.00, 0.60, 0.70, 0.20, 0.10, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1010', 20.00, 0.60, 0.70, 0.30, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1011', 20.00, 0.60, 0.70, 0.70, 0.40, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1012', 20.00, 0.60, 0.70, 1.00, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1014', 30.00, 0.60, 1.00, 0.20, 0.40, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1016', 30.00, 1.00, 1.00, 0.70, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1018', 20.00, 0.60, 0.70, 0.30, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1020', 20.00, 0.60, 0.70, 1.00, 0.30, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1021', 17.00, 0.80, 0.60, 0.80, 0.80, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1025', 20.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1027', 18.00, 0.70, 1.00, 0.50, 0.20, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1029', 20.00, 0.60, 0.70, 1.00, 0.20, 0.20, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1030', 20.00, 0.60, 0.70, 1.00, 0.30, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1033', 20.00, 0.80, 1.00, 0.30, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1036', 20.00, 0.60, 0.70, 0.00, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1037', 20.00, 0.60, 0.70, 0.00, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1039', 10.00, 0.60, 1.00, 0.60, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1040', 30.00, 0.70, 0.70, 0.70, 0.00, 0.00, 0.50, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1041', 20.00, 0.60, 0.70, 1.00, 0.40, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1046', 10.00, 0.80, 1.00, 0.50, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1047', 20.00, 0.60, 0.70, 0.20, 0.40, 0.20, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1048', 20.00, 0.60, 0.70, 0.90, 0.60, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1049', 30.00, 1.00, 1.00, 0.40, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1052', 20.00, 0.60, 0.70, 1.00, 0.20, 0.00, 1.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1053', 20.00, 0.60, 0.70, 0.20, 0.40, 0.20, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1055', 20.00, 0.70, 0.30, 0.00, 0.60, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1056', 20.00, 0.60, 0.90, 0.50, 0.00, 0.00, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1057', 20.00, 0.40, 0.70, 0.80, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1059', 20.00, 0.60, 0.70, 0.60, 0.60, 0.60, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1068', 20.00, 0.60, 0.70, 0.20, 0.70, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1069', 30.00, 1.00, 0.30, 0.70, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1070', 20.00, 0.40, 0.70, 0.00, 0.90, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1071', 20.00, 0.60, 0.70, 0.60, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1072', 30.00, 0.60, 1.00, 0.20, 0.60, 0.40, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1074', 20.00, 0.60, 0.70, 0.20, 0.60, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1078', 20.00, 0.40, 0.90, 0.70, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1080', 10.00, 1.00, 1.00, 0.80, 1.00, 0.70, 0.25, 0.50, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1082', 15.00, 0.80, 1.00, 0.50, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1083', 10.00, 0.40, 0.70, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1087', 20.00, 0.60, 0.70, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1090', 20.00, 0.80, 0.50, 0.60, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1091', 20.00, 0.80, 0.70, 0.00, 0.80, 0.20, 1.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1092', 20.00, 0.80, 0.70, 0.60, 0.00, 0.00, 1.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1095', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.50, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1098', 20.00, 0.60, 0.70, 0.20, 0.50, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1102', 20.00, 0.60, 0.70, 0.60, 0.20, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1104', 20.00, 0.60, 0.70, 0.30, 0.70, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1105', 20.00, 0.60, 0.70, 0.20, 0.40, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1106', 20.00, 0.60, 0.70, 0.40, 0.40, 0.20, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1110', 20.00, 0.80, 0.60, 0.30, 0.00, 0.10, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1111', 15.00, 0.60, 1.00, 0.40, 0.00, 0.00, 1.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1112', 20.00, 0.60, 0.70, 0.30, 0.80, 0.20, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1113', 30.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1114', 30.00, 0.80, 0.30, 0.90, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1115', 30.00, 0.80, 0.70, 0.80, 0.00, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1119', 20.00, 0.80, 0.70, 0.90, 0.50, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1120', 20.00, 0.80, 0.30, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1123', 20.00, 0.40, 0.30, 0.80, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1124', 20.00, 1.00, 0.30, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1125', 20.00, 0.40, 0.30, 0.60, 0.00, 0.00, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1127', 20.00, 0.80, 0.70, 0.00, 0.60, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1129', 20.00, 0.60, 0.70, 0.20, 0.40, 0.10, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1132', 20.00, 0.60, 0.70, 0.20, 0.60, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1133', 30.00, 0.80, 0.30, 0.40, 0.20, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1134', 30.00, 0.80, 0.30, 0.50, 0.80, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1135', 10.00, 0.80, 0.70, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1136', 20.00, 0.60, 0.70, 0.00, 0.80, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1137', 20.00, 0.60, 0.70, 0.00, 0.20, 0.00, 0.75, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1140', 20.00, 0.60, 0.70, 0.20, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1176', 20.00, 0.60, 0.70, 0.10, 0.40, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1185', 10.00, 0.50, 0.90, 0.40, 0.70, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1187', 20.00, 0.60, 0.70, 0.60, 0.00, 0.00, 0.50, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1189', 20.00, 0.60, 0.70, 0.40, 0.80, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1190', 10.00, 0.60, 1.00, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1195', 23.00, 0.80, 0.40, 0.40, 0.40, 0.10, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1197', 20.00, 0.60, 0.70, 0.00, 0.40, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1199', 20.00, 0.60, 0.70, 0.40, 0.20, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1200', 20.00, 0.80, 0.30, 0.30, 0.80, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1201', 20.00, 0.60, 0.70, 0.70, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1202', 20.00, 0.60, 0.70, 0.00, 0.80, 0.20, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1203', 20.00, 0.60, 0.70, 0.60, 0.80, 0.60, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1204', 20.00, 0.60, 0.70, 0.60, 0.40, 0.00, 0.25, 0.50, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1205', 20.00, 0.60, 0.70, 0.60, 0.40, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1207', 20.00, 0.60, 0.70, 0.00, 0.70, 0.30, 0.75, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1210', 20.00, 0.60, 0.70, 0.40, 0.10, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1211', 20.00, 0.60, 0.70, 0.00, 0.60, 0.40, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1212', 20.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1213', 20.00, 0.80, 0.70, 0.80, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1216', 20.00, 0.60, 0.70, 0.20, 0.70, 0.40, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1217', 10.00, 0.80, 1.00, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1218', 10.00, 0.80, 1.00, 0.30, 0.80, 0.50, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1219', 20.00, 0.60, 0.70, 0.60, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1220', 10.00, 0.70, 1.00, 0.20, 0.20, 0.20, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1221', 10.00, 0.80, 1.00, 0.10, 0.50, 0.20, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1222', 20.00, 0.60, 0.70, 0.50, 0.80, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1480', 20.00, 0.60, 0.70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1482', 20.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.75, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1484', 20.00, 0.60, 0.70, 0.00, 0.70, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1485', 20.00, 0.60, 0.70, 0.00, 0.90, 0.90, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1486', 20.00, 0.60, 0.70, 0.30, 0.70, 0.60, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1489', 20.00, 0.60, 0.70, 0.00, 0.80, 0.80, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1490', 20.00, 0.60, 0.70, 0.00, 1.00, 0.50, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1491', 20.00, 0.80, 0.70, 0.10, 0.90, 0.40, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1495', 20.00, 0.60, 0.70, 0.00, 0.80, 1.00, 0.75, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1496', 20.00, 0.60, 0.70, 0.10, 0.60, 0.70, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1497', 20.00, 0.60, 0.70, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1498', 10.00, 1.00, 0.70, 0.00, 0.30, 1.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1499', 10.00, 1.00, 0.30, 0.00, 0.30, 1.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1505', 15.00, 0.80, 1.00, 0.00, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1518', 10.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1525', 20.00, 0.60, 0.70, 0.00, 0.70, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1526', 20.00, 0.60, 0.70, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1527', 20.00, 0.60, 0.70, 0.90, 0.40, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1528', 20.00, 0.60, 0.70, 0.30, 0.00, 0.00, 0.25, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1529', 20.00, 0.60, 0.70, 0.00, 0.70, 0.60, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1530', 20.00, 0.80, 0.70, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1531', 20.00, 0.80, 0.70, 0.20, 0.70, 0.80, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1534', 20.00, 0.60, 0.70, 0.90, 0.30, 0.00, 0.50, 0.50, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1535', 20.00, 0.80, 0.70, 0.20, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1538', 20.00, 0.60, 0.70, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1539', 30.00, 0.80, 0.30, 0.80, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1542', 30.00, 0.70, 1.00, 0.00, 1.00, 0.00, 0.75, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1543', 27.00, 0.70, 0.60, 0.20, 0.80, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1546', 13.00, 0.80, 0.70, 0.20, 0.60, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1547', 28.00, 0.70, 0.60, 0.00, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1548', 17.00, 0.70, 0.60, 0.30, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1550', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1552', 13.00, 0.60, 0.60, 0.20, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1553', 10.00, 0.70, 0.70, 0.20, 0.60, 0.40, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1554', 10.00, 0.80, 1.00, 0.60, 0.60, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1555', 15.00, 0.70, 0.90, 0.50, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1556', 10.00, 0.80, 0.70, 0.40, 0.50, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1557', 20.00, 0.90, 0.90, 0.40, 0.40, 0.20, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1558', 25.00, 1.00, 0.70, 0.80, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1559', 20.00, 0.60, 0.70, 0.40, 0.60, 0.40, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1560', 20.00, 0.60, 0.70, 0.20, 0.50, 0.00, 0.00, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1561', 20.00, 0.60, 0.70, 0.00, 1.00, 1.00, 0.75, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1562', 20.00, 0.40, 0.70, 0.20, 0.60, 0.50, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1563', 20.00, 0.20, 1.00, 0.00, 0.30, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1564', 20.00, 0.60, 0.70, 0.00, 0.30, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1565', 30.00, 0.80, 0.70, 0.20, 1.00, 0.40, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1566', 30.00, 0.70, 0.30, 0.80, 0.00, 0.00, 0.25, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1567', 20.00, 0.60, 0.70, 0.90, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1568', 20.00, 0.60, 0.70, 0.50, 0.10, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1569', 20.00, 0.60, 0.70, 0.20, 0.40, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1570', 20.00, 0.60, 0.70, 0.00, 0.80, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1571', 20.00, 0.60, 0.70, 0.60, 0.20, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1572', 20.00, 0.60, 0.70, 0.60, 0.40, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1573', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1574', 23.00, 0.80, 0.50, 0.00, 0.80, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1578', 20.00, 0.60, 0.70, 0.20, 0.40, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1580', 20.00, 0.60, 0.70, 0.30, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1583', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1584', 20.00, 0.60, 0.70, 0.20, 0.00, 0.60, 0.50, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1585', 20.00, 0.60, 0.70, 0.20, 0.40, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1586', 20.00, 0.80, 0.70, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1587', 10.00, 0.20, 1.00, 0.20, 0.10, 0.10, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1588', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1589', 10.00, 0.80, 0.70, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1590', 30.00, 1.00, 1.00, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1591', 20.00, 0.60, 0.70, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1592', 15.00, 0.80, 0.70, 0.60, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1593', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1594', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1595', 10.00, 0.80, 1.00, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1596', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1597', 20.00, 0.60, 0.70, 0.70, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1598', 30.00, 0.70, 0.30, 0.70, 0.00, 0.00, 0.25, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1599', 20.00, 0.80, 0.70, 0.20, 0.50, 0.00, 0.50, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1600', 10.00, 0.80, 0.70, 0.30, 0.30, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1601', 20.00, 0.60, 0.70, 0.60, 0.90, 0.30, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1602', 20.00, 0.80, 0.70, 0.90, 0.00, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1606', 30.00, 0.80, 0.30, 0.80, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1608', 20.00, 0.60, 0.70, 0.40, 0.60, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1609', 20.00, 0.60, 0.70, 0.20, 0.40, 0.20, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1610', 20.00, 0.60, 0.70, 0.00, 0.80, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1611', 20.00, 1.00, 1.00, 0.00, 0.50, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1612', 20.00, 0.60, 0.70, 0.00, 0.30, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1613', 20.00, 0.60, 0.70, 0.30, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1614', 20.00, 1.00, 1.00, 0.20, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1615', 30.00, 1.00, 0.30, 0.80, 0.00, 0.00, 0.75, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1619', 20.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1620', 20.00, 0.40, 0.70, 0.00, 0.80, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1621', 20.00, 0.60, 0.70, 0.50, 0.00, 0.00, 0.25, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1622', 20.00, 0.60, 0.70, 0.00, 0.20, 0.00, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1647', 20.00, 0.60, 0.70, 0.00, 0.70, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1648', 20.00, 0.60, 0.70, 0.20, 0.40, 0.10, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1649', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1650', 20.00, 0.60, 0.70, 0.80, 0.00, 0.00, 0.50, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1651', 20.00, 0.60, 0.70, 0.20, 0.40, 0.20, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1652', 20.00, 0.60, 0.70, 0.40, 0.00, 0.00, 0.75, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1653', 20.00, 0.60, 0.70, 0.00, 0.30, 0.00, 0.25, 1.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1654', 20.00, 0.60, 0.70, 0.80, 0.00, 0.00, 0.25, 0.50, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1656', 20.00, 0.60, 0.70, 0.80, 0.00, 0.20, 0.25, 0.00, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1657', 20.00, 0.60, 0.70, 0.80, 0.00, 0.60, 0.25, 0.50, 0.50);
INSERT INTO `t_node_qua_float` VALUES ('T1659', 20.00, 0.60, 0.70, 0.50, 0.80, 0.00, 0.25, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1665', 20.00, 0.60, 0.70, 0.20, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_node_qua_float` VALUES ('T1666', 20.00, 0.60, 0.70, 0.20, 0.30, 0.00, 0.25, 1.00, 0.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名字',
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `age` int(0) NULL DEFAULT NULL,
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色 0超级管理员，1管理员，2普通账号',
  `isValid` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'Y' COMMENT '是否有效，Y有效，其他无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'sa', '超级管理员', '123', 18, 1, '111', 0, 'Y');
INSERT INTO `user` VALUES (2, 'sb', '管理员', '123', 19, 0, '112', 1, 'Y');
INSERT INTO `user` VALUES (3, 'sc', '用户', '123', 20, 1, '113', 2, 'Y');

SET FOREIGN_KEY_CHECKS = 1;
