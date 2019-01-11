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

 Date: 11/01/2019 18:41:47
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_role_perm_relation
-- ----------------------------
INSERT INTO `b_role_perm_relation` VALUES (1, 1, 1, 'Y', 1, '2018-11-11 14:15:36', 1, '2018-11-11 14:15:38');
INSERT INTO `b_role_perm_relation` VALUES (2, 1, 2, 'Y', 1, '2018-12-28 11:58:33', 1, '2018-12-28 11:58:31');
INSERT INTO `b_role_perm_relation` VALUES (3, 1, 3, 'Y', 1, '2018-12-28 11:58:51', 1, '2018-12-28 11:58:54');
INSERT INTO `b_role_perm_relation` VALUES (4, 1, 4, 'Y', 1, '2018-12-28 11:59:04', 1, '2018-12-28 11:59:06');

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_role_relation
-- ----------------------------
INSERT INTO `b_user_role_relation` VALUES (1, 1, 1, 'Y', 1, '2018-11-11 14:14:31', 1, '2018-11-11 14:14:33');
INSERT INTO `b_user_role_relation` VALUES (6, 12, 1, 'Y', 1, '2018-11-29 15:32:01', 1, '2018-11-29 15:32:01');
INSERT INTO `b_user_role_relation` VALUES (7, 12, 2, 'Y', 1, '2018-11-29 15:32:01', 1, '2018-11-29 15:32:01');
INSERT INTO `b_user_role_relation` VALUES (8, 13, 1, 'Y', 1, '2018-12-27 11:38:40', 1, '2018-12-27 11:38:40');
INSERT INTO `b_user_role_relation` VALUES (9, 14, 1, 'Y', 1, '2018-12-27 13:35:13', 1, '2018-12-27 13:35:13');
INSERT INTO `b_user_role_relation` VALUES (10, 15, 1, 'Y', 1, '2018-12-27 14:52:33', 1, '2018-12-27 14:52:33');
INSERT INTO `b_user_role_relation` VALUES (11, 16, 1, 'Y', 1, '2018-12-27 14:54:04', 1, '2018-12-27 14:54:04');
INSERT INTO `b_user_role_relation` VALUES (12, 7, 1, 'Y', 1, '2018-12-27 16:14:53', 1, '2018-12-27 16:14:53');
INSERT INTO `b_user_role_relation` VALUES (13, 17, 1, 'Y', 1, '2018-12-27 16:28:09', 1, '2018-12-27 16:28:09');
INSERT INTO `b_user_role_relation` VALUES (14, 8, 1, 'Y', 1, '2018-12-27 18:24:43', 1, '2018-12-27 18:24:43');
INSERT INTO `b_user_role_relation` VALUES (15, 18, 1, 'Y', 1, '2018-12-28 13:45:01', 1, '2018-12-28 13:45:01');
INSERT INTO `b_user_role_relation` VALUES (16, 19, 1, 'Y', 1, '2018-12-28 15:29:46', 1, '2018-12-28 15:29:46');
INSERT INTO `b_user_role_relation` VALUES (17, 1, 2, 'Y', 1, '2018-12-28 17:41:47', 1, '2018-12-28 17:41:50');
INSERT INTO `b_user_role_relation` VALUES (18, 20, 1, 'Y', 1, '2019-01-02 11:52:52', 1, '2019-01-02 11:52:52');

-- ----------------------------
-- Table structure for image_blog
-- ----------------------------
DROP TABLE IF EXISTS `image_blog`;
CREATE TABLE `image_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `outline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '概要',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `markdown_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `category` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图片博客表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of image_blog
-- ----------------------------
INSERT INTO `image_blog` VALUES (2, 'testTitle', 'this is a test outline', 'bababababaabababababaababababab', NULL, 'shenzhen', 'Y', 1, '2019-01-08 10:56:55', 1, '2019-01-08 10:56:55');
INSERT INTO `image_blog` VALUES (3, '测试一号', 'this is test NO.1', '正在测试中，申请，申请', NULL, 'shanghai', 'Y', 1, '2019-01-09 11:06:50', 1, '2019-01-09 11:06:50');
INSERT INTO `image_blog` VALUES (4, '测试2号', '北京换印尼', '这是一个测试2号', NULL, 'beijing', 'Y', 1, '2019-01-09 16:51:58', 1, '2019-01-09 16:51:58');
INSERT INTO `image_blog` VALUES (5, '测试3号', '上海是个好地方', '巴巴爸爸爸爸爸爸', NULL, 'shanghai', 'Y', 1, '2019-01-09 16:54:17', 1, '2019-01-09 16:54:17');
INSERT INTO `image_blog` VALUES (6, 'test', 'this is a test traning', 'shanghai  is testing', NULL, 'shanghai', 'Y', 1, '2019-01-09 17:13:23', 1, '2019-01-09 17:13:23');
INSERT INTO `image_blog` VALUES (7, '多线程', '学习多线程是很有必要的', '现在让我们来学习多线程，第一步，是先学习这个', NULL, 'shanghai', 'Y', 1, '2019-01-09 17:23:31', 1, '2019-01-09 17:23:55');
INSERT INTO `image_blog` VALUES (8, 'markdown测试', 'this is a markdown test', '@[toc]\n# 关于使用jetty部署war包后调用其他接口不通的问题\n## 1、现象描述\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\n## 2、解决办法\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \n> ![](https://i.imgur.com/73x12A4.png)\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\n## 3、扩充\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', NULL, 'shanghai', 'Y', 1, '2019-01-10 11:12:03', 1, '2019-01-10 11:12:03');
INSERT INTO `image_blog` VALUES (9, 'markdown测试2', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', 'Y', 1, '2019-01-10 11:14:23', 1, '2019-01-10 11:14:23');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_permission
-- ----------------------------
INSERT INTO `m_fnd_permission` VALUES (1, 'employeePageList', '用户的分页查询', '/employee/employeePageList', 'Y', 1, '2018-11-11 14:15:25', 1, '2018-11-11 14:15:28');
INSERT INTO `m_fnd_permission` VALUES (2, 'addEmployee', '用户的新增', '/employee/addEmployee', 'Y', 1, '2018-12-28 11:54:39', 1, '2018-12-28 11:54:42');
INSERT INTO `m_fnd_permission` VALUES (3, 'updateEmployee', '用户的更新', '/employee/updateEmployee', 'Y', 1, '2018-12-28 11:55:49', 1, '2018-12-28 11:55:52');
INSERT INTO `m_fnd_permission` VALUES (4, 'disableEmployee', '失效用户', '/employee/disableEmployee', 'Y', 1, '2018-12-28 11:56:37', 1, '2018-12-28 11:56:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_role
-- ----------------------------
INSERT INTO `m_fnd_role` VALUES (1, 'admin', '管理员', '管理员', 'Y', 1, '2018-11-11 14:12:35', 1, '2018-11-11 14:12:37');
INSERT INTO `m_fnd_role` VALUES (2, 'user', '普通用户', '普通用户', 'Y', 1, '2018-11-27 18:27:44', 1, '2018-11-27 18:27:46');

-- ----------------------------
-- Table structure for m_fnd_upload
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_upload`;
CREATE TABLE `m_fnd_upload`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ref_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源参考表',
  `ref_id` bigint(20) NULL DEFAULT NULL COMMENT '来源参考表Id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_size` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_upload
-- ----------------------------
INSERT INTO `m_fnd_upload` VALUES (1, NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\15fc3dbcaae24afeb74509f9782579b61546855028675.jpg', 'Y', 1, '2019-01-07 17:57:09', 1, '2019-01-07 17:57:09');
INSERT INTO `m_fnd_upload` VALUES (2, NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\07b5910fc3a146e9960f41287623a3361546910612790.jpg', 'Y', 1, '2019-01-08 09:23:33', 1, '2019-01-08 09:23:33');
INSERT INTO `m_fnd_upload` VALUES (3, NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\aa63f01d44124605bd9cc3f3294a8d521546915929733.jpg', 'Y', 1, '2019-01-08 10:52:10', 1, '2019-01-08 10:52:10');
INSERT INTO `m_fnd_upload` VALUES (4, 'image_blog', 2, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\a1043f7aa6d346f29c960fd66807655b1546916208471.jpg', 'Y', 1, '2019-01-08 10:56:49', 1, '2019-01-08 10:56:55');
INSERT INTO `m_fnd_upload` VALUES (5, 'image_blog', 3, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\574e9890790e4223bc8e35a77a77c7641547003186306.jpg', 'Y', 1, '2019-01-09 11:06:26', 1, '2019-01-09 11:06:50');
INSERT INTO `m_fnd_upload` VALUES (6, NULL, NULL, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\6e36ef8f649449ffa0666f27487b41e51547020881837.jpg', 'Y', 1, '2019-01-09 16:01:22', 1, '2019-01-09 16:01:22');
INSERT INTO `m_fnd_upload` VALUES (9, NULL, NULL, 'debug.2018-12-24.0(1).log', 'application/octet-stream', '31758249', '\\e8c990d1508648f88c2fa642d25b3fe81547021231704.log', 'Y', 1, '2019-01-09 16:07:12', 1, '2019-01-09 16:07:12');
INSERT INTO `m_fnd_upload` VALUES (12, NULL, NULL, 'debug.2018-12-24.0.log', 'application/octet-stream', '31758249', '\\80b675a7cbe34b4eabc32767173a42401547021782916.log', 'Y', 1, '2019-01-09 16:16:23', 1, '2019-01-09 16:16:23');
INSERT INTO `m_fnd_upload` VALUES (13, 'image_blog', 4, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\6721a8833cc7405fb551d21a733a29731547023904688.jpg', 'Y', 1, '2019-01-09 16:51:45', 1, '2019-01-09 16:51:58');
INSERT INTO `m_fnd_upload` VALUES (14, 'image_blog', 5, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\a66a8d3013c241baa190d33bd6256bd21547024036743.jpg', 'Y', 1, '2019-01-09 16:53:57', 1, '2019-01-09 16:54:17');
INSERT INTO `m_fnd_upload` VALUES (15, 'image_blog', 6, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\e3d2ce4796d047dba5335abf4ef9248e1547025168253.jpg', 'Y', 1, '2019-01-09 17:12:49', 1, '2019-01-09 17:13:23');
INSERT INTO `m_fnd_upload` VALUES (16, 'image_blog', 7, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\a2e7f212e0514124984131be3f6866cd1547025784512.jpg', 'Y', 1, '2019-01-09 17:23:05', 1, '2019-01-09 17:23:31');
INSERT INTO `m_fnd_upload` VALUES (17, 'image_blog', 8, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\de45d72cf5774acbb02e03b49095d5dd1547089805163.jpg', 'Y', 1, '2019-01-10 11:10:06', 1, '2019-01-10 11:12:03');
INSERT INTO `m_fnd_upload` VALUES (18, 'image_blog', 9, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\d4f093850c6145c088c21c4d8f02d6761547090048813.jpg', 'Y', 1, '2019-01-10 11:14:09', 1, '2019-01-10 11:14:23');

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基础表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_user
-- ----------------------------
INSERT INTO `m_fnd_user` VALUES (1, 'chenkang', '陈康', '123456', '01378803', 25, '1', '13258259253', 'Y', 1, '2018-11-11 14:09:18', 1, '2018-11-11 14:09:24');
INSERT INTO `m_fnd_user` VALUES (6, 'limin', '李敏', '123456', '013788031', 25, '0', '13683447013', 'Y', 1, '2018-11-11 17:05:30', 1, '2018-11-11 17:05:30');
INSERT INTO `m_fnd_user` VALUES (7, 'limin', '李敏2号', '123456', '013788031', 25, '0', '13683447013', 'N', 1, '2018-11-11 17:05:54', 1, '2018-12-27 16:14:53');
INSERT INTO `m_fnd_user` VALUES (8, 'limin', '李敏', '123456', '013788031', 25, '0', '13683447013', 'Y', 1, '2018-11-11 17:17:52', 1, '2018-12-27 18:24:43');
INSERT INTO `m_fnd_user` VALUES (11, '01378803', '陈康', '123456', '01378803', 25, '1', '13683447180', 'Y', 1, '2018-11-27 18:10:40', 1, '2018-11-27 18:10:40');
INSERT INTO `m_fnd_user` VALUES (12, 'lixiaoshuang', '李玉林', '123456', '888888', 21, '0', '13258259563', 'Y', 1, '2018-11-27 18:16:35', 1, '2018-11-29 15:32:01');
INSERT INTO `m_fnd_user` VALUES (13, 'blueceLi', '李小双', NULL, NULL, 21, '0', '13683447852', 'Y', 1, '2018-12-27 11:38:40', 1, '2018-12-27 11:38:40');
INSERT INTO `m_fnd_user` VALUES (14, 'ck457897564', '李小二', '123456', NULL, 25, '1', '13258259253', 'Y', 1, '2018-12-27 13:35:13', 1, '2018-12-27 13:35:13');
INSERT INTO `m_fnd_user` VALUES (15, 'test001', '林思雨', '123456', NULL, 25, '0', '13258259256', 'Y', 1, '2018-12-27 14:52:33', 1, '2018-12-27 14:52:33');
INSERT INTO `m_fnd_user` VALUES (16, 'test002', '爱新觉罗', '123456', NULL, 25, '1', '85660602', 'Y', 1, '2018-12-27 14:54:04', 1, '2018-12-27 14:54:04');
INSERT INTO `m_fnd_user` VALUES (17, 'jackChen', 'jackChen', '123456', NULL, 25, '1', '13683447180', 'Y', 1, '2018-12-27 16:28:09', 1, '2018-12-27 16:28:09');
INSERT INTO `m_fnd_user` VALUES (18, 'buleceLI', '李大双', '123456', NULL, 25, '1', '13258259253', 'Y', 1, '2018-12-28 13:45:01', 1, '2018-12-28 13:45:01');
INSERT INTO `m_fnd_user` VALUES (19, 'ChenDa', '陈达', '123456', NULL, 25, '1', '13258259253', 'Y', 1, '2018-12-28 15:29:46', 1, '2018-12-28 15:29:46');
INSERT INTO `m_fnd_user` VALUES (20, 'XiaMi', '李虾米', '123456', NULL, 25, '1', '13683447180', 'Y', 1, '2019-01-02 11:52:52', 1, '2019-01-02 11:52:52');

SET FOREIGN_KEY_CHECKS = 1;
