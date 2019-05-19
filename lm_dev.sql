/*
 Navicat MySQL Data Transfer

 Source Server         : 47.103.17.3
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 47.103.17.3:3306
 Source Schema         : lm_dev

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 19/05/2019 23:14:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_role_perm_relation
-- ----------------------------
DROP TABLE IF EXISTS `b_role_perm_relation`;
CREATE TABLE `b_role_perm_relation`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `perm_id` bigint(20) NOT NULL COMMENT '权限id',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_role_perm_relation
-- ----------------------------
INSERT INTO `b_role_perm_relation` VALUES ('1', 1, 1, 'Y', '1', '2018-11-11 14:15:36', '1', '2018-11-11 14:15:38');
INSERT INTO `b_role_perm_relation` VALUES ('10', 1, 10, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('11', 1, 11, 'Y', '1', '2019-01-16 18:36:01', '1', '2019-01-16 18:36:04');
INSERT INTO `b_role_perm_relation` VALUES ('12', 1, 12, 'Y', '1', '2019-01-18 14:57:34', '1', '2019-01-18 14:57:36');
INSERT INTO `b_role_perm_relation` VALUES ('13', 1, 13, 'Y', '1', '2019-04-12 15:54:00', '1', '2019-04-12 15:54:02');
INSERT INTO `b_role_perm_relation` VALUES ('2', 1, 2, 'Y', '1', '2018-12-28 11:58:33', '1', '2018-12-28 11:58:31');
INSERT INTO `b_role_perm_relation` VALUES ('3', 1, 3, 'Y', '1', '2018-12-28 11:58:51', '1', '2018-12-28 11:58:54');
INSERT INTO `b_role_perm_relation` VALUES ('4', 1, 4, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('5', 1, 5, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('6', 1, 6, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('7', 1, 7, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('8', 1, 8, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');
INSERT INTO `b_role_perm_relation` VALUES ('9', 1, 9, 'Y', '1', '2018-12-28 11:59:04', '1', '2018-12-28 11:59:06');

-- ----------------------------
-- Table structure for b_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `b_user_role_relation`;
CREATE TABLE `b_user_role_relation`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_role_relation
-- ----------------------------
INSERT INTO `b_user_role_relation` VALUES ('1', '1', 1, 'Y', '1', '2018-11-11 14:14:31', '1', '2018-11-11 14:14:33');
INSERT INTO `b_user_role_relation` VALUES ('10', '15', 1, 'Y', '1', '2018-12-27 14:52:33', '1', '2018-12-27 14:52:33');
INSERT INTO `b_user_role_relation` VALUES ('1130068693603135490', '1130068692743303170', 1, 'Y', NULL, '2019-05-19 19:12:26', NULL, '2019-05-19 19:12:26');
INSERT INTO `b_user_role_relation` VALUES ('1130078678651265026', '1130078677715935233', 1, 'Y', NULL, '2019-05-19 19:52:07', NULL, '2019-05-19 19:52:07');
INSERT INTO `b_user_role_relation` VALUES ('12', '7', 1, 'Y', '1', '2018-12-27 16:14:53', '1', '2018-12-27 16:14:53');
INSERT INTO `b_user_role_relation` VALUES ('13', '17', 1, 'Y', '1', '2018-12-27 16:28:09', '1', '2018-12-27 16:28:09');
INSERT INTO `b_user_role_relation` VALUES ('14', '8', 1, 'Y', '1', '2018-12-27 18:24:43', '1', '2018-12-27 18:24:43');
INSERT INTO `b_user_role_relation` VALUES ('15', '18', 1, 'Y', '1', '2018-12-28 13:45:01', '1', '2018-12-28 13:45:01');
INSERT INTO `b_user_role_relation` VALUES ('16', '19', 1, 'Y', '1', '2018-12-28 15:29:46', '1', '2018-12-28 15:29:46');
INSERT INTO `b_user_role_relation` VALUES ('17', '1', 2, 'Y', '1', '2018-12-28 17:41:47', '1', '2018-12-28 17:41:50');
INSERT INTO `b_user_role_relation` VALUES ('18', '20', 1, 'Y', '1', '2019-01-02 11:52:52', '1', '2019-01-02 11:52:52');
INSERT INTO `b_user_role_relation` VALUES ('20', '22', 1, 'Y', '1', '2019-01-24 11:17:32', '1', '2019-01-24 11:17:32');
INSERT INTO `b_user_role_relation` VALUES ('21', '23', 1, 'Y', '11', '2019-01-24 11:31:37', '11', '2019-01-24 11:31:37');
INSERT INTO `b_user_role_relation` VALUES ('22', '6', 1, 'Y', '11', '2019-01-24 11:32:37', '11', '2019-01-24 11:32:37');
INSERT INTO `b_user_role_relation` VALUES ('6', '12', 1, 'Y', '1', '2018-11-29 15:32:01', '1', '2018-11-29 15:32:01');
INSERT INTO `b_user_role_relation` VALUES ('7', '11', 1, 'Y', '1', '2018-11-29 15:32:01', '1', '2018-11-29 15:32:01');
INSERT INTO `b_user_role_relation` VALUES ('8', '13', 1, 'Y', '1', '2018-12-27 11:38:40', '1', '2018-12-27 11:38:40');
INSERT INTO `b_user_role_relation` VALUES ('9', '14', 1, 'Y', '1', '2018-12-27 13:35:13', '1', '2018-12-27 13:35:13');

-- ----------------------------
-- Table structure for image_blog
-- ----------------------------
DROP TABLE IF EXISTS `image_blog`;
CREATE TABLE `image_blog`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `outline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '概要',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'html的text',
  `markdown_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'markdown的text',
  `category` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `default_image_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否用默认图片标志',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图片博客表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of image_blog
-- ----------------------------
INSERT INTO `image_blog` VALUES ('10', 'markdown测试2', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-01-10 11:14:23', '1', '2019-01-10 11:14:23');
INSERT INTO `image_blog` VALUES ('11', 'markdown测试3', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-01-10 11:14:23', '1', '2019-01-10 11:14:23');
INSERT INTO `image_blog` VALUES ('12', 'markdown测试3', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-01-10 11:14:23', '1', '2019-01-10 11:14:23');
INSERT INTO `image_blog` VALUES ('13', 'markdown测试4', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-01-10 11:14:23', '1', '2019-01-10 11:14:23');
INSERT INTO `image_blog` VALUES ('14', '2019年4月12日16:19:21测试上传OSS', '2019年4月12日16:19:21测试上传OSS', '<p></p><div class=\"toc\"><h3>文章目录</h3><ul><li><a href=\"#Javaexcel_1\">Java中excel的导入导出</a></li><ul><li><a href=\"#1excel_2\">1.excel的导出</a></li><li><a href=\"#2excel_236\">2.excel的导入</a></li></ul></ul></div><p></p>\r\n<h1><a id=\"Javaexcel_1\"></a>Java中excel的导入导出</h1>\r\n<h2><a id=\"1excel_2\"></a>1.excel的导出</h2>\r\n<blockquote>\r\n<p><em><strong>注意不要直接复制使用</strong></em><br>\r\n我是直接在controller中使用，下面controller代码中，ColumnInfoEntity类只是用来存放导出excel标题的工具类而已，可以自己随便写一个，为了代码的简洁，就写导出三个字段了，ExcelUtil.exportExcelFile就是自定义的导出类和方法了，“汇总申请表”是导出的表名，headList表示标题的list,第三个参数就是导出的数据，最后一个就是response响应信息</p>\r\n</blockquote>\r\n<pre><code>@RequestMapping(value = \"/exportSummaryApplication\", method = RequestMethod.GET)\r\npublic void exportSummaryApplication(HttpServletResponse response) throws IOException{\r\n	List&lt;MaterielFormQuery&gt; list = materielFormMapper.findAllByQuery();\r\n	List&lt;ColumnInfoEntity&gt; headList = new ArrayList&lt;ColumnInfoEntity&gt;();\r\n	headList.add(new ColumnInfoEntity(\"测试字段1\", \"pointRegionCode\"));\r\n	headList.add(new ColumnInfoEntity(\"测试字段2\", \"pointRegionName\"));\r\n	headList.add(new ColumnInfoEntity(\"测试字段3\", \"cityLevel\"));\r\n	ExcelUtil.exportExcelFile(\"汇总申请表\", headList, JSONArray.parseArray(JSON.toJSONString(list)), response);\r\n}\r\n</code></pre>\r\n<hr>\r\n<blockquote>\r\n<p>先po出工具类的头吧</p>\r\n</blockquote>\r\n<pre><code>import java.io.BufferedInputStream;\r\nimport java.io.BufferedOutputStream;\r\nimport java.io.ByteArrayInputStream;\r\nimport java.io.ByteArrayOutputStream;\r\nimport java.io.IOException;\r\nimport java.io.InputStream;\r\nimport java.io.OutputStream;\r\nimport java.math.BigDecimal;\r\nimport java.net.URLEncoder;\r\nimport java.text.DecimalFormat;\r\nimport java.text.SimpleDateFormat;\r\nimport java.util.ArrayList;\r\nimport java.util.Calendar;\r\nimport java.util.Date;\r\nimport java.util.HashMap;\r\nimport java.util.List;\r\nimport java.util.Map;\r\nimport javax.servlet.ServletOutputStream;\r\nimport javax.servlet.http.HttpServletResponse;\r\nimport org.apache.commons.lang.StringUtils;\r\nimport org.apache.poi.hssf.usermodel.HSSFCell;\r\nimport org.apache.poi.hssf.usermodel.HSSFCellStyle;\r\nimport org.apache.poi.hssf.usermodel.HSSFDateUtil;\r\nimport org.apache.poi.hssf.usermodel.HSSFFont;\r\nimport org.apache.poi.hssf.usermodel.HSSFRow;\r\nimport org.apache.poi.hssf.usermodel.HSSFSheet;\r\nimport org.apache.poi.hssf.usermodel.HSSFWorkbook;\r\nimport org.apache.poi.hssf.util.HSSFColor;\r\nimport org.apache.poi.ss.usermodel.Cell;\r\nimport org.apache.poi.ss.usermodel.CellStyle;\r\nimport org.apache.poi.ss.usermodel.DataFormat;\r\nimport org.apache.poi.ss.usermodel.DateUtil;\r\nimport org.apache.poi.ss.usermodel.Font;\r\nimport org.apache.poi.ss.usermodel.IndexedColors;\r\nimport org.apache.poi.xssf.streaming.SXSSFCell;\r\nimport org.apache.poi.xssf.streaming.SXSSFRow;\r\nimport org.apache.poi.xssf.streaming.SXSSFSheet;\r\nimport org.apache.poi.xssf.streaming.SXSSFWorkbook;\r\nimport org.apache.poi.xssf.usermodel.XSSFCell;\r\nimport org.apache.poi.xssf.usermodel.XSSFRow;\r\nimport org.apache.poi.xssf.usermodel.XSSFSheet;\r\nimport org.apache.poi.xssf.usermodel.XSSFWorkbook;\r\nimport org.springframework.web.multipart.MultipartFile;\r\nimport com.alibaba.fastjson.JSONArray;\r\nimport com.alibaba.fastjson.JSONObject;\r\nimport com.sf.materielmanage.constant.MaterielManageConstant;\r\npublic class ExcelUtil {\r\n    public static final String OFFICE_EXCEL_2003_POSTFIX = \"xls\";  \r\n    public static final String OFFICE_EXCEL_2010_POSTFIX = \"xlsx\";  \r\n    public static final String EMPTY = \"\";  \r\n    public static final String POINT = \".\"; \r\n    public static int totalRows; //sheet中总行数  \r\n    public static int totalCells; //每一行总单元格数  \r\n    public static int totalHCells; //标题单元格数 \r\n    public static String DEFAULT_DATE_PATTERN=\"yyyy年MM月dd日\";//默认日期格式\r\n    public static int DEFAULT_COLOUMN_WIDTH = 25;\r\n    public static SimpleDateFormat sdf = new SimpleDateFormat(\"yyyy/MM/dd\"); \r\n}	\r\n</code></pre>\r\n<blockquote>\r\n<p>ExcelUtil工具类的exportExcelFile的方法，调用了exportExcelXNoTitle方法，其中ExcelUtil工具类中的方法基本都可以复制套用的。</p>\r\n</blockquote>\r\n<pre><code>public static void exportExcelFile(String title, List&lt;ColumnInfoEntity&gt; headList, JSONArray dataArray, HttpServletResponse response) throws IOException{\r\n	ByteArrayOutputStream output = new ByteArrayOutputStream();	\r\n	exportExcelXNoTitle(headList,dataArray,null,0,output);\r\n	byte[] content = output.toByteArray();\r\n    InputStream input = new ByteArrayInputStream(content);\r\n	response.reset();\r\n	response.setContentType(\"application/octet-stream\");\r\n	title = URLEncoder.encode(title, \"UTF-8\");\r\n    response.setHeader(\"Content-Disposition\", \"attachment;filename=\"+title+\".xlsx\");  \r\n    response.setContentLength(content.length);\r\n    ServletOutputStream outputStream = response.getOutputStream();\r\n    BufferedInputStream bis = new BufferedInputStream(input);\r\n    BufferedOutputStream bos = new BufferedOutputStream(outputStream);\r\n    byte[] buff = new byte[8192];\r\n    int bytesRead;\r\n    while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {\r\n        bos.write(buff, 0, bytesRead);\r\n    }\r\n    bis.close();\r\n    bos.close();\r\n    outputStream.flush();\r\n    outputStream.close();\r\n}\r\n</code></pre>\r\n<blockquote>\r\n<p>exportExcelXNoTitle方法的代码</p>\r\n</blockquote>\r\n<pre><code>private static void exportExcelXNoTitle(List&lt;ColumnInfoEntity&gt; headList,JSONArray jsonArray,String datePattern,int colWidth, OutputStream out) {\r\n    if(datePattern==null) {\r\n        datePattern = DEFAULT_DATE_PATTERN;\r\n    }\r\n    // 声明一个工作薄 缓存大于1000行时会把之前的行写入硬盘\r\n    SXSSFWorkbook workbook = new SXSSFWorkbook(1000);\r\n    workbook.setCompressTempFiles(true);\r\n    //表头样式\r\n    CellStyle titleStyle = workbook.createCellStyle();\r\n    titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);\r\n    Font titleFont = workbook.createFont();\r\n    titleFont.setFontHeightInPoints((short) 20);\r\n    titleFont.setBoldweight((short) 700);\r\n    titleStyle.setFont(titleFont);\r\n    titleStyle.setFillBackgroundColor(IndexedColors.YELLOW.getIndex());\r\n    //titleStyle.setFillBackgroundColor(IndexedColors.WHITE.getIndex());\r\n    titleStyle.setFillBackgroundColor(HSSFColor.RED.index);\r\n    // 列头样式\r\n    CellStyle headerStyle = workbook.createCellStyle();\r\n    // 设置边框\r\n    headerStyle.setBorderTop((short) 1);\r\n    headerStyle.setBorderRight((short) 1);\r\n    headerStyle.setBorderBottom((short) 1);\r\n    headerStyle.setBorderLeft((short) 1);\r\n    // 水平居中\r\n    headerStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);\r\n    // 生成一个字体\r\n    Font headerFont = workbook.createFont();\r\n    headerFont.setFontHeightInPoints((short) 12);\r\n    headerFont.setColor(IndexedColors.BLACK.getIndex());\r\n    headerFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);\r\n    headerStyle.setFont(headerFont);\r\n    // 单元格样式\r\n    CellStyle cellStyle = workbook.createCellStyle();\r\n    cellStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);\r\n    cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);\r\n    cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);\r\n    cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);\r\n    cellStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);\r\n    cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);\r\n    // 垂直居中\r\n    cellStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);\r\n    // 生成一个字体\r\n    Font cellFont = workbook.createFont();\r\n    cellFont.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);\r\n    cellStyle.setFont(cellFont);\r\n    cellStyle.setFillForegroundColor(IndexedColors.WHITE.getIndex());\r\n    DataFormat format = workbook.createDataFormat();\r\n    cellStyle.setDataFormat(format.getFormat(\"@\"));\r\n    // 生成一个(带标题)表格\r\n    SXSSFSheet sheet = (SXSSFSheet) workbook.createSheet();\r\n    //设置列宽 //至少字节数\r\n    int minBytes = colWidth&lt;DEFAULT_COLOUMN_WIDTH?DEFAULT_COLOUMN_WIDTH:colWidth;\r\n    int[] arrColWidth = new int[headList.size()];\r\n    // 产生表格标题行,以及设置列宽\r\n    String[] properties = new String[headList.size()];\r\n    String[] headers = new String[headList.size()];\r\n    int ii = 0;\r\n    for(ColumnInfoEntity columnInfo:headList){\r\n        properties[ii] = columnInfo.getColumn();\r\n        headers[ii] = columnInfo.getColumnName();\r\n        int bytes = columnInfo.getColumn().getBytes().length;\r\n        arrColWidth[ii] =  bytes &lt; minBytes ? minBytes : bytes;\r\n        sheet.setColumnWidth(ii,arrColWidth[ii]*256);\r\n        ii++;\r\n    }\r\n    // 写导出表格标题\r\n    int rowIndex = 0;\r\n    if(rowIndex == 0){\r\n        //如果数据超过了，则在第二页显示\r\n        if ( rowIndex != 0 ) {\r\n            sheet = (SXSSFSheet) workbook.createSheet();\r\n        }\r\n        //列头 rowIndex =0\r\n        SXSSFRow headerRow = (SXSSFRow) sheet.createRow(0);\r\n        for(int i=0;i&lt;headers.length;i++)\r\n        {\r\n            headerRow.createCell(i).setCellValue(headers[i]);\r\n            headerRow.getCell(i).setCellStyle(headerStyle);\r\n        }\r\n        //数据内容从 rowIndex=1开始\r\n        rowIndex = 1;\r\n    }\r\n    // 遍历集合数据，产生数据行\r\n    for (Object obj : jsonArray) {\r\n        if(rowIndex == 65535){\r\n            //如果数据超过了，则在第二页显示\r\n            if ( rowIndex != 0 ) {\r\n                sheet = (SXSSFSheet) workbook.createSheet();\r\n            }\r\n            //列头 rowIndex =0\r\n            SXSSFRow headerRow = (SXSSFRow) sheet.createRow(0);\r\n            for(int i=0;i&lt;headers.length;i++)\r\n            {\r\n                headerRow.createCell(i).setCellValue(headers[i]);\r\n                headerRow.getCell(i).setCellStyle(headerStyle);\r\n            }\r\n            //数据内容从 rowIndex=1开始\r\n            rowIndex = 1;\r\n        }\r\n        JSONObject jo = (JSONObject) JSONObject.toJSON(obj);\r\n        SXSSFRow dataRow = (SXSSFRow) sheet.createRow(rowIndex);\r\n        for (int i = 0; i &lt; properties.length; i++)\r\n        {\r\n            SXSSFCell newCell = (SXSSFCell) dataRow.createCell(i);\r\n            Object o =  jo.get(properties[i]);\r\n            String cellValue = \"\";\r\n            if(o==null) {\r\n                cellValue = \"\";\r\n            }\r\n            else if(o instanceof Date) {\r\n                cellValue = sdf.format(o);\r\n            }\r\n            else if(o instanceof Float || o instanceof Double || o instanceof BigDecimal) {\r\n                cellValue= new BigDecimal(o.toString()).setScale(5,BigDecimal.ROUND_HALF_UP).toString();\r\n            }\r\n            else {\r\n                cellValue = o.toString();\r\n            }\r\n            newCell.setCellValue(cellValue);\r\n            newCell.setCellStyle(cellStyle);\r\n        }\r\n        rowIndex++;\r\n    }\r\n    try {\r\n        workbook.write(out);\r\n        workbook.dispose();\r\n    } catch (IOException e) {\r\n        e.printStackTrace();\r\n    }\r\n}\r\n</code></pre>\r\n<h2><a id=\"2excel_236\"></a>2.excel的导入</h2>\r\n<blockquote>\r\n<p>excel的导入也是利用自定义的ExcelUtil工具类中的方法，同样直接在controller层使用代码,同样请勿直接复制使用，因为下列代码中有多个自定义的类，下列代码只是作为导入工具类入口的引用，multpartFile为接收到的上传excel文件，ExcelUtil.readExcel为导入的工具类和方法</p>\r\n</blockquote>\r\n<pre><code>@RequestMapping(value = \"/uploadMaterielApply\", method = RequestMethod.POST)\r\n@ResponseBody\r\npublic ResultData uploadMaterielApply(MultipartFile multpartFile){\r\n	if(multpartFile == null){\r\n		logger.error(\"导入失败,导入文件为NULL\");\r\n		return new ResultData(false,\"导入文件为NULL\");	\r\n	}\r\n	MaterielApply apply = new MaterielApply();\r\n	List&lt;Map&lt;String, Object&gt;&gt; list = null;\r\n	List&lt;MaterielApply&gt; appList = new ArrayList&lt;MaterielApply&gt;();\r\n	Map&lt;String,Object&gt; head = new HashMap&lt;String,Object&gt;();\r\n	head.put(\"物料编码\", \"itemCode\");\r\n	head.put(\"申请数量\", \"applyQtyStr\");\r\n	head.put(\"其他说明\", \"remark\");\r\n	try {\r\n		list = ExcelUtil.readExcel(multpartFile, head);\r\n		for(Map&lt;String, Object&gt; map : list){\r\n			MaterielApply materielApply = JSON.parseObject(JSON.toJSONString(map),MaterielApply.class);\r\n			appList.add(materielApply);	\r\n		}\r\n		apply.setMaterielApplyList(appList);\r\n		apply = materielApplyService.getUploadApplyMateriel(apply);\r\n		return new ResultData(apply);\r\n	} catch (IOException e) {\r\n		return new ResultData(false,\"导入失败\");\r\n	} catch (MaterielManageException e) {\r\n		logger.error(\"导入失败{}\"+e.getMsg());\r\n		return new ResultData(false,e.getMsg());\r\n	}\r\n}\r\n</code></pre>\r\n<hr>\r\n<blockquote>\r\n<p>readExcel方法代码如下，其中ExcelUtil工具类中的方法基本都可以复制套用的。</p>\r\n</blockquote>\r\n<pre><code>public static List&lt;Map&lt;String, Object&gt;&gt; readExcel(MultipartFile file,Map&lt;String,Object&gt; head) throws IOException{\r\n	// 判断file是否为空\r\n	if(file == null || EMPTY.equals(file.getOriginalFilename().trim())){\r\n		return null;\r\n	}else{\r\n		String postfix = getPostfix(file.getOriginalFilename());\r\n		if(!EMPTY.equals(postfix)){\r\n			if(OFFICE_EXCEL_2003_POSTFIX.equals(postfix)){\r\n				//后缀名为xls\r\n				return readXls(file,head);\r\n			}else if(OFFICE_EXCEL_2010_POSTFIX.equals(postfix)){\r\n				//后缀名为xlsx\r\n				return readXlsx(file,head);	\r\n			}else{\r\n				return null;\r\n			}\r\n		}\r\n	}\r\n	return null;\r\n}\r\n</code></pre>\r\n<blockquote>\r\n<p>贴出后缀为xlsx的excel的导入方法</p>\r\n</blockquote>\r\n<pre><code>public static List&lt;Map&lt;String, Object&gt;&gt; readXlsx(MultipartFile file,Map&lt;String,Object&gt; head) throws IOException{\r\n	List&lt;Map&lt;String,Object&gt;&gt; list = new ArrayList&lt;Map&lt;String,Object&gt;&gt;();  \r\n	// IO流读取文件  \r\n    InputStream input = null;  \r\n    XSSFWorkbook wb = null; \r\n    try {\r\n		input = file.getInputStream();\r\n		long size = input.available();\r\n		if(size &gt; 10485760){\r\n			return list;\r\n		}\r\n		// 创建文档\r\n		wb = new XSSFWorkbook(input);\r\n		// 读取sheet页\r\n		int sheetNum = wb.getNumberOfSheets();\r\n		if(sheetNum &lt; MaterielManageConstant.LOOP_2000){\r\n			for(int numSheet = 0;numSheet &lt; sheetNum;numSheet++){\r\n				XSSFSheet xssfSheet = wb.getSheetAt(numSheet);  \r\n				if(xssfSheet == null){continue;}\r\n				totalRows = xssfSheet.getLastRowNum(); \r\n				//获取excel上的标题\r\n				XSSFRow headerRow = xssfSheet.getRow(0);\r\n				if(headerRow == null){continue;}\r\n				//标题的单元格数\r\n				totalHCells = headerRow.getLastCellNum();\r\n				Map&lt;String,Object&gt; mapHeader = new HashMap&lt;String,Object&gt;();\r\n				if(totalHCells &lt; MaterielManageConstant.LOOP_10000){\r\n					for(int i = 0;i &lt; totalHCells;i++){\r\n						String headStr = headerRow.getCell(i).getStringCellValue().trim();\r\n						if(StringUtils.isNotEmpty(headStr)){mapHeader.put(String.valueOf(i), head.get(headStr));}\r\n					}	\r\n				}\r\n				//读取数据，从第二行开始\r\n				if(totalRows &lt; MaterielManageConstant.LOOP_100000){\r\n					for(int j = 1;j &lt;= totalRows;j++){\r\n						XSSFRow xssfRow = xssfSheet.getRow(j);\r\n						if(xssfRow != null){\r\n							totalCells = xssfRow.getLastCellNum();\r\n							//读取列，从第一列开始\r\n	                        Map &lt;String,Object&gt; data = new HashMap&lt;String,Object&gt;();\r\n	                        if(totalCells &lt; MaterielManageConstant.LOOP_10000){\r\n	                        	for(int m = 0;m &lt; totalCells;m++){\r\n		                        	XSSFCell cell = xssfRow.getCell(m); \r\n		                        	if(cell == null){continue;}\r\n		                            data.put((String) mapHeader.get(String.valueOf(m)), getXValue(cell).trim());\r\n		                        }	\r\n	                        }\r\n	                        list.add(data);\r\n						}\r\n					}	\r\n				}\r\n			}	\r\n		}\r\n		return list;\r\n	} catch (IOException e) {\r\n		e.printStackTrace();\r\n	} finally{\r\n		input.close();\r\n	}\r\n	return null;\r\n}\r\n</code></pre>\r\n<blockquote>\r\n<p>其实后缀为xls的excel方法和上面的方法差不多，只是把上面方法中的XSSFWorkbook换为了HSSFWorkbook，两者的区别可以去网上收索，<br>\r\n基本的方法就大概说了一下，有深入的理解会再补充</p>\r\n</blockquote>', '# 你好\n现在我即将编写一段假的文段\n> 哈哈哈，你比较酸把', 'beijing', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-04-12 16:21:18', '1', '2019-04-12 16:21:18');
INSERT INTO `image_blog` VALUES ('9', 'markdown测试1', 'this is second markdown test', '<p><h3>Table of Contents</h3><ul><li><a href=\"#jettywar_1\">关于使用jetty部署war包后调用其他接口不通的问题</a></li><ul><li><a href=\"#1_2\">1、现象描述</a></li><li><a href=\"#2_4\">2、解决办法</a></li><li><a href=\"#3_8\">3、扩充</a></li></ul></ul></p>\n<h1><a id=\"jettywar_1\"></a>关于使用jetty部署war包后调用其他接口不通的问题</h1>\n<h2><a id=\"1_2\"></a>1、现象描述</h2>\n<blockquote>\n<p>用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。</p>\n</blockquote>\n<h2><a id=\"2_4\"></a>2、解决办法</h2>\n<blockquote>\n<p>启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar<br />\n<img src=\"https://i.imgur.com/73x12A4.png\" alt=\"\" /><br />\n图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，</p>\n</blockquote>\n<h2><a id=\"3_8\"></a>3、扩充</h2>\n<blockquote>\n<p>直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。</p>\n</blockquote>\n', '@[toc]\r\n# 关于使用jetty部署war包后调用其他接口不通的问题\r\n## 1、现象描述\r\n> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。\r\n## 2、解决办法\r\n> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  \r\n> ![](https://i.imgur.com/73x12A4.png)\r\n> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，\r\n## 3、扩充\r\n> 直接像上图那样启动，会默认在C:\\Users\\Administrator\\AppData\\Local\\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。', 'shenzhen', NULL, 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/image6.jpg', 'Y', '1', '2019-01-10 11:14:23', '1', '2019-01-10 11:14:23');

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
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_permission
-- ----------------------------
INSERT INTO `m_fnd_permission` VALUES (1, 'employeePageList', '用户的分页查询', '/employee/employeePageList', 'Y', '1', '2018-11-11 14:15:25', '1', '2018-11-11 14:15:28');
INSERT INTO `m_fnd_permission` VALUES (2, 'saveEmployee', '用户的新增', '/employee/saveEmployee', 'Y', '1', '2018-12-28 11:54:39', '1', '2018-12-28 11:54:42');
INSERT INTO `m_fnd_permission` VALUES (4, 'disableEmployee', '失效用户', '/employee/disableEmployee', 'Y', '1', '2018-12-28 11:56:37', '1', '2018-12-28 11:56:39');
INSERT INTO `m_fnd_permission` VALUES (5, 'imagePageList', '图片博客的分页查询', '/image/imagePageList', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (6, 'imageDetail', '图片博客的详细信息', '/image/imageDetail', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (7, 'updateImage', '更新图片博客的信息', '/image/updateImage', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (8, 'addImage', '新增图片博客', '/image/addImage', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (9, 'uploadImg', '上传图片', '/upload/uploadImg', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (10, 'deleteUploadImg', '删除上传图片', '/upload/deleteUploadImg', 'Y', '1', '2019-01-16 16:40:20', '1', '2019-01-16 16:40:23');
INSERT INTO `m_fnd_permission` VALUES (11, 'disableImage', '失效图片', '/image/disableImage', 'Y', '1', '2019-01-16 18:35:28', '1', '2019-01-16 18:35:30');
INSERT INTO `m_fnd_permission` VALUES (12, 'downloadImg', '下载图片', '/upload/downloadImg', 'Y', '1', '2019-01-18 14:57:01', '1', '2019-01-18 14:57:04');
INSERT INTO `m_fnd_permission` VALUES (13, 'uploadOss', '上传到OSS', '/aliOss/uploadOss', 'Y', '1', '2019-04-12 15:51:43', '1', '2019-04-12 15:51:46');

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
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_role
-- ----------------------------
INSERT INTO `m_fnd_role` VALUES (1, 'admin', '管理员', '管理员', 'Y', '1', '2018-11-11 14:12:35', '1', '2018-11-11 14:12:37');
INSERT INTO `m_fnd_role` VALUES (2, 'user', '普通用户', '普通用户', 'Y', '1', '2018-11-27 18:27:44', '1', '2018-11-27 18:27:46');

-- ----------------------------
-- Table structure for m_fnd_upload
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_upload`;
CREATE TABLE `m_fnd_upload`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ref_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源参考表',
  `ref_id` bigint(20) NULL DEFAULT NULL COMMENT '来源参考表Id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_size` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_upload
-- ----------------------------
INSERT INTO `m_fnd_upload` VALUES ('1', NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\15fc3dbcaae24afeb74509f9782579b61546855028675.jpg', 'Y', '1', '2019-01-07 17:57:09', '1', '2019-01-07 17:57:09');
INSERT INTO `m_fnd_upload` VALUES ('12', NULL, NULL, 'debug.2018-12-24.0.log', 'application/octet-stream', '31758249', '\\80b675a7cbe34b4eabc32767173a42401547021782916.log', 'Y', '1', '2019-01-09 16:16:23', '1', '2019-01-09 16:16:23');
INSERT INTO `m_fnd_upload` VALUES ('13', 'image_blog', 4, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\6721a8833cc7405fb551d21a733a29731547023904688.jpg', 'Y', '1', '2019-01-09 16:51:45', '1', '2019-01-09 16:51:58');
INSERT INTO `m_fnd_upload` VALUES ('14', 'image_blog', 5, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\a66a8d3013c241baa190d33bd6256bd21547024036743.jpg', 'N', '1', '2019-01-09 16:53:57', '1', '2019-01-09 16:54:17');
INSERT INTO `m_fnd_upload` VALUES ('15', 'image_blog', 6, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\e3d2ce4796d047dba5335abf4ef9248e1547025168253.jpg', 'Y', '1', '2019-01-09 17:12:49', '1', '2019-01-09 17:13:23');
INSERT INTO `m_fnd_upload` VALUES ('16', 'image_blog', 7, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\a2e7f212e0514124984131be3f6866cd1547025784512.jpg', 'Y', '1', '2019-01-09 17:23:05', '1', '2019-01-09 17:23:31');
INSERT INTO `m_fnd_upload` VALUES ('17', 'image_blog', 8, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\de45d72cf5774acbb02e03b49095d5dd1547089805163.jpg', 'Y', '1', '2019-01-10 11:10:06', '1', '2019-01-10 11:12:03');
INSERT INTO `m_fnd_upload` VALUES ('18', 'image_blog', 9, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\d4f093850c6145c088c21c4d8f02d6761547090048813.jpg', 'Y', '1', '2019-01-10 11:14:09', '1', '2019-01-10 11:14:23');
INSERT INTO `m_fnd_upload` VALUES ('19', NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\23faf7da8dfe497da847ea93c2b407b21547694586641.jpg', 'Y', '1', '2019-01-17 11:09:47', '1', '2019-01-17 11:09:47');
INSERT INTO `m_fnd_upload` VALUES ('2', NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\07b5910fc3a146e9960f41287623a3361546910612790.jpg', 'Y', '1', '2019-01-08 09:23:33', '1', '2019-01-08 09:23:33');
INSERT INTO `m_fnd_upload` VALUES ('20', 'image_blog', 12, '07b5910fc3a146e9960f41287623a3361546910612790.jpg', 'image/jpeg', '107432', 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/lmsystem/111111.jpg', 'Y', '1', '2019-04-12 16:12:17', NULL, '2019-04-12 16:12:17');
INSERT INTO `m_fnd_upload` VALUES ('21', 'image_blog', 13, '574e9890790e4223bc8e35a77a77c7641547003186306.jpg', 'image/jpeg', '107432', 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/lmsystem/111111.jpg', 'Y', '1', '2019-04-12 16:13:42', NULL, '2019-04-12 16:13:42');
INSERT INTO `m_fnd_upload` VALUES ('22', 'image_blog', 14, 'a1043f7aa6d346f29c960fd66807655b1546916208471.jpg', 'image/jpeg', '196573', 'http://2019-2-16-ck.oss-cn-beijing.aliyuncs.com/lmsystem/111111.jpg', 'Y', '1', '2019-04-12 16:19:55', NULL, '2019-04-12 16:21:18');
INSERT INTO `m_fnd_upload` VALUES ('3', NULL, NULL, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\aa63f01d44124605bd9cc3f3294a8d521546915929733.jpg', 'Y', '1', '2019-01-08 10:52:10', '1', '2019-01-08 10:52:10');
INSERT INTO `m_fnd_upload` VALUES ('4', 'image_blog', 2, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\a1043f7aa6d346f29c960fd66807655b1546916208471.jpg', 'Y', '1', '2019-01-08 10:56:49', '1', '2019-01-08 10:56:55');
INSERT INTO `m_fnd_upload` VALUES ('5', 'image_blog', 3, '微信图片_20181220091541.jpg', 'image/jpeg', '107432', '\\574e9890790e4223bc8e35a77a77c7641547003186306.jpg', 'Y', '1', '2019-01-09 11:06:26', '1', '2019-01-09 11:06:50');
INSERT INTO `m_fnd_upload` VALUES ('6', NULL, NULL, '微信图片_20181220091202.jpg', 'image/jpeg', '196573', '\\6e36ef8f649449ffa0666f27487b41e51547020881837.jpg', 'Y', '1', '2019-01-09 16:01:22', '1', '2019-01-09 16:01:22');
INSERT INTO `m_fnd_upload` VALUES ('9', NULL, NULL, 'debug.2018-12-24.0(1).log', 'application/octet-stream', '31758249', '\\e8c990d1508648f88c2fa642d25b3fe81547021231704.log', 'Y', '1', '2019-01-09 16:07:12', '1', '2019-01-09 16:07:12');

-- ----------------------------
-- Table structure for m_fnd_user
-- ----------------------------
DROP TABLE IF EXISTS `m_fnd_user`;
CREATE TABLE `m_fnd_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `job_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户电话',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ct` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_ut` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基础表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_fnd_user
-- ----------------------------
INSERT INTO `m_fnd_user` VALUES ('1', 'chenkang', '陈康', '123456', '01378803', 25, '1', '13258259253', 'Y', '1', '2018-11-11 14:09:18', '1', '2018-11-11 14:09:24');
INSERT INTO `m_fnd_user` VALUES ('11', '01378803', '陈康', '123456', '01378803', 25, '1', '13683447180', 'Y', '1', '2018-11-27 18:10:40', '1', '2018-11-27 18:10:40');
INSERT INTO `m_fnd_user` VALUES ('1130068692743303170', '454564', '乘人不备', '123456', NULL, 22, '0', '13258963', 'Y', NULL, '2019-05-19 19:12:26', NULL, '2019-05-19 19:12:26');
INSERT INTO `m_fnd_user` VALUES ('1130078677715935233', '454564', '乘人不备', '123456', NULL, 22, '0', '13258963', 'Y', NULL, '2019-05-19 19:52:07', NULL, '2019-05-19 19:52:07');
INSERT INTO `m_fnd_user` VALUES ('12', 'lixiaoshuang', '李玉林', '123456', '888888', 21, '0', '13258259563', 'Y', '1', '2018-11-27 18:16:35', '1', '2018-11-29 15:32:01');
INSERT INTO `m_fnd_user` VALUES ('13', 'blueceLi', '李小双', NULL, NULL, 21, '0', '13683447852', 'Y', '1', '2018-12-27 11:38:40', '1', '2018-12-27 11:38:40');
INSERT INTO `m_fnd_user` VALUES ('14', 'ck457897564', '李小二', '123456', NULL, 25, '1', '13258259253', 'Y', '1', '2018-12-27 13:35:13', '1', '2018-12-27 13:35:13');
INSERT INTO `m_fnd_user` VALUES ('15', 'test001', '林思雨', '123456', NULL, 25, '0', '13258259256', 'Y', '1', '2018-12-27 14:52:33', '1', '2018-12-27 14:52:33');
INSERT INTO `m_fnd_user` VALUES ('17', 'jackChen', 'jackChen', '123456', NULL, 25, '1', '13683447180', 'Y', '1', '2018-12-27 16:28:09', '1', '2018-12-27 16:28:09');
INSERT INTO `m_fnd_user` VALUES ('18', 'buleceLI', '李大双', '123456', NULL, 25, '1', '13258259253', 'Y', '1', '2018-12-28 13:45:01', '1', '2018-12-28 13:45:01');
INSERT INTO `m_fnd_user` VALUES ('19', 'ChenDa', '陈达', '123456', NULL, 25, '1', '13258259253', 'Y', '1', '2018-12-28 15:29:46', '1', '2018-12-28 15:29:46');
INSERT INTO `m_fnd_user` VALUES ('20', 'XiaMi', '李虾米', '123456', NULL, 25, '1', '13683447180', 'Y', '1', '2019-01-02 11:52:52', '1', '2019-01-02 11:52:52');
INSERT INTO `m_fnd_user` VALUES ('22', '013788031', '陈康', '123456', NULL, 123, '1', '13258259253', 'Y', '1', '2019-01-24 11:17:32', '1', '2019-01-24 11:17:32');
INSERT INTO `m_fnd_user` VALUES ('23', 'chenshuaige', '陈康', '22', NULL, 25, '1', '13258259253', 'Y', '11', '2019-01-24 11:31:37', '11', '2019-01-24 11:31:37');
INSERT INTO `m_fnd_user` VALUES ('6', 'limin', '陈康', '123456', '013788031', 25, '0', '13683447013', 'Y', '1', '2018-11-11 17:05:30', '11', '2019-01-24 11:32:37');
INSERT INTO `m_fnd_user` VALUES ('7', 'limin1', '李敏2号', '123456', '0137880311', 25, '0', '13683447013', 'N', '1', '2018-11-11 17:05:54', '1', '2018-12-27 16:14:53');
INSERT INTO `m_fnd_user` VALUES ('8', 'limin2', '李敏', '123456', '013770352', 25, '0', '13683447013', 'Y', '1', '2018-11-11 17:17:52', '1', '2018-12-27 18:24:43');

SET FOREIGN_KEY_CHECKS = 1;
