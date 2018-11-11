/*
 Navicat MySQL Data Transfer

 Source Server         : ck
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost:3306
 Source Schema         : lm_dev

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 11/11/2018 18:05:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_role_perm_relation
-- ----------------------------
DROP TABLE IF EXISTS `b_role_perm_relation`;
CREATE TABLE `b_role_perm_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `perm_id` bigint(20) NOT NULL COMMENT '权限id',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_role_perm_relation
-- ----------------------------
INSERT INTO `b_role_perm_relation` VALUES (1, 1, 1, 'Y', 1, '2018-11-11 14:15:36', 1, '2018-11-11 14:15:38');

-- ----------------------------
-- Table structure for b_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `b_user_role_relation`;
CREATE TABLE `b_user_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_role_relation
-- ----------------------------
INSERT INTO `b_user_role_relation` VALUES (1, 1, 1, 'Y', 1, '2018-11-11 14:14:31', 1, '2018-11-11 14:14:33');

-- ----------------------------
-- Table structure for m_fnd_permission
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_permission`;
CREATE TABLE `m_fnd_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `perm_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限代码',
  `perm_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `resources` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限路径',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_permission
-- ----------------------------
INSERT INTO `m_fnd_permission` VALUES (1, 'employeePageList', '用户的分页查询', '/employee/employeePageList', 'Y', 1, '2018-11-11 14:15:25', 1, '2018-11-11 14:15:28');

-- ----------------------------
-- Table structure for m_fnd_role
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_role`;
CREATE TABLE `m_fnd_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_role
-- ----------------------------
INSERT INTO `m_fnd_role` VALUES (1, 'admin', '管理员', '管理员', 'Y', 1, '2018-11-11 14:12:35', 1, '2018-11-11 14:12:37');

-- ----------------------------
-- Table structure for m_fnd_user
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_user`;
CREATE TABLE `m_fnd_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `job_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户电话',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基础表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_user
-- ----------------------------
INSERT INTO `m_fnd_user` VALUES (1, 'chenkang', '陈康', '123456', '01378803', 25, '1', '13258259253', 'Y', 1, '2018-11-11 14:09:18', 1, '2018-11-11 14:09:24');
INSERT INTO `m_fnd_user` VALUES (6, 'limin', '李敏', '123456', '013788031', 25, '0', '13683447013', 'Y', 1, '2018-11-11 17:05:30', 1, '2018-11-11 17:05:30');
INSERT INTO `m_fnd_user` VALUES (7, 'limin', '李敏', '123456', '013788031', 25, '0', '13683447013', 'Y', 1, '2018-11-11 17:05:54', 1, '2018-11-11 17:05:54');
INSERT INTO `m_fnd_user` VALUES (8, 'limin', '李敏', '123456', '013788031', 25, '0', '13683447013', 'Y', 1, '2018-11-11 17:17:52', 1, '2018-11-11 17:17:52');
INSERT INTO `m_fnd_user` VALUES (9, 'lier', '李二', '123456', '013788032', 21, '0', '13683447013', 'Y', 1, '2018-11-11 09:35:14', 1, '2018-11-11 09:35:14');
INSERT INTO `m_fnd_user` VALUES (10, 'lier', '李二', '123456', '013788032', 21, '0', '13683447013', 'Y', 1, '2018-11-11 10:04:50', 1, '2018-11-11 10:04:50');

SET FOREIGN_KEY_CHECKS = 1;
