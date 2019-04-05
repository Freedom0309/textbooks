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

 Date: 05/04/2019 10:08:54
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
  `ghs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货商',
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单价',
  `discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `exd1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exd2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config`  (
  `configkey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '键值',
  `configvalue` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`configkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_config
-- ----------------------------
INSERT INTO `t_sys_config` VALUES ('appdoctemplate', '/upload', '文件上传文件夹');
INSERT INTO `t_sys_config` VALUES ('appdomain', '127.0.0.1', '系统域名');
INSERT INTO `t_sys_config` VALUES ('appname', '项目评审业务综合管理系统', '项目评审业务综合管理系统');
INSERT INTO `t_sys_config` VALUES ('appshortname', '项目评审业务综合管理系统', '项目评审业务综合管理系统');
INSERT INTO `t_sys_config` VALUES ('copyright', '西安瑞宝', '西安瑞宝');

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
  `sysopby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syscreatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_dictionary
-- ----------------------------
INSERT INTO `t_sys_dictionary` VALUES ('0629ca14a6024da4aab01a39d10ba184', 'app.acceptance.ptype.ys', '10：运维服务方案', '10：运维服务方案', 10, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('07fea16a109b4bf4bb2b020dc02a461d', 'app.acceptance.ptype.ys', '06：中标通知书', '06：中标通知书', 6, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('0cfeb3f85979495fb3c819571f0dc8cb', 'app.acceptance.ptype.ys', '37：验收测评报告', '37：验收测评报告', 37, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('0db25116d8fe4a85a1119c7dcd5854fe', 'app.acceptance.ptype.ys', '11：项目成果', '11：项目成果', 11, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('0f42f9b210c1464ba1cb3235254411fd', 'app.acceptance.ptype.ys', '07：项目合同', '07：项目合同', 7, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('10aeab162a9b496cb33d5b223c4a4c16', 'app.acceptance.ptype.ys', '36：验收方案', '36：验收方案', 36, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('12ec754b-64b0-11e8-955f-000c29da5649', 'app.modelquota.score', '项目可研评估', '项目可研评估', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('12ee7195-64b0-11e8-955f-000c29da5649', 'app.modelquota.score', '项目费用评估', '项目费用评估', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('12f0ea5e-64b0-11e8-955f-000c29da5649', 'app.modelquota.score', '项目需求评估', '项目需求评估', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('12f1328d-64b0-11e8-955f-000c29da5649', 'app.modelquota.score', '需求意见', '需求意见', 4, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('12f2c630-64b0-11e8-955f-000c29da5649', 'app.modelquota.score', '验收意见', '验收意见', 5, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('1485847bc24e43789f7320a9b08ea668', 'app.common.shStatus', '停用', '停用', NULL, '', '5cfa1f7133164c4d84e99725f388e950', '2018-11-22 09:32:48');
INSERT INTO `t_sys_dictionary` VALUES ('17bc34e54355497a852141bb63962116', 'app.acceptance.ptype.ys', '10：物资货物交接单', '10：物资货物交接单', 10, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('1bf2c551345444338916cad032a5c02c', 'app.acceptance.ptype.ys', '10-1：到货评价单', '10-1：到货评价单', 101, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('1c70327f28ae417d8c11a61ae044b7b2', 'app.acceptance.ptype.ys', '03：可研评审意见', '03：可研评审意见', 3, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('1d2983865cf04851aa37a0f9c1b70ba1', 'app.acceptance.ptype.ys', '13：系统管理员手册', '13：系统管理员手册', 13, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('1ef976306a0f4a178558b245a5fc220e', 'app.acceptance.ptype.ys', '21：信息化项目投资结算书', '21：信息化项目投资结算书', 21, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('22c5f1b7f60c4b699cb4901d55ff77fc', 'app.project.psStatus', '评审完成', '评审完成', 2, '', '5cfa1f7133164c4d84e99725f388e950', '2018-09-07 11:35:02');
INSERT INTO `t_sys_dictionary` VALUES ('235406e1589e4e819e5afb68b031aac2', 'app.acceptance.ptype.ys', '18：技术报告', '18：技术报告', 18, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('250d2060eb204f8abe9378fce7f3d02e', 'app.acceptance.ptype.ys', '10：公司项目启动或推进文件', '10：公司项目启动或推进文件', 10, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('255bdc0390594114ab3379776a7c7829', 'app.acceptance.ptype.ys', '04：可研批复文件', '04：可研批复文件', 4, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('25b04e8d7ad64bdab74d6fa5b98fa38e', 'app.project.psStatus', '待验收', '待验收', 3, '', '5cfa1f7133164c4d84e99725f388e950', '2018-09-07 11:36:17');
INSERT INTO `t_sys_dictionary` VALUES ('267dd379391b42b08f1c5e8077152b57', 'app.acceptance.ptype.ys', '20：用户报告', '20：用户报告', 20, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('29bb1ba5763b4ec1a50f30c7fbaac50c', 'app.acceptance.ptype.ys', '05：采购文件', '05：采购文件', 5, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2a2e41d430c444c2b2084654fb7e23bb', 'app.acceptance.ptype.ys', '23：实施方案', '23：实施方案', 23, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b458cb5-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '01：可行性研究报告', '01：可行性研究报告', 1, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b4755a7-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '02：可行性研究报告批复', '02：可行性研究报告批复', 2, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b48d29b-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '03：投资计划', '03：投资计划', 3, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b49b627-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '04：中标通知', '04：中标通知', 4, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b4ba5d1-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '05：项目合同', '05：项目合同', 5, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b4f52aa-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '06：技术规范', '06：技术规范', 6, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b5397b7-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '07：开工报告', '07：开工报告', 7, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b55652c-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '08：实施方案', '08：实施方案', 8, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b579f4c-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '09：上线申请单', '09：上线申请单', 9, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b579f4c-4e72-11e8-955f-000c29da997', 'app.project.psStatus', '待可研', '待可研', 1, NULL, '5cfa1f7133164c4d84e99725f388e950', NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b5914d4-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '10：验收申请单', '10：验收申请单', 10, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b5b0b6c-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '11：运行报告', '11：运行报告', 11, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b5cc871-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '12：用户报告', '12：用户报告', 12, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b5e8851-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '13：测试报告', '13：测试报告', 13, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b616378-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '14：建转运报告', '14：建转运报告', 14, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b61b631-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '15：技术报告', '15：技术报告', 15, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b640bca-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '16：工作报告', '16：工作报告', 16, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b65e36c-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '17：投资结算书', '17：投资结算书', 17, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b67b095-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '18：竣工报告', '18：竣工报告', 18, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b697abf-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '19：验收报告', '19：验收报告', 19, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b6cb912-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '20：上线试运行验收申请单', '20：上线试运行验收申请单', 20, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b6cfa63-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '21：试运行验收报告', '21：试运行验收报告', 21, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b6db334-4e72-11e8-955f-000c29da5649', 'app.acceptance.ptype.ys', '22：其他文档', '22：其他文档', 22, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('2b6db334-4e72-11e8-955f-000c29da5655', 'app.acceptance.ptype.ys', '23：总部验收资料', '23：总部验收资料', 23, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('3173a356c0a8016701e9ed1f6bfc75a6', 'sys.upload.tempaddress', 'D:\\upload\\temp', 'D:\\upload\\temp', 1, '自定义文件上传目录', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('32b03fc6a847484ca833b5c20c0ae03a', 'app.reviewproject.cclassitem', '01：测试模板', '01：测试模板', 1, '', '5cfa1f7133164c4d84e99725f388e950', '2018-12-25 11:39:38');
INSERT INTO `t_sys_dictionary` VALUES ('33d9ee4c3a4e466493f387a2ea5c9d32', 'app.acceptance.ptype.ys', '44：项目竣工决算表', '44：项目竣工决算表', 44, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('3724bab8fea04ce6905061c3989c9f01', 'app.reviewproject.cclass', '咨询类', '咨询类', 5, '', '5cfa1f7133164c4d84e99725f388e950', '2019-03-20 15:48:21');
INSERT INTO `t_sys_dictionary` VALUES ('3d28156e3abd482c91bc723aaec104f9', 'app.acceptance.ptype.ys', '03：可研评审意见', '03：可研评审意见', 3, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('44d49701a9874d7c925bf68ccf049e0a', 'app.acceptance.ptype.ys', '16：信息化项目竣工验收申请表', '16：信息化项目竣工验收申请表', 16, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4579f50f60e94424b2e6abe44fe76e18', 'app.acceptance.ptype.ys', '16：技术报告', '16：技术报告', 16, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('45f6f22154184631a67a71a0008d9bb0', 'app.acceptance.ptype.ys', '19：信息化项目投资结算书', '19：信息化项目投资结算书', 19, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('460e10811aaa42128b8838d3f117b260', 'app.acceptance.ptype.ys', '14：概要设计说明书', '14：概要设计说明书', 14, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('484dc6fc9a0f496e97b0838a4b3024f3', 'app.acceptance.ptype.ys', '08：合同变更文件', '08：合同变更文件', 8, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4cd97a61-52a4-11e8-955f-000c29da5649', 'app.review.room', '1房间', '1房间', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4cdd09d1-52a4-11e8-955f-000c29da5649', 'app.review.room', '3房间', '3房间', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4ce016ac-52a4-11e8-955f-000c29da5649', 'app.review.room', '5房间', '5房间', 5, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4e767da0fff644e4b472080c49c26e94', 'app.acceptance.ptype.ys', '13：系统管理员手册', '13：系统管理员手册', 13, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('4fd52e94745b4468b06ac71fd7171b12', 'app.acceptance.ptype.ys', '19：技术报告', '19：技术报告', 19, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('525b67b5126147ee95e8aab7d9cf4b9a', 'app.acceptance.ptype.ys', '11：集成测试报告', '11：集成测试报告', 11, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('526f970430bc408689962b17fdceeb2a', 'app.acceptance.ptype.ys', '11：软件需求规格说明书', '11：软件需求规格说明书', 11, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('55585409a83c4d308e2bc4be8fa1bc43', 'app.acceptance.ptype.ys', '15：现场监理过程记录', '15：现场监理过程记录', 15, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('556300fb145e4b54a11ec46f6adb4301', 'app.acceptance.ptype.ys', '09：开工报告', '09：开工报告', 9, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('565de438-5a93-11e8-9b8c-02004c4f4f50', 'app.acceptance.ptype.ky', '01：可研报告', '01：可研报告', 1, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('565e8d03-5a93-11e8-9b8c-02004c4f4f50', 'app.acceptance.ptype.ky', '02：项目工作分解结构表（WBS）', '02：项目工作分解结构表（WBS）', 2, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('565f2993-5a93-11e8-9b8c-02004c4f4f50', 'app.acceptance.ptype.ky', '03：可研汇报PPT', '03：可研汇报PPT', 3, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('565f2993-5a93-11e8-9t8c-02004c4f4f50', 'app.acceptance.ptype.ky', '04：其他文档', '04：其他文档', 4, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('57dfc1036415464888bb9421760c1b55', 'app.acceptance.ptype.ys', '17：工作报告', '17：工作报告', 17, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('580475b344a04bc89e57c4766b1a6fd1', 'app.acceptance.ptype.ys', '14：系统应急预案及快速恢复方案', '14：系统应急预案及快速恢复方案', 14, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('582af4d422b74cd8a6b2ddff05b93c17', 'app.reviewproject.cclass', '设计开发实施类', '设计开发实施类', 2, '', '5cfa1f7133164c4d84e99725f388e950', '2019-03-20 15:47:15');
INSERT INTO `t_sys_dictionary` VALUES ('59cc27d902ae4c90bdb3a4c0d6542c92', 'app.acceptance.ptype.ys', '01：下达计划文件', '01：下达计划文件', 1, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('59e8318a23b74fa693a982ff8d0ca6a8', 'app.acceptance.ptype.ys', '39：技术报告', '39：技术报告', 39, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('5ac91888609841b88da39e86efe3932a', 'app.acceptance.ptype.ys', '08：合同变更文件', '08：合同变更文件', 8, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('5e4894f5ad004db481090c3b16561770', 'app.acceptance.ptype.ys', '24：实施方案评审意见', '24：实施方案评审意见', 24, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('5f2f92ddde544ad4b20aec2a711b2f29', 'app.acceptance.ptype.ys', '01：下达计划文件', '01：下达计划文件', 1, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('5f575341b7ca47f185785fe0e4fa39db', 'app.common.shStatus', '新建', '新建', NULL, '', '5cfa1f7133164c4d84e99725f388e950', '2018-11-22 09:32:08');
INSERT INTO `t_sys_dictionary` VALUES ('61fdcbe9f9be4e6ebf7d621731101a85', 'app.acceptance.ptype.ys', '42：信息化项目竣工验收报告', '42：信息化项目竣工验收报告', 42, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('62bbcac4744544b2ae88f7c5de1bdaa7', 'app.acceptance.ptype.ys', '06：中标通知书', '06：中标通知书', 6, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('647b23715d40428dacde6d47d4f38dc8', 'app.acceptance.ptype.ys', '12：系统部署方案', '12：系统部署方案', 12, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('6548594488a7435f9d011a221069cd00', 'app.acceptance.ptype.ys', '09：物资到货验收单', '09：物资到货验收单', 9, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('65b886ffd9d34fb7b794bbed867d414e', 'app.acceptance.ptype.ys', '15：工作报告', '15：工作报告', 15, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('66a483394f3040f3a06819017f0f49b3', 'app.acceptance.ptype.ys', '15：信息化项目竣工验收申请表', '15：信息化项目竣工验收申请表', 15, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('66dfdd85b1464b6480866eab0ee5074c', 'app.project.psStatus', '其他', '其他', 4, '', '5cfa1f7133164c4d84e99725f388e950', '2018-09-07 11:36:57');
INSERT INTO `t_sys_dictionary` VALUES ('68477a567bdb44f28a4e287015b10449', 'app.acceptance.ptype.ys', '09：运维项目开工报告', '09：运维项目开工报告', 9, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('6a0ce91e77aa419fa1c645dabe001f05', 'app.acceptance.ptype.ys', '01：下达计划文件', '01：下达计划文件', 1, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('6caad75f94e94727ba92ee2fc89cbc67', 'app.acceptance.ptype.ys', '06：中标通知书', '06：中标通知书', 6, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('6de52af41e7248f696b67ac16a0f1b9c', 'app.acceptance.ptype.ys', '09：开工报告', '09：开工报告', 9, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('70fe46caabcf43c5ba6838ae4d8ce2e8', 'app.acceptance.ptype.ys', '02：项目可研报告', '02：项目可研报告', 2, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('7145f3a9447f40c7b720ef47a27b0746', 'app.acceptance.ptype.ys', '31：用户使用反馈报告', '31：用户使用反馈报告', 31, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('7678e5aca58143f1923a9801d53ea872', 'app.acceptance.ptype.ys', '03：可研评审意见', '03：可研评审意见', 3, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('76ca8293d09948bab035f04f53111bc2', 'app.acceptance.ptype.ys', '12：实施方案', '12：实施方案', 12, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('782888e237d4483a9a8aca34f8d87889', 'app.acceptance.ptype.ys', '16：详细设计说明书', '16：详细设计说明书', 16, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('7a59b0a574e4469ca18f5d869e00768e', 'app.acceptance.ptype.ys', '10：公司项目启动或推进文件', '10：公司项目启动或推进文件', 10, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('7d32d45febad44f48449f4ae8902a3c7', 'app.acceptance.ptype.ys', '22：安全评估报告', '22：安全评估报告', 22, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('7f325bcb2c45429bb0fb850fa4b3e676', 'app.acceptance.ptype.ys', '15：运维服务项目工作报告', '15：运维服务项目工作报告', 15, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('81e93c83c84f48b9bf4f29feeb59e2b4', 'app.acceptance.ptype.ys', '18：工作报告', '18：工作报告', 18, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82d6ac6d-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.ismust', 'Y', '是', 1, '是否必须', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82db9d4a-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.ismust', 'N', '否', 2, '是否必须', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82e2f249-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.ismulti', 'Y', '是', 2, '是否多个文档', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82e87b50-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.ismulti', 'N', '否', 1, '是否多个文档', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82ecbc3e-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.isnormal', 'Y', '是', 1, '是否规范化模板', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('82f07159-41ec-11e8-955f-000c29da5649', 'app.docmodelitem.isnormal', 'N', '否', 2, '是否规范化模板', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83d3a023-5284-11e8-955f-000c29da5649', 'app.review.cno', '第一批', '第一批', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83d59d8f-5284-11e8-955f-000c29da5649', 'app.review.cno', '第二批', '第二批', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83d6e462-5284-11e8-955f-000c29da5649', 'app.review.cno', '第三批', '第三批', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83d84957-5284-11e8-955f-000c29da5649', 'app.review.cno', '第四批', '第四批', 4, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83da1a5c-5284-11e8-955f-000c29da5649', 'app.review.cno', '第五批', '第五批', 5, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83dbef46-5284-11e8-955f-000c29da5649', 'app.review.cno', '第六批', '第六批', 6, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('83ddc369-5284-11e8-955f-000c29da5649', 'app.review.cno', '第七批', '第七批', 7, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('85ea8db0366c498daa2a61cfd95e5852', 'app.acceptance.ptype.ys', '05：采购文件', '05：采购文件', 5, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('86de176ded044c539055e5d645ee6465', 'app.review.ptype', '需求', '需求', 2, '', '5cfa1f7133164c4d84e99725f388e950', '2018-12-25 17:19:55');
INSERT INTO `t_sys_dictionary` VALUES ('87a03f08-56fb-1033-9661-6c08e2581048', 'app.review.ptype', '可研', '可研', 1, '', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('87a03f08-56fb-1036-9661-6c08e2581048', 'app.review.ptype', '验收', '验收', 2, '', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('87a64fa9-56fb-1033-9661-6c08e2581048', 'app.review.ptype_X', '需求', '需求', 3, '', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('87ad7c02-56fb-1033-9661-6c08e2581048', 'app.reviewproject.cclass', '开发实施类', '开发实施类', 1, '', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('87b56bee-56fb-1033-9661-6c08e2581048', 'app.reviewproject.cclass1', '采购类', '采购类', 2, '', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('88423e30648648d1a03a7be45f6ef4ca', 'app.acceptance.ptype.ys', '40：用户测试报告', '40：用户测试报告', 40, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('88daaf9d9a684008a84f20f1c16eb392', 'app.acceptance.ptype.ys', '26：系统部署方案', '26：系统部署方案', 26, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('8d0b70e5da5545daabb4d4850e7da8b8', 'app.acceptance.ptype.ys', '18：数据库设计说明书', '18：数据库设计说明书', 18, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('8d5e22fd86374647832d80bd2db85da3', 'app.acceptance.ptype.ys', '02：项目可研报告', '02：项目可研报告', 2, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('8ea6d590eba5473db499acca79bbf280', 'app.acceptance.ptype.ys', '06：中标通知书', '06：中标通知书', 6, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('8ebbe55361c44d158699365bd5c3d920', 'app.acceptance.ptype.ys', '01：下达计划文件', '01：下达计划文件', 1, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('905bb74ec0a80178018adce06f97ad08', 'sys.upload.address', 'D:\\upload', 'D:\\upload', NULL, '文档的存放目录', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('905bb74ec0a80178018adce06f97ad10', 'sys.download.address', 'D:\\download', 'D:\\download', NULL, '文档的下载目录', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9282d57bf35c465f81a8aa9881f8af5d', 'app.acceptance.ptype.ys', '04：可研批复文件', '04：可研批复文件', 4, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('95ed8aafe5ba4b7683e43e78a584fc69', 'app.acceptance.ptype.ys', '10：物资货物交接单', '10：物资货物交接单', 10, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('97b10066a4864a1680705bf4dae9434f', 'app.acceptance.ptype.ys', '10-2：加电测试报告', '10-2：加电测试报告', 102, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('97e059f037fb46b29933bcc77bec5d5d', 'app.acceptance.ptype.ys', '17：验收方案', '17：验收方案', 17, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9a25222a07b241b2827944876e407a68', 'app.acceptance.ptype.ys', '41：用户报告', '41：用户报告', 41, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9a3402e08a024e19b245888c0f4a6173', 'app.acceptance.ptype.ys', '12：需求变更说明书', '12：需求变更说明书', 12, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9b498dcc0b1f4694b1204dbe5fdd7a37', 'app.acceptance.ptype.ys', '05：采购文件', '05：采购文件', 5, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9d435b817ae44128b6cc91dc4b7caf18', 'app.acceptance.ptype.ys', '11：过程评价资料', '11：过程评价资料', 11, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9d8fd6b4a1f747ba95d89e92faae9752', 'app.acceptance.ptype.ys', '06：中标通知书', '06：中标通知书', 6, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('9e8797a073a445e593916b5f034f948e', 'app.acceptance.ptype.ys', '27：部署方案评审意见', '27：部署方案评审意见', 27, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('a0b4b95b7ba445a4a8a81da2302344a4', 'app.acceptance.ptype.ys', '07：项目合同', '07：项目合同', 7, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('a166c6fa17834a2ea658929ac110de3e', 'app.reviewproject.cclass', '软硬件购置类', '软硬件购置类', 3, '', '5cfa1f7133164c4d84e99725f388e950', '2019-03-20 15:47:50');
INSERT INTO `t_sys_dictionary` VALUES ('a2f80855d6d64089a1b123bda90ad2a1', 'app.acceptance.ptype.ys', '07：服务合同', '07：服务合同', 7, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('a3b2126b-4207-11e8-955f-000c29da5649', 'sys.doctype.address', '评审文档', '评审文档', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ab310a8603de4cad9200eb6a9fd652c9', 'app.acceptance.ptype.ys', '04：可研批复文件', '04：可研批复文件', 4, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('aca517b9550b47cb9a8959cc5e4bd640', 'app.acceptance.ptype.ys', '05：采购文件', '05：采购文件', 5, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('adf6b8309a384983a254c122d507031e', 'app.acceptance.ptype.ys', '08：合同变更文件', '08：合同变更文件', 8, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ae652131249d41d38a3d96b70c153dc0', 'app.acceptance.ptype.ys', '21：信息化项目竣工验收报告', '21：信息化项目竣工验收报告', 21, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('af4494b2-5a4d-11e8-955f-000c29da5649', 'app.review.cno', '第八批', '第八批', 8, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('af46e5c8-5a4d-11e8-955f-000c29da5649', 'app.review.cno', '第九批', '第九批', 9, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('af496207-5a4d-11e8-955f-000c29da5649', 'app.review.cno', '第十批', '第十批', 10, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('af49bba4-5a4d-11e8-955f-000c29da5649', 'app.review.cno', '第十一批', '第十一批', 11, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('af4a9815-5a4d-11e8-955f-000c29da5649', 'app.review.cno', '第十二批', '第十二批', 12, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b1246c55a6f04db38325e3925649249d', 'app.acceptance.ptype.ys', '02：项目可研报告', '02：项目可研报告', 2, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b26f91f0-479d-11e8-955f-000c29da5649', 'app.review.state', '新建', '新建', 1, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b275f58b-479d-11e8-955f-000c29da5649', 'app.review.state', '评审', '评审', 2, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b279dbdb-479d-11e8-955f-000c29da5649', 'app.review.state', '结束', '结束', 3, NULL, NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b44390b761db42f5b11c5f95e9134a5d', 'app.acceptance.ptype.ys', '05：采购文件', '05：采购文件', 5, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b588516ece314ad99139dd5bcc4fca1d', 'app.acceptance.ptype.ys', '20：用户确认测试报告', '20：用户确认测试报告', 20, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b73c0b49295e4e39b6e66734da9946fa', 'app.acceptance.ptype.ys', '17：用户报告', '17：用户报告', 17, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b78eb11b301a4f07af29131f9ce1e550', 'app.acceptance.ptype.ys', '13：信息化项目竣工验收申请表', '13：信息化项目竣工验收申请表', 13, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b826f4409e50464db12360512d717960', 'app.acceptance.ptype.ys', '21：第三方测试报告', '21：第三方测试报告', 21, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('b95b175413f34bf288928f85b66d38b0', 'app.acceptance.ptype.ys', '08：合同变更文件', '08：合同变更文件', 8, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ba7a9acd1b554ff7aabc2fa1ebda3702', 'app.acceptance.ptype.ys', '32：上线试运行验收申请单', '32：上线试运行验收申请单', 32, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('bc17f3fb-5a93-11e8-9b8c-02004c4f4f50', 'app.acceptance.ptype.xq', '01：需求分析报告', '01：需求分析报告', 1, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('bc18cab2-5a93-11e8-9b8c-02004c4f4f50', 'app.acceptance.ptype.xq', '02：需求汇报PPT', '02：需求汇报PPT', 2, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('bc18cab2-5a93-11e8-9b8c-0230gc4f4f50', 'app.acceptance.ptype.xq', '03：其他文档', '03：其他文档', 3, '开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('bdc1f5ede2a74638b721f4e3c5b125a9', 'app.acceptance.ptype.ys', '07：项目合同', '07：项目合同', 7, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('be60b60a35bd4e719257a0dad653a798', 'app.acceptance.ptype.ys', '11：集成测试报告', '11：集成测试报告', 11, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c127ec4fe86b4103b07ef00d0c054a79', 'app.acceptance.ptype.ys', '09：物资到货验收单', '09：物资到货验收单', 9, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c4e55977f39345bfa5bc3309d0ab66da', 'app.acceptance.ptype.ys', '12：系统应急预案及快速恢复方案', '12：系统应急预案及快速恢复方案', 12, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c4ed7666f28c4bdbb7f68589d3f1a0a8', 'app.reviewproject.cclass', '运维服务类', '运维服务类', 6, '', '5cfa1f7133164c4d84e99725f388e950', '2019-03-20 15:48:38');
INSERT INTO `t_sys_dictionary` VALUES ('c53d96bfa60347cf857e6198a837438a', 'app.acceptance.ptype.ys', '16：运维项目验收报告', '16：运维项目验收报告', 16, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c7b4ec67740e473386ecd7fa715c408b', 'app.acceptance.ptype.ys', '13：验收方案', '13：验收方案', 13, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c7ba657f3aef493ca58d0c8edc3768da', 'app.acceptance.ptype.ys', '12：系统部署方案', '12：系统部署方案', 12, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c8c95ce179bb406b8c9e2b0cc4895a71', 'app.acceptance.ptype.ys', '20：信息化项目竣工验收报告', '20：信息化项目竣工验收报告', 20, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c99d36791d6c44a3b5077b79394c1db5', 'app.acceptance.ptype.ys', '14：验收方案', '14：验收方案', 14, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('c9a9b76542874c038286c57a1cef4e76', 'app.acceptance.ptype.ys', '33：上线试运行验收报告', '33：上线试运行验收报告', 33, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('cc2c16dfe8ca4cafb3c54fd66c2eacc3', 'app.acceptance.ptype.ys', '43：信息化项目投资结算书', '43：信息化项目投资结算书', 43, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ccd93d7288714a2190d44e915c09e92f', 'app.acceptance.ptype.ys', '13：需求变更说明书评审意见', '13：需求变更说明书评审意见', 13, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('cf1a194dfdf5464f8c906d4486f188b2', 'app.acceptance.ptype.ys', '03：可研评审意见', '03：可研评审意见', 3, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('d03bffbb370f45539b17c01d8aecb02c', 'app.acceptance.ptype.ys', '25：用户手册', '25：用户手册', 25, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('d10aa8c5a41e41beb38c023c49e1dd90', 'app.acceptance.ptype.ys', '22：项目竣工决算表', '22：项目竣工决算表', 22, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('d345e00451474b3a9df3f9e7681b0eb6', 'app.acceptance.ptype.ys', '03：可研评审意见', '03：可研评审意见', 3, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('d35cee3cb32a4adcb54e4d0abd1f2735', 'app.common.shStatus', '审核通过', '审核通过', NULL, '', '5cfa1f7133164c4d84e99725f388e950', '2018-11-22 09:32:27');
INSERT INTO `t_sys_dictionary` VALUES ('d4a4c16f295e4e6688c6d40a388af822', 'app.acceptance.ptype.ys', '23：项目竣工决算表', '23：项目竣工决算表', 23, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('d6f06982ebcc48e0b7d32e60923957f8', 'app.acceptance.ptype.ys', '29：系统应急预案及快速恢复方案', '29：系统应急预案及快速恢复方案', 29, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('db37b035918c4802acf01966396e7c7f', 'app.acceptance.ptype.ys', '28：系统管理员手册', '28：系统管理员手册', 28, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ddd25394f2564d07b322bf61dbeeca3d', 'app.acceptance.ptype.ys', '07：项目合同', '07：项目合同', 7, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('de157e3602dc4823a3c8c26810c1cbe9', 'app.acceptance.ptype.ys', '19：用户报告', '19：用户报告', 19, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('de69745a6bfa43b5bd806ef4cba88412', 'app.acceptance.ptype.ys', '04：可研批复文件', '04：可研批复文件', 4, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('df6a4f6fd3fa4ccc873fa44f1a7a18e5', 'app.acceptance.ptype.ys', '34：账号权限移交（回收）确认单', '34：账号权限移交（回收）确认单', 34, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('e071ae45cb504fada634a8456a0018d4', 'app.acceptance.ptype.ys', '01：下达计划文件', '01：下达计划文件', 1, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('e69adef4ccc34e50a95daa32e26adeab', 'app.acceptance.docmodel.cclass', '评审文档', '评审文档', 1, '', '5cfa1f7133164c4d84e99725f388e950', '2018-12-25 15:24:22');
INSERT INTO `t_sys_dictionary` VALUES ('e6dae6481ecb4281a5062b640cf3863d', 'app.acceptance.ptype.ys', '16：验收方案', '16：验收方案', 16, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('e7f71e432b32447ca3a24f5deeaff1ff', 'app.acceptance.ptype.ys', '19：集成测试报告', '19：集成测试报告', 19, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('e86606a934074d34b4c29a7da1a3e635', 'app.acceptance.ptype.ys', '04：可研批复文件', '04：可研批复文件', 4, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('e8908fdaf1c14fad88719a5420b85153', 'app.reviewproject.cclass', '基础设施类', '基础设施类', 4, '', '5cfa1f7133164c4d84e99725f388e950', '2019-03-20 15:48:05');
INSERT INTO `t_sys_dictionary` VALUES ('ed6df9e408bf4910bafa599358650eca', 'app.acceptance.ptype.ys', '18：信息化项目竣工验收报告', '18：信息化项目竣工验收报告', 18, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ed94dd7cb2fc4cbba1e004f50ebf16db', 'app.acceptance.ptype.ys', '14：系统应急预案及快速恢复方案', '14：系统应急预案及快速恢复方案', 14, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f46bd765a0564084b2d06a511a5bc264', 'app.acceptance.ptype.ys', '38：工作报告', '38：工作报告', 38, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f4ba186431ad4bb4a248abe6c7de9656', 'app.acceptance.ptype.ys', '35：信息化项目竣工验收申请表', '35：信息化项目竣工验收申请表', 35, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f60bc466b16c41ada6fc3db66c4462d5', 'app.acceptance.ptype.ys', '22：信息化项目投资结算书', '22：信息化项目投资结算书', 22, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f75b6a6a43224c559883597eeb6511c6', 'app.acceptance.ptype.ys', '30：上线试运行申请单', '30：上线试运行申请单', 30, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f7e45526e93647d0a1cb36665976e346', 'app.acceptance.ptype.ys', '15：概要设计评审意见', '15：概要设计评审意见', 15, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f8ab9243fa604df88b7c001e91ca7805', 'app.acceptance.ptype.ys', '02：项目可研报告', '02：项目可研报告', 2, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f9117090d6d142c8b4a2da4cec8e6a67', 'app.acceptance.ptype.ys', '17：详细设计评审意见', '17：详细设计评审意见', 17, '设计开发实施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('f98a97bcf657426b935a92061df24b88', 'app.acceptance.ptype.ys', '08：合同变更文件', '08：合同变更文件', 8, '基础设施类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('fab49074142a42cdb216933afc3dc93e', 'app.acceptance.ptype.ys', '10-1：到货评价单', '10-1：到货评价单', 101, '软硬件购置类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('fae4336d4e4f471591a5defa18ca56a4', 'app.acceptance.ptype.ys', '02：项目可研报告', '02：项目可研报告', 2, '咨询类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ff43f18759ce4ac981f67e23dc996f3a', 'app.acceptance.ptype.ys', '17：运维项目结算书', '17：运维项目结算书', 17, '运维服务类', NULL, NULL);
INSERT INTO `t_sys_dictionary` VALUES ('ff65c7d6fb85489c9bacc62664495273', 'app.acceptance.ptype.ys', '14：运维项目验收申请单', '14：运维项目验收申请单', 14, '运维服务类', NULL, NULL);

-- ----------------------------
-- Table structure for t_sys_dictionaryclass
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionaryclass`;
CREATE TABLE `t_sys_dictionaryclass`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dkey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `islast` decimal(1, 0) NULL DEFAULT 0,
  `supname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` decimal(8, 0) NULL DEFAULT NULL,
  `sysopby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syscreatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `sysupdatetime` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_dictionaryclass
-- ----------------------------
INSERT INTO `t_sys_dictionaryclass` VALUES ('8e6baabe553441179ec982ad9875c528', '', '评审类型', 'app.review.ptype', 1, NULL, 1, '5cfa1f7133164c4d84e99725f388e950', '2018-04-11 22:04:13', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('38963383a20b48e9b2f00f41519c2874', '', '模板分类', 'app.reviewproject.cclass', 0, NULL, 2, '5cfa1f7133164c4d84e99725f388e950', '2018-04-12 10:04:40', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('80ecdbea6d6e47eb8281cd69fea57a54', '', '文档存放目录', 'sys.upload.address', 1, NULL, 3, '5cfa1f7133164c4d84e99725f388e950', '2018-04-12 10:05:15', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('afe70358b72a4564acf773f4d7011ff6', '', '文档下载目录', 'sys.download.address', 1, NULL, 4, '5cfa1f7133164c4d84e99725f388e950', '2018-04-12 10:05:37', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('b5a86360053b40e192f7ce60e4c005eb', '', '文件上传目录', 'sys.upload.tempaddress', 1, NULL, 5, '5cfa1f7133164c4d84e99725f388e950', '2018-04-12 10:06:07', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('82d9cadb-41ec-11e8-955f-000c29da5649', NULL, '是否必须', 'app.docmodelitem.ismust', 1, NULL, NULL, NULL, '2018-04-16 23:15:07', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('82e419de-41ec-11e8-955f-000c29da5649', NULL, '是否多个文档', 'app.docmodelitem.ismulti', 1, NULL, NULL, NULL, '2018-04-16 23:15:10', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('82ee8d94-41ec-11e8-955f-000c29da5649', NULL, '是否规范化模板', 'app.docmodelitem.isnormal', 1, NULL, NULL, NULL, '2018-04-16 23:15:12', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('a3bb294c-4207-11e8-955f-000c29da5649', NULL, '文档名称', 'sys.doctype.address', 0, NULL, NULL, NULL, '2018-04-17 02:22:01', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('c86ff7b2-447c-11e8-955f-000c29da5649', NULL, '验收文档', 'app.acceptance.ptype', 1, NULL, NULL, NULL, '2018-04-20 05:25:36', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('b0306183-479d-11e8-955f-000c29da5649', NULL, '评审状态', 'app.review.state', 0, NULL, NULL, NULL, '2018-04-24 04:58:43', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('7b9deb24-5284-11e8-955f-000c29da5649', NULL, '评审批次', 'app.review.cno', 0, NULL, NULL, NULL, '2018-05-08 01:56:00', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('4739b61a-52a4-11e8-955f-000c29da5649', NULL, '评审项目房间', 'app.review.room', 0, NULL, NULL, NULL, '2018-05-08 05:43:36', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('113e87aa-64b0-11e8-955f-000c29da5649', NULL, '评分、费用分类', 'app.modelquota.score', 0, NULL, NULL, NULL, '2018-05-31 04:53:20', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('0eccb6b570b54f53b012a8656df9535d', '0e6e898ff4e943d69d3014e7132ae951', '评审状态 ', '', 1, '评审状态 ', NULL, '5cfa1f7133164c4d84e99725f388e950', '2018-09-07 11:31:10', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('5a1995fcc5744886af62afdca4795acc', '', '评审状态 ', 'app.project.psStatus', 1, NULL, NULL, '5cfa1f7133164c4d84e99725f388e950', '2018-09-07 11:31:58', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('ea578bd4a1c24c78819eb70c872b779d', '', '审核状态', 'app.common.shStatus', 1, NULL, NULL, '5cfa1f7133164c4d84e99725f388e950', '2018-11-22 09:31:02', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('d8fabad5d5f248f9a31388c769413c1b', '38963383a20b48e9b2f00f41519c2874', '文档模板', 'app.acceptance.docmodel.cclass', 1, '模板分类', 1, '5cfa1f7133164c4d84e99725f388e950', '2018-12-25 02:23:39', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('d8fabad5d5f248f9a31388c769413c11', '', '验收文档清单', 'app.acceptance.ptype.ys', 0, NULL, NULL, NULL, '2019-02-20 21:23:48', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('d8fabad5d5f248f9a31388c769413c17', NULL, '可研文档清单', 'app.acceptance.ptype.ky', 0, NULL, NULL, NULL, '2019-02-20 21:27:35', '0000-00-00 00:00:00');
INSERT INTO `t_sys_dictionaryclass` VALUES ('d8fabad5d5f248f9a31388c769413c28', NULL, '需求文档清单', 'app.acceptance.ptype.xq', 0, NULL, NULL, NULL, '2019-02-20 21:26:56', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for t_sys_log_
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_log_`;
CREATE TABLE `t_sys_log_`  (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `t` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `tag` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志标识',
  `source` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行类',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源IP',
  `msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
  `parentid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `aliasname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单别名',
  `ctype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单链接',
  `target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `isshow` tinyint(4) NULL DEFAULT 0 COMMENT '是否显示',
  `disabled` tinyint(4) NULL DEFAULT 0 COMMENT '是否禁用',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单介绍',
  `location` int(32) NULL DEFAULT NULL COMMENT '排序字段',
  `haschildren` tinyint(4) NULL DEFAULT 0 COMMENT '有子节点',
  `sysopby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `syscreatetime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_MENU_PATH`(`path`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_MENU_PREM`(`permission`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('009654b45221493f94e22c92258fd643', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010007', '定时任务', 'Job', 'leftmenu', '/admin/task/index', '', NULL, 1, 1, 'sys:manager:job', NULL, 26, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('070141c131324de4a6644c3abed52048', '8aeae684619942f5a4750671e96c18d1', '000100040003', '验收年度统计', '验收年度统计', 'leftmenu', '/module/prms/index/ps_expert.action?ptype=验收', '', '', 1, 0, 'app:tjcx:psexpert', '', 62, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 10:38:29');
INSERT INTO `t_sys_menu` VALUES ('0708bb44970047a4bf4b8db70f03bcad', '8239e91c8b37401cb4c9e1560cbbd704', '000100060001', '项目维护', '项目维护', 'leftmenu', '/module/prms/project/index.action', '', '', 1, 0, 'app:xmwh:xmwh', '', 61, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:42:56');
INSERT INTO `t_sys_menu` VALUES ('07450b8f2fda47e0bddfae526d37cf68', '4bbdf1371bba443198fb1ac5ca576975', '00010005', '基础管理', '基础管理', 'leftmenu', '', '', 'fa fa-vcard-o', 1, 0, 'app:jcgl', '', 53, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:33:07');
INSERT INTO `t_sys_menu` VALUES ('0813ab1c29a743f7938ac7b1e890b8b0', '07450b8f2fda47e0bddfae526d37cf68', '000100050009', '规范制度文件维护', '规范制度文件维护', 'leftmenu', '/module/prms/gfzd/index', '', '', 1, 1, 'app:jcgl:gfzd', '', 73, 0, '5cfa1f7133164c4d84e99725f388e950', '2019-02-21 14:50:12');
INSERT INTO `t_sys_menu` VALUES ('10592ebbba85498dbc7367fc4f0f2c2e', 'a7b582c8bd7445d79ad82f823b5debbb', '0001000100020003', '删除用户', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:user:delete', NULL, 9, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('107f96a9edd14cbe8487ca0b75fabb01', '07450b8f2fda47e0bddfae526d37cf68', '000100050006', '专业信息维护', '专业信息维护', 'leftmenu', '/module/professional/index', '', '', 1, 0, 'app:jcgl:zyxx', '', 59, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-11-23 11:31:28');
INSERT INTO `t_sys_menu` VALUES ('16dec36411fa45b2b839be88f529982e', '5d24ccc9ca774a3e8685733fb32f24ae', '0001000100010003', '删除单位', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:unit:delete', NULL, 5, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('213dd405cf5e442da8532702e88e493f', '5d24ccc9ca774a3e8685733fb32f24ae', '0001000100010002', '修改单位', 'Edit', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:unit:edit', NULL, 4, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('2d43718fe8c84f65a9dc24b3c468bfac', '8aeae684619942f5a4750671e96c18d1', '000100040004', '可研年度统计', '可研年度统计', 'leftmenu', '/module/prms/index/ps_expert.action?ptype=可研', '', '', 1, 0, 'app:tjcx:pspctj', '', 65, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 10:40:41');
INSERT INTO `t_sys_menu` VALUES ('2de277f5abff4f5ca57ef10a91ab6813', '07450b8f2fda47e0bddfae526d37cf68', '000100050008', '专家团管理', '专家团管理', 'leftmenu', '/module/prms/corps/index', '', '', 1, 0, 'app:jcgl:zjt1', '', 70, 0, '5cfa1f7133164c4d84e99725f388e950', '2019-01-11 11:54:52');
INSERT INTO `t_sys_menu` VALUES ('30d14be3066946cb83ecfd47f061bdbd', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010006', '日志管理', 'Log', 'leftmenu', '/admin/syslog/index', '', NULL, 1, 0, 'sys:manager:log', NULL, 24, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('36b58d4222654bb1965ed44025298efe', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010008', '数据字典', 'dict', 'leftmenu', '/admin/dict/index', '', NULL, 1, 1, 'sys:manager:dict', NULL, 27, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('371fa80f318d4c2bb3175d5f3f71d972', '8aeae684619942f5a4750671e96c18d1', '000100040009', '验收评审信息结果统计', '验收评审信息结果统计', 'leftmenu', '/module/prms/index/index_rp2.action?ptype=验收', '', '', 1, 0, 'app:tjcx:ysjgtj', '', 75, 0, '5cfa1f7133164c4d84e99725f388e950', '2019-01-16 10:53:47');
INSERT INTO `t_sys_menu` VALUES ('3c847357ceda4e27b16a100e0659a610', '8aeae684619942f5a4750671e96c18d1', '000100040002', '验收历史评审项目查询', '验收历史评审项目查询', 'leftmenu', '/module/prms/index/index_rp.action?ptype=验收', '', '', 1, 0, 'app:tjcx:lspsxmcx', '', 68, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-05 10:25:05');
INSERT INTO `t_sys_menu` VALUES ('477dfe8da2e24d23a41587ad69dabb16', '9792926ebfb74600849815742a34ecab', '0001000100050001', '添加参数', 'Add', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:conf:add', NULL, 21, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('4b5a935624654979a01eee2a01c8c9e9', '30d14be3066946cb83ecfd47f061bdbd', '0001000100060001', '清除日志', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:log:delete', NULL, 25, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('4bbdf1371bba443198fb1ac5ca576975', '', '0001', '系统', 'System', 'leftmenu', '', '', '', 1, 0, 'sys', '系统', NULL, 1, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('522be550f96c42bb9ee3aeff4a913c11', '07450b8f2fda47e0bddfae526d37cf68', '000100050004', '项目文档清单模板', '项目文档清单模板', 'leftmenu', '/module/prms/reviewdocmodel/index.action', '', '', 1, 0, 'app:jcgl:xmwdqdmb', '', 72, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:39:27');
INSERT INTO `t_sys_menu` VALUES ('56586bdc6d5242d1b270d0e87a720b29', 'a7b582c8bd7445d79ad82f823b5debbb', '0001000100020001', '添加用户', 'Add', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:user:add', NULL, 7, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('5d24ccc9ca774a3e8685733fb32f24ae', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010001', '部门管理', 'Unit', 'leftmenu', '/admin/unit/index', '', NULL, 1, 0, 'sys:manager:unit', NULL, 2, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('604e3b5001534072a26fcf322b396e1d', 'f1cd0405de1d4fd888049eb9eb01be70', '000100030002_X', '评审批次维护', '评审批次维护', 'leftmenu', '/module/prms/review/index.action', '', '', 1, 0, 'app:kyps:pspcwh', '', 48, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-05-08 10:38:29');
INSERT INTO `t_sys_menu` VALUES ('617ac4432024499fa0ead45711a69a3e', 'f0adfa530bb543989e30cf72c64268da', '000100020001', '管理', 'mananger', 'topmenu', '/admin/index', NULL, 'fa fa-cog', 1, 0, 'sys:top:mananger', NULL, 30, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('6485f82dec8e454a81f53b3f93e37cc7', 'f1cd0405de1d4fd888049eb9eb01be70', '000100030003', '可研评审批次', '可研评审批次', 'leftmenu', '/module/prms/review/index.action?ptype=可研', '', '', 1, 0, 'app:kyps:kypspc', '', 63, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 09:41:16');
INSERT INTO `t_sys_menu` VALUES ('6f4e1885b10841fb9fa1c88e865607b9', '7c3fddab854949edbafbc50be555dde3', '0001000100030003', '删除角色', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:role:delete', NULL, 13, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('6f51f9003e7f44bf8d0405bf0e2b9eb6', '8aeae684619942f5a4750671e96c18d1', '000100040006', '可研问题记录单', '可研问题记录单', 'leftmenu', '/module/prms/index/index_review.action?ptype=可研', '', '', 1, 0, 'app:tjcx:kypsxmqd', '', 67, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-21 09:39:30');
INSERT INTO `t_sys_menu` VALUES ('74f70e238ca84664bce222966daa38f0', '07450b8f2fda47e0bddfae526d37cf68', '000100050007', '工作行业', '工作行业', 'leftmenu', '/module/Jobindustry/index', '', '', 0, 1, 'app:jcgl:gzhy', '', 76, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-11-23 11:31:56');
INSERT INTO `t_sys_menu` VALUES ('7c3fddab854949edbafbc50be555dde3', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010003', '角色管理', 'Role', 'leftmenu', '/admin/role/index', '', NULL, 1, 0, 'sys:manager:role', NULL, 10, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('8239e91c8b37401cb4c9e1560cbbd704', '4bbdf1371bba443198fb1ac5ca576975', '00010006', '项目管理', '项目管理', 'leftmenu', '', '', 'fa fa-pencil-square', 1, 0, 'app:xmwh', '', 29, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:40:52');
INSERT INTO `t_sys_menu` VALUES ('843fc41f483847e4a5e485e0298e7cc2', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010009', '辅助功能', 'other', 'leftmenu', '/admin/other/index', '', NULL, 1, 0, 'sys:manager:other', NULL, 28, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('86fa5b13bc3f46c285bfbf09753c373b', '7c3fddab854949edbafbc50be555dde3', '0001000100030001', '添加角色', 'Add', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:role:add', NULL, 11, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('87da4745e8c045d4a453a6ea35bcfe75', '8aeae684619942f5a4750671e96c18d1', '000100040005', '验收问题记录单', '验收问题记录单', 'leftmenu', '/module/prms/index/index_review.action?ptype=验收', '', '', 1, 0, 'app:tjcx:ysxmqd', '', 66, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-21 09:39:00');
INSERT INTO `t_sys_menu` VALUES ('8aeae684619942f5a4750671e96c18d1', '4bbdf1371bba443198fb1ac5ca576975', '00010004', '统计查询', '统计查询', 'leftmenu', '', '', 'fa fa-calendar-check-o', 1, 0, 'app:tjcx', '', 60, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-05-08 10:58:24');
INSERT INTO `t_sys_menu` VALUES ('8ba744b67b3841b48e1d9abfc067dd75', '7c3fddab854949edbafbc50be555dde3', '0001000100030004', '分配菜单', 'SetMenu', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:role:menu', NULL, 14, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('8ff1af668f0e40b7b2a41109363c9b53', '8aeae684619942f5a4750671e96c18d1', '000100040007', '可研历史评审项目查询', '可研历史评审项目查询', 'leftmenu', '/module/prms/index/index_rp.action?ptype=可研', '', '', 1, 0, 'app:tjcx:kylspsxmcx', '', 69, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-22 10:23:47');
INSERT INTO `t_sys_menu` VALUES ('92a2a6582a534b96a3e7c1aaab56069b', 'a1eb628b91f14429ab8e4242530b09e4', '0001000100040002', '修改菜单', 'Edit', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:menu:edit', NULL, 17, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('93a14ffe311c449bbae437a602c9e261', 'a1eb628b91f14429ab8e4242530b09e4', '0001000100040003', '删除菜单', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:menu:delete', NULL, 19, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('9792926ebfb74600849815742a34ecab', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010005', '系统参数', 'Param', 'leftmenu', '/admin/config/index', '', NULL, 1, 0, 'sys:manager:conf', NULL, 20, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('99d596c5ec874d10aa6a2ec6b2424ca8', '4bbdf1371bba443198fb1ac5ca576975', '00010001', '系统管理', 'Manager', 'leftmenu', '', '', 'fa fa-th', 1, 0, 'sys:xtgl', '', 1, 1, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('a1eb628b91f14429ab8e4242530b09e4', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010004', '菜单管理', 'Menu', 'leftmenu', '/admin/menu/index', '', NULL, 1, 0, 'sys:manager:menu', NULL, 16, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('a52dc6b2453d401c820c0372a4001151', '8aeae684619942f5a4750671e96c18d1', '000100040008', '可研评审信息结果统计', '可研评审信息结果统计', 'leftmenu', '/module/prms/index/index_rp2.action?ptype=可研', '', '', 1, 0, 'app:tjcx:lspcxm', '', 74, 0, '5cfa1f7133164c4d84e99725f388e950', '2019-01-15 14:24:02');
INSERT INTO `t_sys_menu` VALUES ('a629fa6047fc417bba78aee39a13efaf', 'a7b582c8bd7445d79ad82f823b5debbb', '0001000100020002', '修改用户', 'Edit', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:user:edit', NULL, 8, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('a7b582c8bd7445d79ad82f823b5debbb', '99d596c5ec874d10aa6a2ec6b2424ca8', '000100010002', '用户管理', 'User', 'leftmenu', '/admin/user/index', '', NULL, 1, 0, 'sys:manager:user', NULL, 6, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('a94df9e15a3848c9bfd570cf4f8124c6', '07450b8f2fda47e0bddfae526d37cf68', '000100050002', '专家维护', '专家维护', 'leftmenu', '/module/prms/expert/index.action', '', 'ion-ios-people', 1, 0, 'app:jcgl:zjgl', '', 57, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:36:06');
INSERT INTO `t_sys_menu` VALUES ('aa4d42396e1449bca1bdbe4703969265', '7c3fddab854949edbafbc50be555dde3', '0001000100030002', '修改角色', 'Edit', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:role:edit', NULL, 12, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('d5fdb0ca66ac469c87f719c13eb22da3', 'f1cd0405de1d4fd888049eb9eb01be70', '000100030004', '验收评审批次', '验收评审批次', 'leftmenu', '/module/prms/review/index.action?ptype=验收', '', '', 1, 0, 'app:kyps:yspspc', '', 64, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 09:42:04');
INSERT INTO `t_sys_menu` VALUES ('e50dfdbd219f48a1bc14e51bf0103b24', 'f0adfa530bb543989e30cf72c64268da', '000100020002', '注销', 'Logout', 'topmenu', 'javascript:logout()', NULL, 'fa fa-power-off', 1, 0, 'sys:top:logout', NULL, 31, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('e5aac677993446c18b25dc444597a1ad', 'a1eb628b91f14429ab8e4242530b09e4', '0001000100040001', '添加菜单', 'Add', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:menu:add', NULL, 18, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('e7ec773953b1455e947dfaff9f35791f', '9792926ebfb74600849815742a34ecab', '0001000100050003', '删除参数', 'Delete', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:conf:delete', NULL, 23, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('ec253cb2c82948a4b1856b72da4545e0', '9792926ebfb74600849815742a34ecab', '0001000100050002', '修改参数', 'Edit', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:conf:edit', NULL, 22, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('ed55e04f3fe5498fb61640ad796ff16c', '7c3fddab854949edbafbc50be555dde3', '0001000100030005', '分配用户', 'SetUser', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:role:user', NULL, 15, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('ef181e269d55497ea8a2e1d9eca6b64e', '5d24ccc9ca774a3e8685733fb32f24ae', '0001000100010001', '添加单位', 'Add', 'data', NULL, NULL, NULL, 0, 0, 'sys:manager:unit:add', NULL, 3, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('f00d1730751b4e398781bea7b96ad9c3', '07450b8f2fda47e0bddfae526d37cf68', '000100050003', '评分指标模板', '评分指标模板', 'leftmenu', '/module/prms/reviewmodel/index.action', '', '', 1, 0, 'app:jcgl:pszbmb', '', 71, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-06-04 13:38:17');
INSERT INTO `t_sys_menu` VALUES ('f0adfa530bb543989e30cf72c64268da', '4bbdf1371bba443198fb1ac5ca576975', '00010002', '顶端导航', 'Top', '', '', '', NULL, 0, 0, 'sys:top', NULL, 55, 0, '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_menu` VALUES ('f1cd0405de1d4fd888049eb9eb01be70', '4bbdf1371bba443198fb1ac5ca576975', '00010003', '评审管理', '评审管理', 'leftmenu', '', '', 'mwa mwa-place', 1, 0, 'app:kyps', '', 1, 0, '5cfa1f7133164c4d84e99725f388e950', '2018-05-08 10:11:44');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliasname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled` tinyint(4) NULL DEFAULT 0,
  `sysuse` tinyint(4) NULL DEFAULT 0,
  `unitid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sysopby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `syscreatetime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_ROLE_CODE`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('118b2ae760994c73b1103a4e62e157fb', '系统管理员', 'sysadmin', 'Sysadmin', 0, 0, '', 'System Admin', '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_role` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '可研', 'keyan', 'keyan', 0, 0, NULL, '可研', '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 10:33:13');
INSERT INTO `t_sys_role` VALUES ('e6fa754657f2484aa4f929e44a73aa7a', '公共角色', 'public', 'Public', 0, 0, '', 'All user has role', '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_role` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '验收', 'yanshou', 'yanshou', 0, 0, NULL, '验收权限', '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 09:22:16');

-- ----------------------------
-- Table structure for t_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu`;
CREATE TABLE `t_sys_role_menu`  (
  `roleId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menuId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_role_menu
-- ----------------------------
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '4bbdf1371bba443198fb1ac5ca576975');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '99d596c5ec874d10aa6a2ec6b2424ca8');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '5d24ccc9ca774a3e8685733fb32f24ae');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'ef181e269d55497ea8a2e1d9eca6b64e');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '213dd405cf5e442da8532702e88e493f');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '16dec36411fa45b2b839be88f529982e');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'a7b582c8bd7445d79ad82f823b5debbb');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '56586bdc6d5242d1b270d0e87a720b29');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'a629fa6047fc417bba78aee39a13efaf');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '10592ebbba85498dbc7367fc4f0f2c2e');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '7c3fddab854949edbafbc50be555dde3');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '86fa5b13bc3f46c285bfbf09753c373b');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'aa4d42396e1449bca1bdbe4703969265');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '6f4e1885b10841fb9fa1c88e865607b9');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '8ba744b67b3841b48e1d9abfc067dd75');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'ed55e04f3fe5498fb61640ad796ff16c');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'a1eb628b91f14429ab8e4242530b09e4');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'e5aac677993446c18b25dc444597a1ad');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '92a2a6582a534b96a3e7c1aaab56069b');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '93a14ffe311c449bbae437a602c9e261');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '9792926ebfb74600849815742a34ecab');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '477dfe8da2e24d23a41587ad69dabb16');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'ec253cb2c82948a4b1856b72da4545e0');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'e7ec773953b1455e947dfaff9f35791f');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '30d14be3066946cb83ecfd47f061bdbd');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '4b5a935624654979a01eee2a01c8c9e9');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '009654b45221493f94e22c92258fd643');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '843fc41f483847e4a5e485e0298e7cc2');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', '617ac4432024499fa0ead45711a69a3e');
INSERT INTO `t_sys_role_menu` VALUES ('118b2ae760994c73b1103a4e62e157fb', 'e50dfdbd219f48a1bc14e51bf0103b24');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', 'd5fdb0ca66ac469c87f719c13eb22da3');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '6485f82dec8e454a81f53b3f93e37cc7');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', 'f1cd0405de1d4fd888049eb9eb01be70');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '8aeae684619942f5a4750671e96c18d1');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '2d43718fe8c84f65a9dc24b3c468bfac');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '8aeae684619942f5a4750671e96c18d1');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '070141c131324de4a6644c3abed52048');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', 'f1cd0405de1d4fd888049eb9eb01be70');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '8aeae684619942f5a4750671e96c18d1');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '87da4745e8c045d4a453a6ea35bcfe75');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '6f51f9003e7f44bf8d0405bf0e2b9eb6');
INSERT INTO `t_sys_role_menu` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '3c847357ceda4e27b16a100e0659a610');
INSERT INTO `t_sys_role_menu` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', '8ff1af668f0e40b7b2a41109363c9b53');

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
  `sysopby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `syscreatetime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `INDEX_SYS_UNIT_PATH`(`path`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('33b37fa06bc3410e988a68017e875fde', 0, 'zp', 1, 'Tb8Cncz2EjklmGy7K9qGYdcOrB1A/yIRiQQYowIcLnc=', 'NFCVnAGpqRvokASZLsceJA==', 'zp', 'zp', 'zp', 0, 0, '', NULL, 0, NULL, NULL, NULL, '5cfa1f7133164c4d84e99725f388e950', '2018-06-01 16:24:38');
INSERT INTO `t_sys_user` VALUES ('5cfa1f7133164c4d84e99725f388e950', 0, 'superadmin', 0, 'hcBD09r2NAZvOAx90BGoeaSqSYLdE0IlHkcDbtz4oOE=', 'ice1vfD5//7SIrAHMO9H4Q==', '超级管理员', '超级管理员', 'superadmin', 0, 0, 'ceshi@163.com', '127.0.0.1', 0, NULL, '超级管理员', '73e7fbe7e5a745d8babb1efc79e0c16d', '', '2018-04-08 10:41:11');
INSERT INTO `t_sys_user` VALUES ('6c55a7f72b0247ba8d29be42755d6d5f', 0, 'qiaojf', 0, 'FC4ZLQivkxev08UNF/h9HYWMM5V/x9Xgfi/bmu0db5o=', 'XQX3PXV1Pn7ZWus6XYC/dQ==', '乔俊峰', '乔俊峰', 'qiaojf', 0, 0, 'qiaojf@163.com', NULL, 0, NULL, NULL, '', '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 09:23:11');
INSERT INTO `t_sys_user` VALUES ('d30a501bb6ce4ac6a7bac2e9f1fbf6b7', 0, 'zhangbq', 0, 'UaYW8Xtvsq9mk3CsUgoZI0XyQJEphYcQKSxv7HPttXQ=', '1x+Y4a77/Sbz3KECexU4PA==', '张博强', '张博强', 'zhangbq', 0, 0, 'zhangbq@163.com', NULL, 0, NULL, NULL, '', '5cfa1f7133164c4d84e99725f388e950', '2018-06-19 09:23:40');

-- ----------------------------
-- Table structure for t_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role`  (
  `roleId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('118b2ae760994c73b1103a4e62e157fb', '5cfa1f7133164c4d84e99725f388e950');
INSERT INTO `t_sys_user_role` VALUES ('e6fa754657f2484aa4f929e44a73aa7a', '33b37fa06bc3410e988a68017e875fde');
INSERT INTO `t_sys_user_role` VALUES ('f7f021231b284ecabc7b4e1f409684b9', '6c55a7f72b0247ba8d29be42755d6d5f');
INSERT INTO `t_sys_user_role` VALUES ('8138771e7a584dc1b1bad5ad9929d5fc', 'd30a501bb6ce4ac6a7bac2e9f1fbf6b7');

-- ----------------------------
-- Table structure for t_sys_user_unit
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_unit`;
CREATE TABLE `t_sys_user_unit`  (
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unitId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sys_user_unit
-- ----------------------------
INSERT INTO `t_sys_user_unit` VALUES ('6c55a7f72b0247ba8d29be42755d6d5f', 'b6c037efcf944d6384f00dc2e55042f1');
INSERT INTO `t_sys_user_unit` VALUES ('d30a501bb6ce4ac6a7bac2e9f1fbf6b7', '5684a2aaea2e407f9fdbe4c3412962c6');

SET FOREIGN_KEY_CHECKS = 1;
