/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50548
 Source Host           : localhost:3306
 Source Schema         : person_system

 Target Server Type    : MySQL
 Target Server Version : 50548
 File Encoding         : 65001

 Date: 11/05/2020 22:13:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_convert_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_convert_apply`;
CREATE TABLE `b_convert_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `apply_user_id` bigint(20) NULL DEFAULT NULL COMMENT '申请人',
  `apply_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请日期',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `approval_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批日期',
  `approval_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人',
  `approval_result` int(11) NULL DEFAULT NULL COMMENT '审批结果',
  `approval_opinion` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批意见',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转正申请' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_convert_apply
-- ----------------------------

-- ----------------------------
-- Table structure for b_interview_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_interview_plan`;
CREATE TABLE `b_interview_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `candidate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '候选人姓名',
  `candidate_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '候选人电话',
  `meet_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试时间',
  `meet_user_id` bigint(20) NULL DEFAULT NULL COMMENT '面试官',
  `status` int(11) NULL DEFAULT 0 COMMENT '面试结果',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '面试计划' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_interview_plan
-- ----------------------------

-- ----------------------------
-- Table structure for b_recruit_need
-- ----------------------------
DROP TABLE IF EXISTS `b_recruit_need`;
CREATE TABLE `b_recruit_need`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dept` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求部门',
  `need_num` int(11) NULL DEFAULT NULL COMMENT '需求人数',
  `post` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类型',
  `education` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `work_time` int(11) NULL DEFAULT NULL COMMENT '工作年限要求',
  `demand` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘要求',
  `status` int(11) NULL DEFAULT NULL COMMENT '需求状态',
  `recruit_user_id` bigint(20) NULL DEFAULT NULL COMMENT '招聘负责人',
  `need_user_id` bigint(20) NULL DEFAULT NULL COMMENT '需求负责人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_recruit_need
-- ----------------------------

-- ----------------------------
-- Table structure for b_salary_record
-- ----------------------------
DROP TABLE IF EXISTS `b_salary_record`;
CREATE TABLE `b_salary_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `salary_month` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工资月份',
  `must_salary` float NULL DEFAULT NULL COMMENT '应发工资',
  `reality_salary` float NULL DEFAULT NULL COMMENT '实发工资',
  `fund_amount` float NULL DEFAULT NULL COMMENT '公积金扣款',
  `tax_amount` float NULL DEFAULT NULL COMMENT '个税扣款',
  `medical_amount` float NULL DEFAULT NULL COMMENT '医保扣款',
  `pension_amount` float NULL DEFAULT NULL COMMENT '养老扣款',
  `injured_amount` float NULL DEFAULT NULL COMMENT '工伤扣款',
  `birth_amount` float NULL DEFAULT NULL COMMENT '生育扣款',
  `unemployment_amount` float NULL DEFAULT NULL COMMENT '失业扣款',
  `leave_amount` float NULL DEFAULT NULL COMMENT '请假扣款',
  `late_amount` float NULL DEFAULT NULL COMMENT '迟到扣款',
  `base_amount` float NULL DEFAULT NULL COMMENT '基本工资',
  `work_amount` float NULL DEFAULT NULL COMMENT '工龄工资',
  `overtime_amount` float NULL DEFAULT NULL COMMENT '加班费',
  `merits_amount` float NULL DEFAULT NULL COMMENT '绩效奖金',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工资记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_salary_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_user_doc
-- ----------------------------
DROP TABLE IF EXISTS `b_user_doc`;
CREATE TABLE `b_user_doc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `education` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `birth` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `entry_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入职日期',
  `user_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工类型',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工档案' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_doc
-- ----------------------------

-- ----------------------------
-- Table structure for b_user_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_user_plan`;
CREATE TABLE `b_user_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '计划名称',
  `start_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束日期',
  `status` int(11) NULL DEFAULT 0 COMMENT '计划状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '个人计划' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_plan
-- ----------------------------

-- ----------------------------
-- Table structure for b_work_daily
-- ----------------------------
DROP TABLE IF EXISTS `b_work_daily`;
CREATE TABLE `b_work_daily`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `work_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作内容',
  `progress` int(11) NULL DEFAULT NULL COMMENT '完成进度',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作日报' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_work_daily
-- ----------------------------

-- ----------------------------
-- Table structure for b_work_record
-- ----------------------------
DROP TABLE IF EXISTS `b_work_record`;
CREATE TABLE `b_work_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `up_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班时间',
  `down_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下班时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出勤记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_work_record
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `param_key`(`param_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '江苏富梓民轮胎厂', 0, 0);
INSERT INTO `sys_dept` VALUES (2, 1, '长沙分公司', 1, 0);
INSERT INTO `sys_dept` VALUES (3, 1, '上海分公司', 2, 0);
INSERT INTO `sys_dept` VALUES (4, 3, '技术部', 0, 0);
INSERT INTO `sys_dept` VALUES (5, 3, '销售部', 1, 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典码',
  `value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典值',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '性别', 'sex', '0', '女', 0, NULL, 0);
INSERT INTO `sys_dict` VALUES (2, '性别', 'sex', '1', '男', 1, NULL, 0);
INSERT INTO `sys_dict` VALUES (3, '性别', 'sex', '2', '未知', 3, NULL, 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '30', 0, '0:0:0:0:0:0:0:1', '2020-05-10 13:16:24');
INSERT INTO `sys_log` VALUES (2, 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '14', 0, '0:0:0:0:0:0:0:1', '2020-05-10 13:18:22');
INSERT INTO `sys_log` VALUES (3, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"员工管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":1}', 24, '0:0:0:0:0:0:0:1', '2020-05-10 15:43:45');
INSERT INTO `sys_log` VALUES (4, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"cny\",\"orderNum\":0}', 17, '0:0:0:0:0:0:0:1', '2020-05-10 18:04:39');
INSERT INTO `sys_log` VALUES (5, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"http://www.fontawesome.com.cn/faicons/\",\"orderNum\":0}', 16, '0:0:0:0:0:0:0:1', '2020-05-10 18:05:31');
INSERT INTO `sys_log` VALUES (6, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-10 18:05:51');
INSERT INTO `sys_log` VALUES (7, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":1}', 6, '0:0:0:0:0:0:0:1', '2020-05-10 18:06:06');
INSERT INTO `sys_log` VALUES (8, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":10}', 7, '0:0:0:0:0:0:0:1', '2020-05-10 18:06:53');
INSERT INTO `sys_log` VALUES (9, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":42,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"考勤管理\",\"type\":0,\"icon\":\"fa fa-calendar-check-o\",\"orderNum\":2}', 7, '0:0:0:0:0:0:0:1', '2020-05-10 18:09:23');
INSERT INTO `sys_log` VALUES (10, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"orderNum\":3}', 20, '0:0:0:0:0:0:0:1', '2020-05-10 21:52:11');
INSERT INTO `sys_log` VALUES (11, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"orderNum\":4}', 8, '0:0:0:0:0:0:0:1', '2020-05-10 21:52:36');
INSERT INTO `sys_log` VALUES (12, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":4}', 8, '0:0:0:0:0:0:0:1', '2020-05-10 21:53:19');
INSERT INTO `sys_log` VALUES (13, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":5}', 14, '0:0:0:0:0:0:0:1', '2020-05-10 21:53:28');
INSERT INTO `sys_log` VALUES (14, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"orderNum\":1}', 6, '0:0:0:0:0:0:0:1', '2020-05-10 21:53:52');
INSERT INTO `sys_log` VALUES (15, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":2}', 6, '0:0:0:0:0:0:0:1', '2020-05-10 21:54:12');
INSERT INTO `sys_log` VALUES (16, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":3}', 7, '0:0:0:0:0:0:0:1', '2020-05-10 21:54:34');
INSERT INTO `sys_log` VALUES (17, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":42,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"考勤管理\",\"type\":0,\"icon\":\"fa fa-calendar-check-o\",\"orderNum\":4}', 6, '0:0:0:0:0:0:0:1', '2020-05-10 21:54:41');
INSERT INTO `sys_log` VALUES (18, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"orderNum\":5}', 6, '0:0:0:0:0:0:0:1', '2020-05-10 21:54:50');
INSERT INTO `sys_log` VALUES (19, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":46,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人计划\",\"url\":\"/person/plan/list\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', 23, '0:0:0:0:0:0:0:1', '2020-05-11 22:05:40');
INSERT INTO `sys_log` VALUES (20, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"/person/plan/list\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', 17, '0:0:0:0:0:0:0:1', '2020-05-11 22:06:23');
INSERT INTO `sys_log` VALUES (21, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"/person/plan.html\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-11 22:07:12');
INSERT INTO `sys_log` VALUES (22, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"modules/person/plan.html\",\"perms\":\"\",\"type\":1,\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-11 22:07:47');
INSERT INTO `sys_log` VALUES (23, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":47,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"查看\",\"perms\":\"person:plan:list,person:plan:info\",\"type\":2,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-11 22:09:06');
INSERT INTO `sys_log` VALUES (24, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":48,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"新增\",\"perms\":\"person:plan:save\",\"type\":2,\"orderNum\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-11 22:09:45');
INSERT INTO `sys_log` VALUES (25, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":49,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"修改\",\"perms\":\"person:plan:update\",\"type\":2,\"orderNum\":0}', 5, '0:0:0:0:0:0:0:1', '2020-05-11 22:10:25');
INSERT INTO `sys_log` VALUES (26, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":50,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"删除\",\"perms\":\"person:plan:delete\",\"type\":2,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-11 22:10:57');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 10);
INSERT INTO `sys_menu` VALUES (2, 1, '员工管理', 'modules/sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'modules/sys/role.html', NULL, 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'modules/sys/menu.html', NULL, 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (31, 1, '部门管理', 'modules/sys/dept.html', NULL, 1, 'fa fa-file-code-o', 1);
INSERT INTO `sys_menu` VALUES (32, 31, '查看', NULL, 'sys:dept:list,sys:dept:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (33, 31, '新增', NULL, 'sys:dept:save,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, 31, '修改', NULL, 'sys:dept:update,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, 31, '删除', NULL, 'sys:dept:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (36, 1, '字典管理', 'modules/sys/dict.html', NULL, 1, 'fa fa-bookmark-o', 6);
INSERT INTO `sys_menu` VALUES (37, 36, '查看', NULL, 'sys:dict:list,sys:dict:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (38, 36, '新增', NULL, 'sys:dict:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (39, 36, '修改', NULL, 'sys:dict:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (40, 36, '删除', NULL, 'sys:dict:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (41, 0, '工资管理', NULL, NULL, 0, 'fa fa-jpy', 3);
INSERT INTO `sys_menu` VALUES (42, 0, '考勤管理', NULL, NULL, 0, 'fa fa-calendar-check-o', 4);
INSERT INTO `sys_menu` VALUES (43, 0, '个人中心', NULL, NULL, 0, NULL, 5);
INSERT INTO `sys_menu` VALUES (44, 0, '招聘管理', NULL, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (45, 0, '档案管理', NULL, NULL, 0, '', 2);
INSERT INTO `sys_menu` VALUES (46, 43, '个人计划', 'modules/person/plan.html', '', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (47, 46, '查看', NULL, 'person:plan:list,person:plan:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, 46, '新增', NULL, 'person:plan:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (49, 46, '修改', NULL, 'person:plan:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (50, 46, '删除', NULL, 'person:plan:delete', 2, NULL, 0);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色与部门对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', 1, 1, '2016-11-11 11:11:11', '管理员');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
