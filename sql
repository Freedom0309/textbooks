/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50638
 Source Host           : 127.0.0.1:3306
 Source Schema         : textbooks

 Target Server Type    : MySQL
 Target Server Version : 50638
 File Encoding         : 65001

 Date: 13/04/2019 21:45:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_app_books
-- ----------------------------
DROP TABLE IF EXISTS `t_app_books`;
CREATE TABLE `t_app_books`  (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `ghs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单价',
  `discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `count` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '剩余数量',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '{,,,,}',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_app_books
-- ----------------------------
INSERT INTO `t_app_books` VALUES ('776719b8acfe4cd9af9b427975200860', '1', '清华大学出版社', '1', NULL, '21', '1', '充足', '', NULL);
INSERT INTO `t_app_books` VALUES ('bd582fa2241c494b992a409c0a65b084', '啊啊安南', '阿三打撒', '1', NULL, '1', '1', '充足', '', NULL);

-- ----------------------------
-- Table structure for t_app_majorbook
-- ----------------------------
DROP TABLE IF EXISTS `t_app_majorbook`;
CREATE TABLE `t_app_majorbook`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `majorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `classid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `cclassnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级数量',
  `collegeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领取地点',
  `reviewbook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级数据状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_app_majorbook
-- ----------------------------
INSERT INTO `t_app_majorbook` VALUES ('067e0858c2c346bd8cf8cdddfa9ccee2', 'bd582fa2241c494b992a409c0a65b084', '3', '14', '', '1', '12', '未领取');
INSERT INTO `t_app_majorbook` VALUES ('bd33fe39dfcf477e8769bf21bb6ecf6d', 'bd582fa2241c494b992a409c0a65b084', '3', '14', '12', '1', '1', '未领取');
INSERT INTO `t_app_majorbook` VALUES ('d451478893314dbcb57ab7c380354cf3', 'bd582fa2241c494b992a409c0a65b084', '3', '14', '23', '1', '2', '未领取');
INSERT INTO `t_app_majorbook` VALUES ('fb5c48c37a3a432989b8dbfdec4f2d0e', 'bd582fa2241c494b992a409c0a65b084', '3', '14', '155', '1', '122', '未领取');

-- ----------------------------
-- Table structure for t_app_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_app_notice`;
CREATE TABLE `t_app_notice`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `majorbookid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级教材关系',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `syscreatime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionary`;
CREATE TABLE `t_sys_dictionary`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordernum` int(32) NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_dictionary
-- ----------------------------
INSERT INTO `t_sys_dictionary` VALUES ('1', 'app.college', '信息工程学院', '信息工程学院', 1, '信息工程学院', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('10', 'app.ghs', 'xxx出版社', 'xxx出版社', 4, '北京大学', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('11', 'app.ghs', '清华大学出版社', '清华大学出版社', 1, '清华大学出版社', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('12', 'app.ghs', '北京大学出版社', '北京大学出版社', 3, '北京大学出版社', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('13', 'app.ghs', '西安电子科技大学出版社', '西安电子科技大学出版社', 2, '西安电子科技大学出版社', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('14', 'app.class', '软件一班', '软件一班', 1, '软件一班', '3');
INSERT INTO `t_sys_dictionary` VALUES ('2', 'app.college', '外国语学院', '外国语学院', 2, '外国语学院', 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('3', 'app.major', '软件工程', '软件工程', 1, '软件工程', '1');
INSERT INTO `t_sys_dictionary` VALUES ('4', 'app.major', '英语', '英语', 1, '英语', '2');
INSERT INTO `t_sys_dictionary` VALUES ('5', 'app.theme', '缴费提醒', '缴费提醒', 1, NULL, 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('6', 'app.theme', '出库提醒', '出库提醒', NULL, NULL, 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('7', 'app.theme', '审核提醒', '审核提醒', NULL, NULL, 'R0');
INSERT INTO `t_sys_dictionary` VALUES ('8', 'app.theme', '系统提醒', '系统提醒', NULL, NULL, 'R0');

-- ----------------------------
-- Table structure for t_sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_unit`;
CREATE TABLE `t_sys_unit`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
  `parentid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位名称',
  `aliasname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位别名',
  `unitcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位介绍',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位地址',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位邮箱',
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位网站',
  `location` int(32) NULL DEFAULT NULL COMMENT '排序字段',
  `haschildren` tinyint(4) NULL DEFAULT 0 COMMENT '有子节点',
  `delflag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记',
  `num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_UNIT_PATH`(`path`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_unit
-- ----------------------------
INSERT INTO `t_sys_unit` VALUES ('1554733660', NULL, NULL, 'ruibao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
  `loginat` int(32) NULL DEFAULT NULL COMMENT '登陆时间',
  `loginname` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `delflag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码盐',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名',
  `ename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `isonline` tinyint(4) NULL DEFAULT 0 COMMENT '是否在线',
  `disabled` tinyint(4) NULL DEFAULT 0 COMMENT '是否禁用',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆IP',
  `logincount` int(32) NULL DEFAULT NULL COMMENT '登陆次数',
  `customMenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常用菜单',
  `logintheme` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '皮肤样式',
  `unitid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sysopby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `syscreatetime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_USER_LOGINNAME`(`loginname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
