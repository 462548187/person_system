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

 Date: 17/05/2020 09:15:28
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
  `apply_content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请内容',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `approval_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批日期',
  `approval_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人',
  `approval_result` int(11) NULL DEFAULT NULL COMMENT '审批结果',
  `approval_opinion` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批意见',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转正申请' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_convert_apply
-- ----------------------------
INSERT INTO `b_convert_apply` VALUES (5, 2, '2020-05-17', '经过3个月的工作，我已经完全胜任现在的工作岗位，现申请转正，望批准。', 2, '2020-05-17', '1', 2, '通过', '2020-05-17 08:56:50', '2020-05-17 09:13:46');
INSERT INTO `b_convert_apply` VALUES (6, 4, '2020-05-17', '申请转正', 0, NULL, NULL, NULL, NULL, '2020-05-17 09:10:40', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '面试计划' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_interview_plan
-- ----------------------------
INSERT INTO `b_interview_plan` VALUES (6, '刘琦琦', '18723409981', '2020-05-20 08:58:55', 3, 0, '2020-05-17 08:59:28', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_recruit_need
-- ----------------------------
INSERT INTO `b_recruit_need` VALUES (5, NULL, 2, '经理助理', '本科', 2, '有相关助理经验', 0, 4, 3, '2020-05-17 08:58:47', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工资记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_salary_record
-- ----------------------------
INSERT INTO `b_salary_record` VALUES (18, 2, '2020-05', 6500, 5453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-17 09:11:32', NULL);
INSERT INTO `b_salary_record` VALUES (19, 3, '2020-05', 4432, 4411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-17 09:12:42', NULL);
INSERT INTO `b_salary_record` VALUES (20, 4, '2020-05', 5600, 4456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-17 09:13:05', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工档案' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_user_doc
-- ----------------------------
INSERT INTO `b_user_doc` VALUES (6, 2, '本科', '1998-05-11', '2020-03-11', '0', '2020-05-17 09:05:48', NULL);
INSERT INTO `b_user_doc` VALUES (7, 3, '研究生', '1983-02-17', '2018-04-17', '1', '2020-05-17 09:06:23', NULL);
INSERT INTO `b_user_doc` VALUES (8, 4, '本科', '1986-05-15', '2016-05-17', '1', '2020-05-17 09:06:56', NULL);

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
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '个人计划' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_user_plan
-- ----------------------------
INSERT INTO `b_user_plan` VALUES (34, 2, '本周学习Excel常用函数', '2020-05-18', '2020-05-19', 0, '2020-05-17 08:48:20', NULL, '1.周一学习常用计算函数；\n2.周二学习常用统计函数');
INSERT INTO `b_user_plan` VALUES (35, 2, '完成合同格式修改', '2020-05-11', '2020-05-13', 1, '2020-05-17 08:49:10', NULL, '完成公司合同范本格式修改');
INSERT INTO `b_user_plan` VALUES (36, 4, '制定4月员工培训计划', '2020-05-18', '2020-05-21', 0, '2020-05-17 09:09:42', NULL, '制定4月份员工室外拓展活动计划');

-- ----------------------------
-- Table structure for b_work_daily
-- ----------------------------
DROP TABLE IF EXISTS `b_work_daily`;
CREATE TABLE `b_work_daily`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_month` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作月份',
  `work_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `work_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作内容',
  `progress` int(11) NULL DEFAULT NULL COMMENT '完成进度',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作日报' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_work_daily
-- ----------------------------
INSERT INTO `b_work_daily` VALUES (6, 2, '2020-05', '2020-05-17', '今日完成领导交代的各项任务', 100, '2020-05-17 08:49:56', NULL);
INSERT INTO `b_work_daily` VALUES (7, 2, '2020-05', '2020-05-16', '完成招标计划书的概述部分', 12, '2020-05-17 08:50:41', NULL);
INSERT INTO `b_work_daily` VALUES (8, 4, '2020-05', '2020-05-17', '完成候选人初选', 10, '2020-05-17 09:10:18', NULL);

-- ----------------------------
-- Table structure for b_work_record
-- ----------------------------
DROP TABLE IF EXISTS `b_work_record`;
CREATE TABLE `b_work_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `up_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班时间',
  `down_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下班时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `work_month` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出勤记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of b_work_record
-- ----------------------------
INSERT INTO `b_work_record` VALUES (26, 2, '2020-05-17', '08:38:52', '18:38:42', 0, '2020-05-17 08:38:54', '2020-05-17 08:39:11', '2020-05');
INSERT INTO `b_work_record` VALUES (27, 2, '2020-05-16', '09:38:42', '18:38:42', 1, '2020-05-17 08:39:24', '2020-05-17 08:39:35', '2020-05');
INSERT INTO `b_work_record` VALUES (28, 2, '2020-05-15', '08:39:48', '17:38:42', 2, '2020-05-17 08:39:49', '2020-05-17 08:40:00', '2020-05');
INSERT INTO `b_work_record` VALUES (29, 2, '2020-05-14', '08:40:18', '20:38:42', 3, '2020-05-17 08:40:19', '2020-05-17 08:40:30', '2020-05');
INSERT INTO `b_work_record` VALUES (30, 4, '2020-05-12', '09:07:02', '18:07:02', 1, '2020-05-17 09:07:14', '2020-05-17 09:07:32', '2020-05');
INSERT INTO `b_work_record` VALUES (31, 4, '2020-05-16', '08:07:02', '20:07:02', 3, '2020-05-17 09:07:44', '2020-05-17 09:07:55', '2020-05');
INSERT INTO `b_work_record` VALUES (32, 4, '2020-05-15', '08:07:02', '17:07:02', 2, '2020-05-17 09:08:07', '2020-05-17 09:08:20', '2020-05');
INSERT INTO `b_work_record` VALUES (33, 4, '2020-05-13', '08:07:02', '18:07:02', 0, '2020-05-17 09:08:33', '2020-05-17 09:08:45', '2020-05');
INSERT INTO `b_work_record` VALUES (34, 3, '2020-05-17', '09:12:07', NULL, 1, '2020-05-17 09:12:08', NULL, '2020-05');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门管理' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '江苏富梓民轮胎厂', 0, 0);
INSERT INTO `sys_dept` VALUES (2, 1, '长沙分公司', 1, -1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据字典表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '性别', 'sex', '0', '女', 0, NULL, 0);
INSERT INTO `sys_dict` VALUES (2, '性别', 'sex', '1', '男', 1, NULL, 0);
INSERT INTO `sys_dict` VALUES (3, '性别', 'sex', '2', '未知', 3, NULL, 0);
INSERT INTO `sys_dict` VALUES (4, '工作状态', 'work_status', '0', '正常', 0, '0-正常；1-迟到；2-早退；3加班', 0);
INSERT INTO `sys_dict` VALUES (5, '工作状态', 'work_status', '1', '迟到', 1, '迟到', 0);
INSERT INTO `sys_dict` VALUES (6, '工作状态', 'work_status', '2', '早退', 2, '早退', 0);
INSERT INTO `sys_dict` VALUES (7, '工作状态', 'work_status', '3', '加班', 3, '加班', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 358 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志' ROW_FORMAT = COMPACT;

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
INSERT INTO `sys_log` VALUES (27, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":1,\"name\":\"测试\",\"startDate\":\"2020-05-13\",\"endDate\":\"2020-05-14\",\"status\":0}', 101, '0:0:0:0:0:0:0:1', '2020-05-12 22:43:55');
INSERT INTO `sys_log` VALUES (28, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[1]', 15, '0:0:0:0:0:0:0:1', '2020-05-12 22:52:13');
INSERT INTO `sys_log` VALUES (29, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":2,\"name\":\"萨达\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-13\",\"status\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-12 22:52:35');
INSERT INTO `sys_log` VALUES (30, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":3,\"userId\":1,\"name\":\"阿斯顿发光会\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-12\",\"status\":0,\"createTime\":\"2020-05-12 22:54:11\"}', 101, '0:0:0:0:0:0:0:1', '2020-05-12 22:54:11');
INSERT INTO `sys_log` VALUES (31, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":2,\"name\":\"萨达\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-13\",\"status\":1}', 97, '0:0:0:0:0:0:0:1', '2020-05-13 07:20:07');
INSERT INTO `sys_log` VALUES (32, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":3,\"userId\":1,\"name\":\"阿斯顿发光会\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-12\",\"status\":1,\"createTime\":\"2020-05-12 22:54:11\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 07:20:21');
INSERT INTO `sys_log` VALUES (33, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":51,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"照片需求\",\"url\":\"/person/apply/apply.html\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":1,\"orderNum\":0}', 11, '0:0:0:0:0:0:0:1', '2020-05-13 07:32:11');
INSERT INTO `sys_log` VALUES (34, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/apply/apply.html\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":1,\"orderNum\":0}', 24, '0:0:0:0:0:0:0:1', '2020-05-13 07:32:41');
INSERT INTO `sys_log` VALUES (35, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":52,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"面试计划\",\"url\":\"person/interview/interview.html\",\"perms\":\"\",\"type\":1,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 07:34:22');
INSERT INTO `sys_log` VALUES (36, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":53,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-13 07:34:57');
INSERT INTO `sys_log` VALUES (37, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-13 07:36:07');
INSERT INTO `sys_log` VALUES (38, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"工作日报\",\"url\":\"person/daily/daily.html\",\"type\":1,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 07:38:09');
INSERT INTO `sys_log` VALUES (39, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":53,\"parentId\":45,\"parentName\":\"档案管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"orderNum\":0}', 12, '0:0:0:0:0:0:0:1', '2020-05-13 07:38:53');
INSERT INTO `sys_log` VALUES (40, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":56,\"parentId\":41,\"parentName\":\"工资管理\",\"name\":\"工资查询\",\"url\":\"person/salary/salary.html\",\"type\":1,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 07:40:16');
INSERT INTO `sys_log` VALUES (41, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":57,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"转正申请\",\"url\":\"person/apply/apply.html\",\"type\":1,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 07:41:19');
INSERT INTO `sys_log` VALUES (42, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/need/need.html\",\"perms\":\"person:need:list,person:need:info\",\"type\":1,\"orderNum\":0}', 17, '0:0:0:0:0:0:0:1', '2020-05-13 07:42:21');
INSERT INTO `sys_log` VALUES (43, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/need/need.html\",\"perms\":\"person:need:list,person:need:info\",\"type\":1,\"icon\":\"fa fa-bullhorn\",\"orderNum\":0}', 19, '0:0:0:0:0:0:0:1', '2020-05-13 20:33:35');
INSERT INTO `sys_log` VALUES (44, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"icon\":\"fa fa-bullhorn\",\"orderNum\":1}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 20:33:52');
INSERT INTO `sys_log` VALUES (45, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"fa fa-file-word-o\",\"orderNum\":2}', 7, '0:0:0:0:0:0:0:1', '2020-05-13 20:35:54');
INSERT INTO `sys_log` VALUES (46, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"icon\":\"fa fa-street-view\",\"orderNum\":5}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 20:36:48');
INSERT INTO `sys_log` VALUES (47, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":56,\"parentId\":41,\"parentName\":\"工资管理\",\"name\":\"工资查询\",\"url\":\"person/salary/salary.html\",\"type\":1,\"icon\":\"fa fa-jpy\",\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 20:38:22');
INSERT INTO `sys_log` VALUES (48, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-btc\",\"orderNum\":3}', 4, '0:0:0:0:0:0:0:1', '2020-05-13 20:45:16');
INSERT INTO `sys_log` VALUES (49, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-btc\",\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 20:45:52');
INSERT INTO `sys_log` VALUES (50, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-check-squar\",\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-13 20:46:14');
INSERT INTO `sys_log` VALUES (51, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-check-square\",\"orderNum\":0}', 15, '0:0:0:0:0:0:0:1', '2020-05-13 20:46:32');
INSERT INTO `sys_log` VALUES (52, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":52,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"面试计划\",\"url\":\"person/interview/interview.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-users\",\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-13 20:47:53');
INSERT INTO `sys_log` VALUES (53, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"工作日报\",\"url\":\"person/daily/daily.html\",\"type\":1,\"icon\":\"fa fa-file-excel-o\",\"orderNum\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-13 20:49:17');
INSERT INTO `sys_log` VALUES (54, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"modules/person/plan.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-table\",\"orderNum\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-13 20:50:00');
INSERT INTO `sys_log` VALUES (55, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":57,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"转正申请\",\"url\":\"person/apply/apply.html\",\"type\":1,\"icon\":\"fa fa-american-sign-language-interpreting\",\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 20:50:34');
INSERT INTO `sys_log` VALUES (56, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":53,\"parentId\":45,\"parentName\":\"档案管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"icon\":\"fa fa-address-card-o\",\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 20:51:37');
INSERT INTO `sys_log` VALUES (57, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":58,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"查询\",\"url\":\"person/daily/list\",\"perms\":\"person:daily:list,person:daily:list:info\",\"type\":1,\"orderNum\":0}', 18, '0:0:0:0:0:0:0:1', '2020-05-13 21:03:15');
INSERT INTO `sys_log` VALUES (58, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":58,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"查询\",\"url\":\"person/daily/list\",\"perms\":\"person:daily:list,person:daily:list:info\",\"type\":2,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 21:03:40');
INSERT INTO `sys_log` VALUES (59, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":59,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"增加\",\"url\":\"/person/daily/add\",\"perms\":\"person:daily:add\",\"type\":2,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 21:13:03');
INSERT INTO `sys_log` VALUES (60, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":60,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"编辑\",\"perms\":\"person:daily:update\",\"type\":2,\"orderNum\":0}', 10, '0:0:0:0:0:0:0:1', '2020-05-13 21:13:47');
INSERT INTO `sys_log` VALUES (61, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":61,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"删除\",\"perms\":\"person:daily:delete\",\"type\":2,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 21:14:14');
INSERT INTO `sys_log` VALUES (62, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"工作日报\",\"name\":\"工作日报\",\"url\":\"modules/person/daily.html\",\"type\":1,\"icon\":\"fa fa-file-excel-o\",\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-05-13 21:15:03');
INSERT INTO `sys_log` VALUES (63, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":59,\"parentId\":55,\"name\":\"增加\",\"url\":\"\",\"perms\":\"person:daily:save\",\"type\":2,\"orderNum\":0}', 15, '0:0:0:0:0:0:0:1', '2020-05-13 21:30:45');
INSERT INTO `sys_log` VALUES (64, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":1,\"workContent\":\"dsf \",\"progress\":0}', 91, '0:0:0:0:0:0:0:1', '2020-05-13 21:31:01');
INSERT INTO `sys_log` VALUES (65, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":2,\"workContent\":\"dsf \",\"progress\":0}', 7, '0:0:0:0:0:0:0:1', '2020-05-13 21:31:19');
INSERT INTO `sys_log` VALUES (66, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":3,\"workContent\":\"waerdf\",\"progress\":1}', 5, '0:0:0:0:0:0:0:1', '2020-05-13 21:33:37');
INSERT INTO `sys_log` VALUES (67, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":4,\"workContent\":\"12waesr\",\"progress\":1}', 7, '0:0:0:0:0:0:0:1', '2020-05-13 21:37:38');
INSERT INTO `sys_log` VALUES (68, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":5,\"workContent\":\"rtstdf\",\"progress\":1}', 8, '0:0:0:0:0:0:0:1', '2020-05-13 21:42:05');
INSERT INTO `sys_log` VALUES (69, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":6,\"workContent\":\"rtstdf\",\"progress\":1}', 25622, '0:0:0:0:0:0:0:1', '2020-05-13 21:46:27');
INSERT INTO `sys_log` VALUES (70, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":7,\"workContent\":\"rtstdf\",\"progress\":1}', 126214, '0:0:0:0:0:0:0:1', '2020-05-13 21:50:49');
INSERT INTO `sys_log` VALUES (71, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":8,\"userId\":1,\"workContent\":\"111111111\",\"progress\":222222}', 222211, '0:0:0:0:0:0:0:1', '2020-05-14 20:45:51');
INSERT INTO `sys_log` VALUES (72, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":9,\"userId\":1,\"workContent\":\"11\",\"progress\":11}', 91, '0:0:0:0:0:0:0:1', '2020-05-14 22:20:40');
INSERT INTO `sys_log` VALUES (73, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":10,\"userId\":1,\"workDate\":\"111\",\"workContent\":\"111\",\"progress\":111}', 7, '0:0:0:0:0:0:0:1', '2020-05-14 22:26:33');
INSERT INTO `sys_log` VALUES (74, 'admin', '保存角色', 'com.person.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"deptId\":1,\"deptName\":\"江苏富梓民轮胎厂\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,31,32,33,34,35,36,37,38,39,40,41,56,42,54,43,46,47,48,49,50,55,58,59,60,61,57,44,51,52,45,53],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"May 14, 2020 10:28:37 PM\"}', 132, '0:0:0:0:0:0:0:1', '2020-05-14 22:28:37');
INSERT INTO `sys_log` VALUES (75, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"name\":\"管理员\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@renren.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"江苏富梓民轮胎厂\"}', 59, '0:0:0:0:0:0:0:1', '2020-05-14 22:28:51');
INSERT INTO `sys_log` VALUES (76, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":11,\"userId\":1,\"workDate\":\"22\",\"workContent\":\"22\",\"progress\":33}', 4, '0:0:0:0:0:0:0:1', '2020-05-14 22:31:53');
INSERT INTO `sys_log` VALUES (77, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":12,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', 6, '0:0:0:0:0:0:0:1', '2020-05-14 22:34:31');
INSERT INTO `sys_log` VALUES (78, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":13,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', 6, '0:0:0:0:0:0:0:1', '2020-05-14 22:34:33');
INSERT INTO `sys_log` VALUES (79, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":14,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', 8, '0:0:0:0:0:0:0:1', '2020-05-14 22:34:40');
INSERT INTO `sys_log` VALUES (80, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":15,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', 9, '0:0:0:0:0:0:0:1', '2020-05-14 22:35:26');
INSERT INTO `sys_log` VALUES (81, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":16,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', 99, '0:0:0:0:0:0:0:1', '2020-05-15 06:41:21');
INSERT INTO `sys_log` VALUES (82, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":17,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 06:41:43');
INSERT INTO `sys_log` VALUES (83, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":18,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 06:41:49');
INSERT INTO `sys_log` VALUES (84, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":19,\"userId\":1,\"workContent\":\"萨达\",\"progress\":1}', 92, '0:0:0:0:0:0:0:1', '2020-05-15 06:46:32');
INSERT INTO `sys_log` VALUES (85, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":20,\"userId\":1,\"workContent\":\"电饭锅\",\"progress\":1}', 9, '0:0:0:0:0:0:0:1', '2020-05-15 06:47:15');
INSERT INTO `sys_log` VALUES (86, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":21,\"userId\":1,\"workContent\":\"萨达\",\"progress\":2}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 06:54:31');
INSERT INTO `sys_log` VALUES (87, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":22,\"userId\":1,\"workContent\":\"33\",\"progress\":11}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 06:55:47');
INSERT INTO `sys_log` VALUES (88, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":23,\"userId\":1,\"workContent\":\"强娃儿\",\"progress\":0,\"createTime\":\"2020-05-15 06:57:06\"}', 104, '0:0:0:0:0:0:0:1', '2020-05-15 06:57:06');
INSERT INTO `sys_log` VALUES (89, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":24,\"userId\":1,\"workDate\":\"66666\",\"workContent\":\"555555555\",\"progress\":444,\"createTime\":\"2020-05-15 07:08:38\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-15 07:08:38');
INSERT INTO `sys_log` VALUES (90, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":25,\"userId\":1,\"workDate\":\"66666\",\"workContent\":\"555555555\",\"progress\":444,\"createTime\":\"2020-05-15 07:08:42\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 07:08:42');
INSERT INTO `sys_log` VALUES (91, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[2,3]', 11, '0:0:0:0:0:0:0:1', '2020-05-15 07:09:16');
INSERT INTO `sys_log` VALUES (92, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":4,\"userId\":1,\"name\":\"今天中午开会\",\"status\":0,\"createTime\":\"2020-05-15 07:09:39\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-15 07:09:39');
INSERT INTO `sys_log` VALUES (93, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":5,\"userId\":1,\"name\":\"收到咨询发\",\"status\":0,\"createTime\":\"2020-05-15 07:11:08\"}', 10321, '0:0:0:0:0:0:0:1', '2020-05-15 07:11:08');
INSERT INTO `sys_log` VALUES (94, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":6,\"userId\":1,\"name\":\"森岛帆高\",\"status\":0,\"createTime\":\"2020-05-15 07:17:38\"}', 11177, '0:0:0:0:0:0:0:1', '2020-05-15 07:17:38');
INSERT INTO `sys_log` VALUES (95, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":7,\"userId\":1,\"name\":\"暗室逢灯\",\"status\":0,\"createTime\":\"2020-05-15 07:19:16\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 07:19:16');
INSERT INTO `sys_log` VALUES (96, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":4,\"userId\":1,\"name\":\"今天中午开会\",\"status\":0,\"createTime\":\"2020-05-15 07:09:39\"}', 15, '0:0:0:0:0:0:0:1', '2020-05-15 07:19:42');
INSERT INTO `sys_log` VALUES (97, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":8,\"userId\":1,\"name\":\"ASdf\",\"startDate\":\"s\",\"status\":0,\"createTime\":\"2020-05-15 07:23:11\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 07:23:11');
INSERT INTO `sys_log` VALUES (98, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":9,\"userId\":1,\"name\":\"水电工\",\"status\":0,\"createTime\":\"2020-05-15 07:23:22\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-15 07:23:22');
INSERT INTO `sys_log` VALUES (99, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[4,5,6,7,8,9]', 97, '0:0:0:0:0:0:0:1', '2020-05-15 09:07:44');
INSERT INTO `sys_log` VALUES (100, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":10,\"userId\":1,\"name\":\"水电费  \",\"status\":0,\"createTime\":\"2020-05-15 09:12:14\"}', 19961, '0:0:0:0:0:0:0:1', '2020-05-15 09:12:14');
INSERT INTO `sys_log` VALUES (101, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":11,\"userId\":1,\"name\":\"水电费\",\"endDate\":\"2020-05-01\",\"status\":0,\"createTime\":\"2020-05-15 09:19:11\"}', 104299, '0:0:0:0:0:0:0:1', '2020-05-15 09:19:11');
INSERT INTO `sys_log` VALUES (102, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[10,11]', 89, '0:0:0:0:0:0:0:1', '2020-05-15 09:19:19');
INSERT INTO `sys_log` VALUES (103, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\"}', 76, '0:0:0:0:0:0:0:1', '2020-05-15 09:19:52');
INSERT INTO `sys_log` VALUES (104, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":13,\"userId\":1,\"name\":\"都市风光电饭锅\",\"status\":0,\"createTime\":\"2020-05-15 09:21:20\"}', 217, '0:0:0:0:0:0:0:1', '2020-05-15 09:21:20');
INSERT INTO `sys_log` VALUES (105, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[13]', 100, '0:0:0:0:0:0:0:1', '2020-05-15 09:21:31');
INSERT INTO `sys_log` VALUES (106, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:21:40\"}', 121, '0:0:0:0:0:0:0:1', '2020-05-15 09:21:41');
INSERT INTO `sys_log` VALUES (107, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:21:58\"}', 77, '0:0:0:0:0:0:0:1', '2020-05-15 09:21:58');
INSERT INTO `sys_log` VALUES (108, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:23:16\"}', 48730, '0:0:0:0:0:0:0:1', '2020-05-15 09:23:16');
INSERT INTO `sys_log` VALUES (109, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":14,\"userId\":1,\"name\":\"第三个\",\"endDate\":\"2020-05-06\",\"status\":0,\"createTime\":\"2020-05-15 09:31:47\"}', 8370, '0:0:0:0:0:0:0:1', '2020-05-15 09:31:48');
INSERT INTO `sys_log` VALUES (110, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":15,\"userId\":1,\"name\":\"得到的\",\"endDate\":\"2020-04-23\",\"status\":0,\"createTime\":\"2020-05-15 09:33:36\"}', 27498, '0:0:0:0:0:0:0:1', '2020-05-15 09:33:36');
INSERT INTO `sys_log` VALUES (111, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":16,\"userId\":1,\"name\":\"撒\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 09:38:27\"}', 7199, '0:0:0:0:0:0:0:1', '2020-05-15 09:38:27');
INSERT INTO `sys_log` VALUES (112, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[12,14,15,16]', 36, '0:0:0:0:0:0:0:1', '2020-05-15 09:47:13');
INSERT INTO `sys_log` VALUES (113, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":17,\"userId\":1,\"name\":\"防守打法\",\"startDate\":\"2020-05-30\",\"endDate\":\"2020-04-30\",\"status\":0,\"createTime\":\"2020-05-15 09:47:43\"}', 9590, '0:0:0:0:0:0:0:1', '2020-05-15 09:47:43');
INSERT INTO `sys_log` VALUES (114, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":18,\"userId\":1,\"name\":\"似懂非懂\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 09:51:52\"}', 2648, '0:0:0:0:0:0:0:1', '2020-05-15 09:51:52');
INSERT INTO `sys_log` VALUES (115, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":19,\"userId\":1,\"name\":\"十点多打多多多多多多多多\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:24:16\"}', 1890114, '0:0:0:0:0:0:0:1', '2020-05-15 10:24:17');
INSERT INTO `sys_log` VALUES (116, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[18,19]', 137, '0:0:0:0:0:0:0:1', '2020-05-15 10:24:27');
INSERT INTO `sys_log` VALUES (117, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":20,\"userId\":1,\"name\":\"哒哒哒哒哒哒\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:24:46\"}', 8397, '0:0:0:0:0:0:0:1', '2020-05-15 10:24:46');
INSERT INTO `sys_log` VALUES (118, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":21,\"userId\":1,\"name\":\"电饭锅\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:28:01\"}', 3695, '0:0:0:0:0:0:0:1', '2020-05-15 10:28:01');
INSERT INTO `sys_log` VALUES (119, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":22,\"userId\":1,\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-03\",\"status\":0,\"createTime\":\"2020-05-15 10:29:19\"}', 2871, '0:0:0:0:0:0:0:1', '2020-05-15 10:29:19');
INSERT INTO `sys_log` VALUES (120, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[20,21]', 33, '0:0:0:0:0:0:0:1', '2020-05-15 10:29:42');
INSERT INTO `sys_log` VALUES (121, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[17,22]', 271, '0:0:0:0:0:0:0:1', '2020-05-15 12:35:24');
INSERT INTO `sys_log` VALUES (122, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":23,\"userId\":1,\"name\":\"测试\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 12:39:16\"}', 10271, '0:0:0:0:0:0:0:1', '2020-05-15 12:39:16');
INSERT INTO `sys_log` VALUES (123, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":24,\"userId\":1,\"name\":\"jjjjjjjjjj\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 12:50:25\"}', 7143, '0:0:0:0:0:0:0:1', '2020-05-15 12:50:25');
INSERT INTO `sys_log` VALUES (124, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[23,24]', 110, '0:0:0:0:0:0:0:1', '2020-05-15 12:50:35');
INSERT INTO `sys_log` VALUES (125, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":25,\"userId\":1,\"name\":\"yyyyyyy\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-01\",\"status\":0,\"createTime\":\"2020-05-15 12:51:11\"}', 9654, '0:0:0:0:0:0:0:1', '2020-05-15 12:51:11');
INSERT INTO `sys_log` VALUES (126, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":26,\"userId\":1,\"name\":\"fddddd\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-22\",\"status\":0,\"createTime\":\"2020-05-15 12:51:58\"}', 3330, '0:0:0:0:0:0:0:1', '2020-05-15 12:51:58');
INSERT INTO `sys_log` VALUES (127, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-20\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\"}', 10219, '0:0:0:0:0:0:0:1', '2020-05-15 12:52:26');
INSERT INTO `sys_log` VALUES (128, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":28,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-20\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\"}', 190, '0:0:0:0:0:0:0:1', '2020-05-15 12:52:26');
INSERT INTO `sys_log` VALUES (129, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\",\"updateTime\":\"2020-05-15 12:52:38\"}', 132, '0:0:0:0:0:0:0:1', '2020-05-15 12:52:38');
INSERT INTO `sys_log` VALUES (130, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-08\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\",\"updateTime\":\"2020-05-15 12:52:48\"}', 133, '0:0:0:0:0:0:0:1', '2020-05-15 12:52:48');
INSERT INTO `sys_log` VALUES (131, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[25,26,27,28]', 106, '0:0:0:0:0:0:0:1', '2020-05-15 12:52:58');
INSERT INTO `sys_log` VALUES (132, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":29,\"userId\":1,\"name\":\"本周看一本书\",\"startDate\":\"2020-05-11\",\"endDate\":\"2020-05-17\",\"status\":0,\"createTime\":\"2020-05-15 12:53:18\"}', 66, '0:0:0:0:0:0:0:1', '2020-05-15 12:53:18');
INSERT INTO `sys_log` VALUES (133, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":26,\"userId\":1,\"workDate\":\"2020-05-01\",\"workContent\":\"防守打法\",\"progress\":1,\"createTime\":\"2020-05-15 13:07:35\"}', 83, '0:0:0:0:0:0:0:1', '2020-05-15 13:07:35');
INSERT INTO `sys_log` VALUES (134, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":62,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"查询\",\"perms\":\"person:work:list,person:work:info\",\"type\":2,\"orderNum\":0}', 111, '0:0:0:0:0:0:0:1', '2020-05-15 13:08:47');
INSERT INTO `sys_log` VALUES (135, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":63,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"上班\",\"perms\":\"person:work:save\",\"type\":2,\"orderNum\":0}', 117, '0:0:0:0:0:0:0:1', '2020-05-15 13:09:17');
INSERT INTO `sys_log` VALUES (136, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":64,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"下班\",\"perms\":\"person:work:update\",\"type\":2,\"orderNum\":0}', 87, '0:0:0:0:0:0:0:1', '2020-05-15 13:09:46');
INSERT INTO `sys_log` VALUES (137, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":1,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"13:14:23\",\"status\":0}', 138, '0:0:0:0:0:0:0:1', '2020-05-15 13:21:56');
INSERT INTO `sys_log` VALUES (138, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":1,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"13:14:23\",\"downTime\":\"21:23:20\",\"status\":0}', 162, '0:0:0:0:0:0:0:1', '2020-05-15 13:23:34');
INSERT INTO `sys_log` VALUES (139, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":2,\"userId\":1,\"workDate\":\"2020-05-08\",\"upTime\":\"13:26:11\",\"downTime\":\"13:26:13\",\"status\":0}', 39, '0:0:0:0:0:0:0:1', '2020-05-15 13:26:23');
INSERT INTO `sys_log` VALUES (140, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":65,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"申请\",\"perms\":\"person:apply:save\",\"type\":2,\"orderNum\":0}', 56, '0:0:0:0:0:0:0:1', '2020-05-15 13:28:13');
INSERT INTO `sys_log` VALUES (141, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":66,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"查看\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":2,\"orderNum\":0}', 64, '0:0:0:0:0:0:0:1', '2020-05-15 13:28:47');
INSERT INTO `sys_log` VALUES (142, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":67,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"删除\",\"perms\":\"person:apply:delete\",\"type\":2,\"orderNum\":0}', 68, '0:0:0:0:0:0:0:1', '2020-05-15 13:29:20');
INSERT INTO `sys_log` VALUES (143, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":68,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"编辑\",\"perms\":\"person:apply:update\",\"type\":2,\"orderNum\":0}', 70, '0:0:0:0:0:0:0:1', '2020-05-15 13:34:00');
INSERT INTO `sys_log` VALUES (144, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":69,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"查看\",\"perms\":\"person:doc:list,person:doc:info\",\"type\":2,\"orderNum\":0}', 72, '0:0:0:0:0:0:0:1', '2020-05-15 13:36:30');
INSERT INTO `sys_log` VALUES (145, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":70,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"新增\",\"perms\":\"person:doc:save\",\"type\":2,\"orderNum\":0}', 77, '0:0:0:0:0:0:0:1', '2020-05-15 13:36:53');
INSERT INTO `sys_log` VALUES (146, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":71,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"编辑\",\"perms\":\"person:doc:update\",\"type\":2,\"orderNum\":0}', 71, '0:0:0:0:0:0:0:1', '2020-05-15 13:37:16');
INSERT INTO `sys_log` VALUES (147, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":72,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"删除\",\"perms\":\"person:doc:delete\",\"type\":2,\"orderNum\":0}', 29, '0:0:0:0:0:0:0:1', '2020-05-15 13:37:36');
INSERT INTO `sys_log` VALUES (148, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":73,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"查看\",\"perms\":\"person:need:list,person:need:info\",\"type\":2,\"orderNum\":0}', 27, '0:0:0:0:0:0:0:1', '2020-05-15 13:39:03');
INSERT INTO `sys_log` VALUES (149, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":74,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"新增\",\"perms\":\"person:need:save\",\"type\":2,\"orderNum\":0}', 63, '0:0:0:0:0:0:0:1', '2020-05-15 13:39:18');
INSERT INTO `sys_log` VALUES (150, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":75,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"编辑\",\"perms\":\"person:need:update\",\"type\":2,\"orderNum\":0}', 91, '0:0:0:0:0:0:0:1', '2020-05-15 13:39:40');
INSERT INTO `sys_log` VALUES (151, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":76,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"删除\",\"perms\":\"person:need:delete\",\"type\":2,\"orderNum\":0}', 64, '0:0:0:0:0:0:0:1', '2020-05-15 13:40:04');
INSERT INTO `sys_log` VALUES (152, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":77,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"查看\",\"perms\":\"person:interview:list,person:interview:info\",\"type\":2,\"orderNum\":0}', 47, '0:0:0:0:0:0:0:1', '2020-05-15 13:40:35');
INSERT INTO `sys_log` VALUES (153, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":78,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"新增\",\"perms\":\"person:interview:save\",\"type\":2,\"orderNum\":0}', 100, '0:0:0:0:0:0:0:1', '2020-05-15 13:40:51');
INSERT INTO `sys_log` VALUES (154, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":79,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"编辑\",\"perms\":\"person:interview:update\",\"type\":2,\"orderNum\":0}', 35, '0:0:0:0:0:0:0:1', '2020-05-15 13:41:14');
INSERT INTO `sys_log` VALUES (155, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":80,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"删除\",\"perms\":\"person:interview:delete\",\"type\":2,\"orderNum\":0}', 63, '0:0:0:0:0:0:0:1', '2020-05-15 13:41:29');
INSERT INTO `sys_log` VALUES (156, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":81,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"查看\",\"perms\":\"person:salary:list,person:salary:info\",\"type\":2,\"orderNum\":0}', 33, '0:0:0:0:0:0:0:1', '2020-05-15 13:42:46');
INSERT INTO `sys_log` VALUES (157, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":82,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"新增\",\"perms\":\"person:salary:save\",\"type\":2,\"orderNum\":0}', 86, '0:0:0:0:0:0:0:1', '2020-05-15 13:43:03');
INSERT INTO `sys_log` VALUES (158, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":83,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"编辑\",\"perms\":\"person:salary:update\",\"type\":2,\"orderNum\":0}', 34, '0:0:0:0:0:0:0:1', '2020-05-15 13:43:17');
INSERT INTO `sys_log` VALUES (159, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":84,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"删除\",\"perms\":\"person:salary:delete\",\"type\":2,\"orderNum\":0}', 75, '0:0:0:0:0:0:0:1', '2020-05-15 13:43:49');
INSERT INTO `sys_log` VALUES (160, 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":1,\"candidate\":\"2\",\"meetTime\":\"3\",\"meetUserId\":4,\"status\":0,\"createTime\":\"2020-05-15 13:49:31\"}', 149, '0:0:0:0:0:0:0:1', '2020-05-15 13:49:32');
INSERT INTO `sys_log` VALUES (161, 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":2,\"candidateMobile\":\"22\",\"meetTime\":\"33\",\"meetUserId\":44,\"status\":0,\"createTime\":\"2020-05-15 13:50:47\"}', 29, '0:0:0:0:0:0:0:1', '2020-05-15 13:50:47');
INSERT INTO `sys_log` VALUES (162, 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":3,\"candidate\":\"111\",\"candidateMobile\":\"222\",\"meetTime\":\"333\",\"meetUserId\":444,\"status\":0,\"createTime\":\"2020-05-15 13:51:38\"}', 47, '0:0:0:0:0:0:0:1', '2020-05-15 13:51:38');
INSERT INTO `sys_log` VALUES (163, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":1,\"userId\":1,\"education\":\"2\",\"birth\":\"3\",\"entryDate\":\"4\",\"createTime\":\"2020-05-15 13:51:50\"}', 89, '0:0:0:0:0:0:0:1', '2020-05-15 13:51:50');
INSERT INTO `sys_log` VALUES (164, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":1,\"createTime\":\"2020-05-15 13:53:22\"}', 58, '0:0:0:0:0:0:0:1', '2020-05-15 13:53:22');
INSERT INTO `sys_log` VALUES (165, 'admin', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":1,\"applyDate\":\"1\",\"status\":0,\"createTime\":\"2020-05-15 13:53:45\"}', 70, '0:0:0:0:0:0:0:1', '2020-05-15 13:53:45');
INSERT INTO `sys_log` VALUES (166, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":27,\"userId\":1,\"workDate\":\"2020-05-15\",\"workContent\":\"的点点滴滴\",\"progress\":12,\"createTime\":\"2020-05-15 14:18:21\"}', 205, '0:0:0:0:0:0:0:1', '2020-05-15 14:18:22');
INSERT INTO `sys_log` VALUES (167, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":2,\"salaryMonth\":\"22\",\"mustSalary\":22.0,\"realitySalary\":33.0,\"createTime\":\"2020-05-15 14:18:37\"}', 132, '0:0:0:0:0:0:0:1', '2020-05-15 14:18:37');
INSERT INTO `sys_log` VALUES (168, 'admin', '删除工资', 'com.person.modules.person.controller.SalaryRecordController.delete()', '[1]', 47, '0:0:0:0:0:0:0:1', '2020-05-15 14:18:42');
INSERT INTO `sys_log` VALUES (169, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":2,\"userId\":1,\"education\":\"2\",\"birth\":\"3\",\"entryDate\":\"4\",\"createTime\":\"2020-05-15 14:18:52\"}', 119, '0:0:0:0:0:0:0:1', '2020-05-15 14:18:52');
INSERT INTO `sys_log` VALUES (170, 'admin', '删除面试', 'com.person.modules.person.controller.InterviewPlanController.delete()', '[1,2]', 109, '0:0:0:0:0:0:0:1', '2020-05-15 14:21:28');
INSERT INTO `sys_log` VALUES (171, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"modules//person/need.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-bullhorn\",\"orderNum\":0}', 115, '0:0:0:0:0:0:0:1', '2020-05-15 14:22:52');
INSERT INTO `sys_log` VALUES (172, 'admin', '保存招聘要求', 'com.person.modules.person.controller.RecruitNeedController.save()', '{\"id\":1,\"dept\":\"1\",\"needNum\":2,\"post\":\"3\",\"education\":\"4\",\"workTime\":5,\"demand\":\"6\",\"status\":0,\"recruitUserId\":7,\"needUserId\":8,\"createTime\":\"2020-05-15 14:33:35\"}', 189, '0:0:0:0:0:0:0:1', '2020-05-15 14:33:35');
INSERT INTO `sys_log` VALUES (173, 'admin', '保存角色', 'com.person.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"普通用户\",\"remark\":\"普通员工\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:29:43 PM\"}', 128, '0:0:0:0:0:0:0:1', '2020-05-15 20:29:44');
INSERT INTO `sys_log` VALUES (174, 'admin', '保存角色', 'com.person.modules.sys.controller.SysRoleController.save()', '{\"roleId\":3,\"roleName\":\"财务专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68],\"deptIdList\":[],\"createTime\":\"May 15, 2020 8:30:29 PM\"}', 84, '0:0:0:0:0:0:0:1', '2020-05-15 20:30:29');
INSERT INTO `sys_log` VALUES (175, 'admin', '保存角色', 'com.person.modules.sys.controller.SysRoleController.save()', '{\"roleId\":4,\"roleName\":\"人事专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,44,51,73,74,75,76,52,77,78,79,80,45,53,69,70,71,72],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:31:13 PM\"}', 103, '0:0:0:0:0:0:0:1', '2020-05-15 20:31:14');
INSERT INTO `sys_log` VALUES (176, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"财务专员\",\"remark\":\"财务专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:30:29 PM\"}', 81, '0:0:0:0:0:0:0:1', '2020-05-15 20:31:49');
INSERT INTO `sys_log` VALUES (177, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"人事专员\",\"remark\":\"人事专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,44,51,73,74,75,76,52,77,78,79,80,45,53,69,70,71,72],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:31:13 PM\"}', 105, '0:0:0:0:0:0:0:1', '2020-05-15 20:32:02');
INSERT INTO `sys_log` VALUES (178, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":3,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"20:32:19\",\"status\":0,\"createTime\":\"2020-05-15 20:33:14\"}', 20, '0:0:0:0:0:0:0:1', '2020-05-15 20:33:14');
INSERT INTO `sys_log` VALUES (179, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":3,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"20:32:19\",\"downTime\":\"22:32:19\",\"status\":0,\"createTime\":\"2020-05-15 20:33:14\",\"updateTime\":\"2020-05-15 20:33:25\"}', 14, '0:0:0:0:0:0:0:1', '2020-05-15 20:33:25');
INSERT INTO `sys_log` VALUES (180, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":4,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"15:47:42\",\"status\":0,\"createTime\":\"2020-05-15 20:48:27\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 20:48:27');
INSERT INTO `sys_log` VALUES (181, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":5,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:12:30\",\"status\":0,\"createTime\":\"2020-05-15 21:12:31\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 21:12:31');
INSERT INTO `sys_log` VALUES (182, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":6,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:41:55\",\"status\":0,\"createTime\":\"2020-05-15 21:42:04\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-15 21:42:04');
INSERT INTO `sys_log` VALUES (183, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":7,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:41:55\",\"status\":0,\"createTime\":\"2020-05-15 21:42:24\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 21:42:24');
INSERT INTO `sys_log` VALUES (184, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":8,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:41:55\",\"status\":0,\"createTime\":\"2020-05-15 21:43:15\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 21:43:15');
INSERT INTO `sys_log` VALUES (185, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":9,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:43:45\",\"status\":0,\"createTime\":\"2020-05-15 21:44:16\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-15 21:44:16');
INSERT INTO `sys_log` VALUES (186, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":10,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:43:45\",\"status\":0,\"createTime\":\"2020-05-15 21:45:06\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-15 21:45:06');
INSERT INTO `sys_log` VALUES (187, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":11,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"21:43:45\",\"status\":0,\"createTime\":\"2020-05-15 21:45:52\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-15 21:45:52');
INSERT INTO `sys_log` VALUES (188, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"06:54:50\",\"createTime\":\"2020-05-15 21:55:09\"}', 4478, '0:0:0:0:0:0:0:1', '2020-05-15 21:55:09');
INSERT INTO `sys_log` VALUES (189, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":12,\"userId\":1,\"workDate\":\"2020-05-14\",\"upTime\":\"06:54:50\",\"createTime\":\"2020-05-15 21:55:19\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-15 21:55:19');
INSERT INTO `sys_log` VALUES (190, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":12,\"userId\":1,\"workDate\":\"2020-05-14\",\"upTime\":\"06:54:50\",\"downTime\":\"18:54:50\",\"status\":0,\"createTime\":\"2020-05-15 21:55:19\",\"updateTime\":\"2020-05-15 21:55:52\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-15 21:55:52');
INSERT INTO `sys_log` VALUES (191, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"userId\":1,\"workDate\":\"2020-05-14\",\"upTime\":\"09:18:50\",\"createTime\":\"2020-05-15 21:56:14\"}', 3, '0:0:0:0:0:0:0:1', '2020-05-15 21:56:14');
INSERT INTO `sys_log` VALUES (192, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":13,\"userId\":1,\"workDate\":\"2020-05-13\",\"upTime\":\"09:18:50\",\"createTime\":\"2020-05-15 21:56:25\"}', 13, '0:0:0:0:0:0:0:1', '2020-05-15 21:56:25');
INSERT INTO `sys_log` VALUES (193, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":14,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"09:02:46\",\"createTime\":\"2020-05-15 22:00:03\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-15 22:00:03');
INSERT INTO `sys_log` VALUES (194, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":15,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"09:01:46\",\"createTime\":\"2020-05-15 22:06:03\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-15 22:06:03');
INSERT INTO `sys_log` VALUES (195, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":16,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"09:07:23\",\"createTime\":\"2020-05-15 22:07:44\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-15 22:07:44');
INSERT INTO `sys_log` VALUES (196, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":17,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"09:09:13\",\"status\":1,\"createTime\":\"2020-05-15 22:09:22\"}', 130, '0:0:0:0:0:0:0:1', '2020-05-15 22:09:22');
INSERT INTO `sys_log` VALUES (197, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"08:09:13\",\"createTime\":\"2020-05-15 22:09:39\"}', 5, '0:0:0:0:0:0:0:1', '2020-05-15 22:09:39');
INSERT INTO `sys_log` VALUES (198, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":18,\"userId\":1,\"workDate\":\"2020-05-14\",\"upTime\":\"08:09:13\",\"createTime\":\"2020-05-15 22:09:45\"}', 14, '0:0:0:0:0:0:0:1', '2020-05-15 22:09:45');
INSERT INTO `sys_log` VALUES (199, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"08:09:13\",\"createTime\":\"2020-05-15 22:10:05\"}', 3, '0:0:0:0:0:0:0:1', '2020-05-15 22:10:05');
INSERT INTO `sys_log` VALUES (200, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":19,\"userId\":1,\"workDate\":\"2020-05-12\",\"upTime\":\"08:09:13\",\"createTime\":\"2020-05-15 22:10:10\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-15 22:10:10');
INSERT INTO `sys_log` VALUES (201, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":19,\"userId\":1,\"workDate\":\"2020-05-12\",\"upTime\":\"08:09:13\",\"downTime\":\"18:09:13\",\"status\":0,\"createTime\":\"2020-05-15 22:10:10\",\"updateTime\":\"2020-05-15 22:10:25\"}', 15, '0:0:0:0:0:0:0:1', '2020-05-15 22:10:25');
INSERT INTO `sys_log` VALUES (202, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":18,\"userId\":1,\"workDate\":\"2020-05-14\",\"upTime\":\"08:09:13\",\"downTime\":\"17:09:13\",\"status\":2,\"createTime\":\"2020-05-15 22:09:45\",\"updateTime\":\"2020-05-15 22:10:43\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 22:10:43');
INSERT INTO `sys_log` VALUES (203, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":20,\"userId\":1,\"workDate\":\"2020-05-10\",\"upTime\":\"08:09:13\",\"downTime\":\"22:09:13\",\"createTime\":\"2020-05-15 22:11:11\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-15 22:11:11');
INSERT INTO `sys_log` VALUES (204, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":20,\"userId\":1,\"workDate\":\"2020-05-10\",\"upTime\":\"08:09:13\",\"downTime\":\"22:09:13\",\"status\":3,\"createTime\":\"2020-05-15 22:11:11\",\"updateTime\":\"2020-05-15 22:11:24\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-15 22:11:24');
INSERT INTO `sys_log` VALUES (205, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"08:19:03\",\"createTime\":\"2020-05-15 22:19:26\"}', 3, '0:0:0:0:0:0:0:1', '2020-05-15 22:19:26');
INSERT INTO `sys_log` VALUES (206, 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":21,\"userId\":1,\"workDate\":\"2020-05-16\",\"upTime\":\"08:19:03\",\"createTime\":\"2020-05-15 22:19:31\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-15 22:19:31');
INSERT INTO `sys_log` VALUES (207, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":21,\"userId\":1,\"workDate\":\"2020-05-16\",\"upTime\":\"08:19:03\",\"downTime\":\"22:20:34\",\"status\":3,\"createTime\":\"2020-05-15 22:19:31\",\"updateTime\":\"2020-05-15 22:20:41\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-15 22:20:41');
INSERT INTO `sys_log` VALUES (208, 'admin', '保存用户', 'com.person.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"wdc\",\"name\":\"王大锤\",\"password\":\"a977e04a469ee5b213c31dc60d03f75de2bfeda871f465c723c304313f748e7d\",\"salt\":\"1sbkoGf5x7Q5lqxvCs5I\",\"email\":\"1111@qq.com\",\"mobile\":\"18651234456\",\"status\":1,\"roleIdList\":[2],\"createTime\":\"May 15, 2020 10:29:02 PM\",\"deptId\":3,\"deptName\":\"上海分公司\"}', 65, '0:0:0:0:0:0:0:1', '2020-05-15 22:29:02');
INSERT INTO `sys_log` VALUES (209, 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":17,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"09:09:13\",\"downTime\":\"18:11:23\",\"status\":1,\"createTime\":\"2020-05-15 22:09:22\",\"updateTime\":\"2020-05-16 07:11:39\"}', 117, '0:0:0:0:0:0:0:1', '2020-05-16 07:11:39');
INSERT INTO `sys_log` VALUES (210, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":30,\"userId\":1,\"name\":\"本周学习一个word小技巧\",\"startDate\":\"2020-05-15\",\"endDate\":\"2020-05-16\",\"status\":0,\"createTime\":\"2020-05-16 07:12:23\"}', 21, '0:0:0:0:0:0:0:1', '2020-05-16 07:12:23');
INSERT INTO `sys_log` VALUES (211, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":30,\"userId\":1,\"name\":\"本周学习一个word小技巧\",\"startDate\":\"2020-05-15\",\"endDate\":\"2020-05-16\",\"status\":1,\"createTime\":\"2020-05-16 07:12:23\",\"updateTime\":\"2020-05-16 07:13:07\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-16 07:13:07');
INSERT INTO `sys_log` VALUES (212, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":22,\"userId\":2,\"workDate\":\"2020-05-15\",\"upTime\":\"07:18:13\",\"createTime\":\"2020-05-16 07:18:34\"}', 29, '0:0:0:0:0:0:0:1', '2020-05-16 07:18:34');
INSERT INTO `sys_log` VALUES (213, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":23,\"userId\":2,\"workDate\":\"2020-05-16\",\"upTime\":\"07:18:13\",\"createTime\":\"2020-05-16 07:18:53\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-16 07:18:53');
INSERT INTO `sys_log` VALUES (214, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":24,\"userId\":2,\"workDate\":\"2020-05-13\",\"upTime\":\"09:18:13\",\"status\":1,\"createTime\":\"2020-05-16 07:19:19\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-16 07:19:19');
INSERT INTO `sys_log` VALUES (215, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":25,\"userId\":2,\"workMonth\":\"2020-04\",\"workDate\":\"2020-04-07\",\"upTime\":\"08:20:11\",\"createTime\":\"2020-05-16 08:20:36\"}', 113, '0:0:0:0:0:0:0:1', '2020-05-16 08:20:36');
INSERT INTO `sys_log` VALUES (216, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":1,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"workContent\":\"测试\",\"progress\":12,\"createTime\":\"2020-05-16 08:21:51\"}', 22, '0:0:0:0:0:0:0:1', '2020-05-16 08:21:51');
INSERT INTO `sys_log` VALUES (217, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"workContent\":\"saddasdassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\"progress\":22}', 155, '0:0:0:0:0:0:0:1', '2020-05-16 08:35:15');
INSERT INTO `sys_log` VALUES (218, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"workDate\":\"2020-05-16\",\"workContent\":\"saddasdassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\"progress\":22}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 08:35:39');
INSERT INTO `sys_log` VALUES (219, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":2,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"workContent\":\"saddasdassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\"progress\":22,\"createTime\":\"2020-05-16 08:35:48\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-16 08:35:48');
INSERT INTO `sys_log` VALUES (220, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":3,\"userId\":2,\"workMonth\":\"2020-04\",\"workDate\":\"2020-04-16\",\"workContent\":\"fsadf长度的\",\"progress\":1,\"createTime\":\"2020-05-16 08:36:14\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-16 08:36:14');
INSERT INTO `sys_log` VALUES (221, 'wdc', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":31,\"userId\":2,\"name\":\"测试计划\",\"startDate\":\"2020-05-14\",\"endDate\":\"2020-05-16\",\"status\":0,\"createTime\":\"2020-05-16 08:46:17\"}', 128, '0:0:0:0:0:0:0:1', '2020-05-16 08:46:17');
INSERT INTO `sys_log` VALUES (222, 'wdc', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":32,\"userId\":2,\"name\":\"水电费\",\"startDate\":\"2020-05-07\",\"endDate\":\"2020-05-10\",\"status\":1,\"createTime\":\"2020-05-16 08:46:31\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-16 08:46:31');
INSERT INTO `sys_log` VALUES (223, 'wdc', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":22,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"upTime\":\"07:18:13\",\"downTime\":\"19:51:33\",\"status\":0,\"createTime\":\"2020-05-16 07:18:34\",\"updateTime\":\"2020-05-16 08:51:50\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-16 08:51:50');
INSERT INTO `sys_log` VALUES (224, 'wdc', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":2,\"applyDate\":\"2020-05-16\",\"applyContent\":\"我要转正\",\"status\":0,\"createTime\":\"2020-05-16 09:15:23\"}', 48, '0:0:0:0:0:0:0:1', '2020-05-16 09:15:23');
INSERT INTO `sys_log` VALUES (225, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":85,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"审核\",\"perms\":\"person:apply:approval\",\"type\":2,\"orderNum\":0}', 15, '0:0:0:0:0:0:0:1', '2020-05-16 09:19:05');
INSERT INTO `sys_log` VALUES (226, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":1,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"deptId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,31,32,33,34,35,36,37,38,39,40,41,56,81,82,83,84,42,54,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,85,44,51,73,74,75,76,52,77,78,79,80,45,53,69,70,71,72],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 14, 2020 10:28:37 PM\"}', 230, '0:0:0:0:0:0:0:1', '2020-05-16 09:20:03');
INSERT INTO `sys_log` VALUES (227, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":2,\"applyDate\":\"2020-05-16\",\"applyContent\":\"我要转正\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":1,\"approvalOpinion\":\"审核通过\",\"createTime\":\"2020-05-16 09:15:23\"}', 50, '0:0:0:0:0:0:0:1', '2020-05-16 10:39:34');
INSERT INTO `sys_log` VALUES (228, 'wdc', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":0,\"createTime\":\"2020-05-16 10:43:32\"}', 50, '0:0:0:0:0:0:0:1', '2020-05-16 10:43:32');
INSERT INTO `sys_log` VALUES (229, 'wdc', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":4,\"applyUserId\":2,\"applyDate\":\"2020-05-12\",\"applyContent\":\"我觉得很好，请求转正\",\"status\":0,\"createTime\":\"2020-05-16 10:44:01\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-16 10:44:01');
INSERT INTO `sys_log` VALUES (230, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":1,\"approvalOpinion\":\"好的\",\"createTime\":\"2020-05-16 10:43:32\"}', 96, '0:0:0:0:0:0:0:1', '2020-05-16 11:00:04');
INSERT INTO `sys_log` VALUES (231, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":4,\"applyUserId\":2,\"applyDate\":\"2020-05-12\",\"applyContent\":\"我觉得很好，请求转正\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":0,\"approvalOpinion\":\"你不行\",\"createTime\":\"2020-05-16 10:44:01\",\"updateTime\":\"2020-05-16 12:14:24\"}', 43, '0:0:0:0:0:0:0:1', '2020-05-16 12:14:24');
INSERT INTO `sys_log` VALUES (232, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":1,\"approvalOpinion\":\"好的\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:21:59\"}', 104, '0:0:0:0:0:0:0:1', '2020-05-16 12:21:59');
INSERT INTO `sys_log` VALUES (233, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":4,\"applyUserId\":2,\"applyDate\":\"2020-05-12\",\"applyContent\":\"我觉得很好，请求转正\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":2,\"approvalOpinion\":\"你行\",\"createTime\":\"2020-05-16 10:44:01\",\"updateTime\":\"2020-05-16 12:22:35\"}', 19, '0:0:0:0:0:0:0:1', '2020-05-16 12:22:35');
INSERT INTO `sys_log` VALUES (234, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":0,\"approvalDate\":\"2020-05-16\",\"approvalResult\":2,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:26:34\"}', 91, '0:0:0:0:0:0:0:1', '2020-05-16 12:26:34');
INSERT INTO `sys_log` VALUES (235, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"status\":1}', 17312, '0:0:0:0:0:0:0:1', '2020-05-16 12:34:24');
INSERT INTO `sys_log` VALUES (236, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":2,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 38264, '0:0:0:0:0:0:0:1', '2020-05-16 12:35:13');
INSERT INTO `sys_log` VALUES (237, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"status\":1}', 6407, '0:0:0:0:0:0:0:1', '2020-05-16 12:40:41');
INSERT INTO `sys_log` VALUES (238, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"status\":1}', 4446, '0:0:0:0:0:0:0:1', '2020-05-16 12:43:08');
INSERT INTO `sys_log` VALUES (239, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":4,\"applyUserId\":2,\"applyDate\":\"2020-05-12\",\"applyContent\":\"我觉得很好，请求转正\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":2,\"approvalOpinion\":\"你行\",\"createTime\":\"2020-05-16 10:44:01\",\"updateTime\":\"2020-05-16 12:46:28\"}', 7369, '0:0:0:0:0:0:0:1', '2020-05-16 12:46:28');
INSERT INTO `sys_log` VALUES (240, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 0, '0:0:0:0:0:0:0:1', '2020-05-16 12:48:23');
INSERT INTO `sys_log` VALUES (241, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 5584, '0:0:0:0:0:0:0:1', '2020-05-16 12:55:50');
INSERT INTO `sys_log` VALUES (242, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 0, '0:0:0:0:0:0:0:1', '2020-05-16 12:56:22');
INSERT INTO `sys_log` VALUES (243, 'admin', '修改申请', 'com.person.modules.person.controller.ConvertApplyController.update()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 24815, '0:0:0:0:0:0:0:1', '2020-05-16 13:06:07');
INSERT INTO `sys_log` VALUES (244, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":2,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 12:35:10\"}', 5173, '0:0:0:0:0:0:0:1', '2020-05-16 13:08:38');
INSERT INTO `sys_log` VALUES (245, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":3,\"applyUserId\":2,\"applyDate\":\"2020-05-15\",\"applyContent\":\"大哥给我转正吧\",\"status\":1,\"approvalDate\":\"2020-05-16\",\"approvalUserId\":1,\"approvalResult\":1,\"approvalOpinion\":\"你不行啊\",\"createTime\":\"2020-05-16 10:43:32\",\"updateTime\":\"2020-05-16 13:09:49\"}', 4765, '0:0:0:0:0:0:0:1', '2020-05-16 13:09:49');
INSERT INTO `sys_log` VALUES (246, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":2,\"salaryMonth\":\"22\",\"mustSalary\":22.0,\"realitySalary\":33.0,\"createTime\":\"2020-05-15 14:18:37\"}', 86, '0:0:0:0:0:0:0:1', '2020-05-16 13:55:39');
INSERT INTO `sys_log` VALUES (247, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":22.0,\"realitySalary\":33.0,\"createTime\":\"2020-05-15 14:18:37\"}', 1, '0:0:0:0:0:0:0:1', '2020-05-16 13:55:56');
INSERT INTO `sys_log` VALUES (248, 'admin', '保存用户', 'com.person.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"gy\",\"name\":\"关羽\",\"password\":\"3933e28a43393883d7f5f753a40d475eec532d026cbf674e7b63eb477018076b\",\"salt\":\"2E5mvF1xjXFoY0narVz9\",\"email\":\"gy@qq.com\",\"mobile\":\"13455676543\",\"status\":1,\"roleIdList\":[3],\"createTime\":\"May 16, 2020 3:11:08 PM\",\"deptId\":3,\"deptName\":\"上海分公司\"}', 262, '0:0:0:0:0:0:0:1', '2020-05-16 15:11:08');
INSERT INTO `sys_log` VALUES (249, 'admin', '保存用户', 'com.person.modules.sys.controller.SysUserController.save()', '{\"userId\":4,\"username\":\"zf\",\"name\":\"张飞\",\"password\":\"35b28385c0cc1396edce2a132646d35b1f6fc5bdb779bc931a7e85d8502f65f8\",\"salt\":\"NF4cYNKNmsMA997exGGN\",\"email\":\"zf@qq.com\",\"mobile\":\"19877678790\",\"status\":1,\"roleIdList\":[4],\"createTime\":\"May 16, 2020 3:11:43 PM\",\"deptId\":3,\"deptName\":\"上海分公司\"}', 18, '0:0:0:0:0:0:0:1', '2020-05-16 15:11:43');
INSERT INTO `sys_log` VALUES (250, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":3,\"salaryMonth\":\"2020-05\",\"mustSalary\":5600.0,\"realitySalary\":4500.0,\"createTime\":\"2020-05-16 15:12:06\"}', 38, '0:0:0:0:0:0:0:1', '2020-05-16 15:12:06');
INSERT INTO `sys_log` VALUES (251, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":4,\"salaryMonth\":\"2020-05\",\"mustSalary\":345354.0,\"realitySalary\":334500.0,\"createTime\":\"2020-05-16 15:15:04\"}', 79609, '0:0:0:0:0:0:0:1', '2020-05-16 15:15:04');
INSERT INTO `sys_log` VALUES (252, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":5,\"salaryMonth\":\"2020-05\",\"mustSalary\":444444.0,\"realitySalary\":33333.0,\"createTime\":\"2020-05-16 15:15:41\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-16 15:15:41');
INSERT INTO `sys_log` VALUES (253, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":6,\"salaryMonth\":\"2020-05\",\"mustSalary\":23.0,\"realitySalary\":12.0,\"createTime\":\"2020-05-16 15:18:49\"}', 15285, '0:0:0:0:0:0:0:1', '2020-05-16 15:18:49');
INSERT INTO `sys_log` VALUES (254, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":7,\"salaryMonth\":\"2020-05\",\"mustSalary\":44.0,\"realitySalary\":33.0,\"createTime\":\"2020-05-16 15:19:38\"}', 8320, '0:0:0:0:0:0:0:1', '2020-05-16 15:19:38');
INSERT INTO `sys_log` VALUES (255, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":8,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":23.0,\"realitySalary\":22.0,\"createTime\":\"2020-05-16 15:23:48\"}', 4050, '0:0:0:0:0:0:0:1', '2020-05-16 15:23:48');
INSERT INTO `sys_log` VALUES (256, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":9,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":444.0,\"realitySalary\":333.0,\"createTime\":\"2020-05-16 15:33:07\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 15:33:07');
INSERT INTO `sys_log` VALUES (257, 'admin', '删除工资', 'com.person.modules.person.controller.SalaryRecordController.delete()', '[8,9]', 9, '0:0:0:0:0:0:0:1', '2020-05-16 15:33:17');
INSERT INTO `sys_log` VALUES (258, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":10,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":333.0,\"realitySalary\":222.0,\"createTime\":\"2020-05-16 15:34:48\"}', 148, '0:0:0:0:0:0:0:1', '2020-05-16 15:34:48');
INSERT INTO `sys_log` VALUES (259, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":11,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":555.0,\"realitySalary\":444.0,\"createTime\":\"2020-05-16 15:35:00\"}', 17, '0:0:0:0:0:0:0:1', '2020-05-16 15:35:00');
INSERT INTO `sys_log` VALUES (260, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":12,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":666.0,\"realitySalary\":555.0,\"createTime\":\"2020-05-16 15:35:55\"}', 57843, '0:0:0:0:0:0:0:1', '2020-05-16 15:36:39');
INSERT INTO `sys_log` VALUES (261, 'admin', '删除工资', 'com.person.modules.person.controller.SalaryRecordController.delete()', '[10,11,12]', 12, '0:0:0:0:0:0:0:1', '2020-05-16 15:36:48');
INSERT INTO `sys_log` VALUES (262, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":13,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":999.0,\"realitySalary\":888.0,\"createTime\":\"2020-05-16 15:37:04\"}', 4058, '0:0:0:0:0:0:0:1', '2020-05-16 15:37:04');
INSERT INTO `sys_log` VALUES (263, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":14,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":888.0,\"realitySalary\":777.0,\"createTime\":\"2020-05-16 15:37:17\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-16 15:37:17');
INSERT INTO `sys_log` VALUES (264, 'admin', '删除工资', 'com.person.modules.person.controller.SalaryRecordController.delete()', '[13,14]', 9, '0:0:0:0:0:0:0:1', '2020-05-16 15:38:05');
INSERT INTO `sys_log` VALUES (265, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":15,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":999.0,\"realitySalary\":888.0,\"createTime\":\"2020-05-16 15:38:17\"}', 131, '0:0:0:0:0:0:0:1', '2020-05-16 15:38:17');
INSERT INTO `sys_log` VALUES (266, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":888.0,\"realitySalary\":777.0,\"createTime\":\"2020-05-16 15:38:27\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-16 15:38:27');
INSERT INTO `sys_log` VALUES (267, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":16,\"userId\":2,\"salaryMonth\":\"2020-04\",\"mustSalary\":888.0,\"realitySalary\":777.0,\"createTime\":\"2020-05-16 15:38:35\"}', 12, '0:0:0:0:0:0:0:1', '2020-05-16 15:38:35');
INSERT INTO `sys_log` VALUES (268, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":17,\"userId\":3,\"salaryMonth\":\"2020-05\",\"mustSalary\":444.0,\"realitySalary\":333.0,\"createTime\":\"2020-05-16 15:38:49\"}', 13, '0:0:0:0:0:0:0:1', '2020-05-16 15:38:49');
INSERT INTO `sys_log` VALUES (269, 'admin', '删除员工档案', 'com.person.modules.person.controller.UserDocController.delete()', '[1,2]', 7, '0:0:0:0:0:0:0:1', '2020-05-16 15:48:49');
INSERT INTO `sys_log` VALUES (270, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:05:49\"}', 96, '0:0:0:0:0:0:0:1', '2020-05-16 16:05:49');
INSERT INTO `sys_log` VALUES (271, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"userId\":2,\"education\":\"本科\",\"birth\":\"1998-05-05\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:09:49\"}', 102, '0:0:0:0:0:0:0:1', '2020-05-16 16:09:49');
INSERT INTO `sys_log` VALUES (272, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":4,\"userId\":3,\"education\":\"本科\",\"birth\":\"1998-05-05\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:09:56\"}', 19, '0:0:0:0:0:0:0:1', '2020-05-16 16:09:56');
INSERT INTO `sys_log` VALUES (273, 'admin', '删除招聘要求', 'com.person.modules.person.controller.RecruitNeedController.delete()', '[1]', 10, '0:0:0:0:0:0:0:1', '2020-05-16 17:15:43');
INSERT INTO `sys_log` VALUES (274, 'admin', '保存招聘要求', 'com.person.modules.person.controller.RecruitNeedController.save()', '{\"id\":2,\"needNum\":1,\"post\":\"22\",\"education\":\"22\",\"workTime\":1,\"demand\":\"1122\",\"status\":0,\"recruitUserId\":2,\"needUserId\":3,\"createTime\":\"2020-05-16 17:32:27\"}', 118, '0:0:0:0:0:0:0:1', '2020-05-16 17:32:27');
INSERT INTO `sys_log` VALUES (275, 'admin', '修改招聘要求', 'com.person.modules.person.controller.RecruitNeedController.update()', '{\"id\":2,\"needNum\":1,\"post\":\"经理助理\",\"education\":\"本科\",\"workTime\":1,\"demand\":\"熟练使用Office\",\"status\":0,\"recruitUserId\":2,\"needUserId\":3,\"createTime\":\"2020-05-16 17:32:27\"}', 102, '0:0:0:0:0:0:0:1', '2020-05-16 17:37:35');
INSERT INTO `sys_log` VALUES (276, 'admin', '保存招聘要求', 'com.person.modules.person.controller.RecruitNeedController.save()', '{\"id\":3,\"needNum\":1,\"post\":\"测试\",\"education\":\"大专\",\"workTime\":2,\"demand\":\"xitong\",\"status\":0,\"recruitUserId\":4,\"needUserId\":3,\"createTime\":\"2020-05-16 17:38:37\"}', 23, '0:0:0:0:0:0:0:1', '2020-05-16 17:38:37');
INSERT INTO `sys_log` VALUES (277, 'admin', '删除面试', 'com.person.modules.person.controller.InterviewPlanController.delete()', '[3]', 8, '0:0:0:0:0:0:0:1', '2020-05-16 17:38:47');
INSERT INTO `sys_log` VALUES (278, 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":4,\"candidate\":\"章程\",\"candidateMobile\":\"16544567892\",\"meetTime\":\"2020-05-16 18:32:40\",\"meetUserId\":2,\"status\":0,\"createTime\":\"2020-05-16 18:32:53\"}', 95, '0:0:0:0:0:0:0:1', '2020-05-16 18:32:53');
INSERT INTO `sys_log` VALUES (279, 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":5,\"candidate\":\"刘尚坤\",\"candidateMobile\":\"18675123390\",\"meetTime\":\"2020-05-16 18:33:30\",\"meetUserId\":4,\"status\":0,\"createTime\":\"2020-05-16 18:33:35\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-16 18:33:35');
INSERT INTO `sys_log` VALUES (280, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":4,\"candidate\":\"章程\",\"candidateMobile\":\"16544567892\",\"meetTime\":\"2020-05-16 18:32:40\",\"meetUserId\":2,\"status\":1,\"createTime\":\"2020-05-16 18:32:53\"}', 14, '0:0:0:0:0:0:0:1', '2020-05-16 18:41:14');
INSERT INTO `sys_log` VALUES (281, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":5,\"candidate\":\"刘尚坤\",\"candidateMobile\":\"18675123390\",\"meetTime\":\"2020-05-16 18:33:30\",\"meetUserId\":4,\"status\":1,\"createTime\":\"2020-05-16 18:33:35\"}', 89, '0:0:0:0:0:0:0:1', '2020-05-16 18:51:14');
INSERT INTO `sys_log` VALUES (282, 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":33,\"userId\":1,\"name\":\"测试计划\",\"startDate\":\"2020-05-14\",\"endDate\":\"2020-05-21\",\"status\":0,\"createTime\":\"2020-05-16 19:10:56\"}', 94, '0:0:0:0:0:0:0:1', '2020-05-16 19:10:56');
INSERT INTO `sys_log` VALUES (283, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":33,\"userId\":1,\"name\":\"测试计划\",\"startDate\":\"2020-05-14\",\"endDate\":\"2020-05-21\",\"status\":1,\"createTime\":\"2020-05-16 19:10:56\",\"updateTime\":\"2020-05-16 19:11:09\"}', 15, '0:0:0:0:0:0:0:1', '2020-05-16 19:11:09');
INSERT INTO `sys_log` VALUES (284, 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":29,\"userId\":1,\"name\":\"本周看一本书\",\"content\":\"看一本关于哲学的书籍\",\"startDate\":\"2020-05-11\",\"endDate\":\"2020-05-17\",\"status\":0,\"createTime\":\"2020-05-15 12:53:18\",\"updateTime\":\"2020-05-16 19:17:06\"}', 114, '0:0:0:0:0:0:0:1', '2020-05-16 19:17:06');
INSERT INTO `sys_log` VALUES (285, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":4,\"userId\":1,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"workContent\":\"今天完成60%功能\",\"progress\":60,\"createTime\":\"2020-05-16 19:17:59\"}', 36, '0:0:0:0:0:0:0:1', '2020-05-16 19:17:59');
INSERT INTO `sys_log` VALUES (286, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":5,\"userId\":1,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"workContent\":\"测试重复\",\"progress\":1,\"createTime\":\"2020-05-16 19:22:34\"}', 120185, '0:0:0:0:0:0:0:1', '2020-05-16 19:22:34');
INSERT INTO `sys_log` VALUES (287, 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"workDate\":\"2020-05-16\",\"workContent\":\"测试重复\",\"progress\":2}', 4718, '127.0.0.1', '2020-05-16 19:24:23');
INSERT INTO `sys_log` VALUES (288, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":17,\"salaryMonth\":\"2020-05\",\"mustSalary\":4440.0,\"realitySalary\":3330.0,\"createTime\":\"2020-05-16 15:38:49\"}', 85, '0:0:0:0:0:0:0:1', '2020-05-16 21:32:22');
INSERT INTO `sys_log` VALUES (289, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":17,\"salaryMonth\":\"2020-05\",\"mustSalary\":4440.0,\"realitySalary\":3330.0,\"createTime\":\"2020-05-16 15:38:49\"}', 25969, '0:0:0:0:0:0:0:1', '2020-05-16 21:33:30');
INSERT INTO `sys_log` VALUES (290, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":17,\"salaryMonth\":\"2020-05\",\"mustSalary\":1444.0,\"realitySalary\":1333.0,\"createTime\":\"2020-05-16 15:38:49\"}', 116167, '0:0:0:0:0:0:0:1', '2020-05-16 21:36:03');
INSERT INTO `sys_log` VALUES (291, 'admin', '修改工资', 'com.person.modules.person.controller.SalaryRecordController.update()', '{\"id\":15,\"salaryMonth\":\"2020-05\",\"mustSalary\":9990.0,\"realitySalary\":8880.0,\"createTime\":\"2020-05-16 15:38:17\"}', 5275, '0:0:0:0:0:0:0:1', '2020-05-16 21:38:15');
INSERT INTO `sys_log` VALUES (292, 'admin', '修改招聘要求', 'com.person.modules.person.controller.RecruitNeedController.update()', '{\"id\":2,\"needNum\":1,\"post\":\"经理助理\",\"education\":\"本科\",\"workTime\":1,\"demand\":\"熟练使用Office\",\"status\":1,\"createTime\":\"2020-05-16 17:32:27\"}', 117, '0:0:0:0:0:0:0:1', '2020-05-16 21:58:23');
INSERT INTO `sys_log` VALUES (293, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"普通用户\",\"remark\":\"普通员工\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,44,51,73,74,75,76,52,77,78,79,80,45,53,69,70,71,72],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:29:43 PM\"}', 196, '0:0:0:0:0:0:0:1', '2020-05-16 22:01:43');
INSERT INTO `sys_log` VALUES (294, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":3,\"username\":\"cw\",\"name\":\"财务小王\",\"password\":\"676bd505a6d523cb00f4f79bf6dc7a2954d761a3aee0d045c21f8d6e2172a179\",\"salt\":\"2E5mvF1xjXFoY0narVz9\",\"email\":\"gy@qq.com\",\"mobile\":\"13455676543\",\"status\":1,\"roleIdList\":[3],\"createTime\":\"May 16, 2020 3:11:08 PM\",\"deptId\":3,\"deptName\":\"上海分公司\"}', 55, '0:0:0:0:0:0:0:1', '2020-05-16 22:02:20');
INSERT INTO `sys_log` VALUES (295, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"rs\",\"name\":\"人事小李\",\"password\":\"c4ade571b45f569230b7782b9d657bc6e724913d7d429bf742ad17dabf0753bc\",\"salt\":\"NF4cYNKNmsMA997exGGN\",\"email\":\"zf@qq.com\",\"mobile\":\"19877678790\",\"status\":1,\"roleIdList\":[4],\"createTime\":\"May 16, 2020 3:11:43 PM\",\"deptId\":3,\"deptName\":\"上海分公司\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-16 22:02:45');
INSERT INTO `sys_log` VALUES (296, 'wdc', '保存招聘要求', 'com.person.modules.person.controller.RecruitNeedController.save()', '{\"id\":4,\"needNum\":2,\"post\":\"王大锤添加测试招聘\",\"education\":\"王大锤添加测试招聘\",\"workTime\":1,\"demand\":\"王大锤添加测试招聘\",\"status\":0,\"recruitUserId\":2,\"needUserId\":4,\"createTime\":\"2020-05-16 22:04:03\"}', 19, '0:0:0:0:0:0:0:1', '2020-05-16 22:04:03');
INSERT INTO `sys_log` VALUES (297, 'wdc', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":5,\"userId\":4,\"education\":\"博士\",\"birth\":\"1998-05-15\",\"entryDate\":\"2020-05-14\",\"createTime\":\"2020-05-16 22:04:45\"}', 33, '0:0:0:0:0:0:0:1', '2020-05-16 22:04:45');
INSERT INTO `sys_log` VALUES (298, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":5,\"userId\":4,\"education\":\"博士\",\"birth\":\"1998-05-15\",\"entryDate\":\"2020-05-14\",\"createTime\":\"2020-05-16 22:04:45\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-16 22:05:55');
INSERT INTO `sys_log` VALUES (299, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":5,\"userId\":4,\"education\":\"博士\",\"birth\":\"1998-05-15\",\"entryDate\":\"2020-05-14\",\"createTime\":\"2020-05-16 22:04:45\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 22:06:03');
INSERT INTO `sys_log` VALUES (300, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:05:49\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 22:06:47');
INSERT INTO `sys_log` VALUES (301, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:05:49\"}', 5, '0:0:0:0:0:0:0:1', '2020-05-16 22:06:54');
INSERT INTO `sys_log` VALUES (302, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:05:49\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-16 22:06:54');
INSERT INTO `sys_log` VALUES (303, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"createTime\":\"2020-05-16 16:05:49\"}', 95, '127.0.0.1', '2020-05-16 22:08:44');
INSERT INTO `sys_log` VALUES (304, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"userType\":\"0\",\"createTime\":\"2020-05-16 16:05:49\"}', 7, '127.0.0.1', '2020-05-16 22:10:13');
INSERT INTO `sys_log` VALUES (305, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":3,\"userId\":2,\"education\":\"本科\",\"birth\":\"1999-05-12\",\"entryDate\":\"2020-05-16\",\"userType\":\"0\",\"createTime\":\"2020-05-16 16:05:49\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 22:10:43');
INSERT INTO `sys_log` VALUES (306, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":4,\"userId\":3,\"education\":\"本科\",\"birth\":\"1998-05-05\",\"entryDate\":\"2020-05-16\",\"userType\":\"0\",\"createTime\":\"2020-05-16 16:09:56\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 22:12:03');
INSERT INTO `sys_log` VALUES (307, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":5,\"userId\":4,\"education\":\"博士\",\"birth\":\"1998-05-15\",\"entryDate\":\"2020-05-14\",\"userType\":\"0\",\"createTime\":\"2020-05-16 22:04:45\"}', 5, '0:0:0:0:0:0:0:1', '2020-05-16 22:12:13');
INSERT INTO `sys_log` VALUES (308, 'wdc', '修改员工档案', 'com.person.modules.person.controller.UserDocController.update()', '{\"id\":5,\"userId\":4,\"education\":\"博士\",\"birth\":\"1998-05-15\",\"entryDate\":\"2020-05-14\",\"userType\":\"1\",\"createTime\":\"2020-05-16 22:04:45\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-16 22:12:20');
INSERT INTO `sys_log` VALUES (309, 'wdc', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":31,\"userId\":2,\"name\":\"测试计划\",\"content\":\"测试\",\"startDate\":\"2020-05-14\",\"endDate\":\"2020-05-16\",\"status\":0,\"createTime\":\"2020-05-16 08:46:17\",\"updateTime\":\"2020-05-17 07:59:06\"}', 97, '0:0:0:0:0:0:0:1', '2020-05-17 07:59:06');
INSERT INTO `sys_log` VALUES (310, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"普通用户\",\"remark\":\"普通员工\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:29:43 PM\"}', 232, '0:0:0:0:0:0:0:1', '2020-05-17 08:23:28');
INSERT INTO `sys_log` VALUES (311, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"财务专员\",\"remark\":\"财务专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,82,83,84,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,85],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:30:29 PM\"}', 61, '0:0:0:0:0:0:0:1', '2020-05-17 08:24:03');
INSERT INTO `sys_log` VALUES (312, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"人事专员\",\"remark\":\"人事专员\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[1,2,15,16,17,18,41,56,81,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66,67,68,85,44,51,73,74,75,76,52,77,78,79,80,45,53,69,70,71,72],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:31:13 PM\"}', 90, '0:0:0:0:0:0:0:1', '2020-05-17 08:25:01');
INSERT INTO `sys_log` VALUES (313, 'admin', '删除招聘要求', 'com.person.modules.person.controller.RecruitNeedController.delete()', '[2,3,4]', 7, '0:0:0:0:0:0:0:1', '2020-05-17 08:25:27');
INSERT INTO `sys_log` VALUES (314, 'admin', '删除面试', 'com.person.modules.person.controller.InterviewPlanController.delete()', '[4,5]', 6, '0:0:0:0:0:0:0:1', '2020-05-17 08:25:34');
INSERT INTO `sys_log` VALUES (315, 'admin', '删除员工档案', 'com.person.modules.person.controller.UserDocController.delete()', '[3,4,5]', 6, '0:0:0:0:0:0:0:1', '2020-05-17 08:25:41');
INSERT INTO `sys_log` VALUES (316, 'admin', '删除工资', 'com.person.modules.person.controller.SalaryRecordController.delete()', '[15,16,17]', 5, '0:0:0:0:0:0:0:1', '2020-05-17 08:25:48');
INSERT INTO `sys_log` VALUES (317, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":86,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"删除\",\"perms\":\"person:work:delete\",\"type\":2,\"orderNum\":0}', 18, '0:0:0:0:0:0:0:1', '2020-05-17 08:32:13');
INSERT INTO `sys_log` VALUES (318, 'admin', '删除考勤', 'com.person.modules.person.controller.WorkRecordController.delete()', '[18,19,20,21,22,23,24,25]', 7, '0:0:0:0:0:0:0:1', '2020-05-17 08:35:05');
INSERT INTO `sys_log` VALUES (319, 'admin', '删除考勤', 'com.person.modules.person.controller.WorkRecordController.delete()', '[17]', 5, '0:0:0:0:0:0:0:1', '2020-05-17 08:35:09');
INSERT INTO `sys_log` VALUES (320, 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[29,30,31,32,33]', 5, '0:0:0:0:0:0:0:1', '2020-05-17 08:36:59');
INSERT INTO `sys_log` VALUES (321, 'admin', '删除日报', 'com.person.modules.person.controller.WorkDailyController.delete()', '[1,2,3,4,5]', 14, '0:0:0:0:0:0:0:1', '2020-05-17 08:37:08');
INSERT INTO `sys_log` VALUES (322, 'admin', '删除申请', 'com.person.modules.person.controller.ConvertApplyController.delete()', '[3,4]', 7, '0:0:0:0:0:0:0:1', '2020-05-17 08:37:14');
INSERT INTO `sys_log` VALUES (323, 'admin', '修改角色', 'com.person.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"普通用户\",\"remark\":\"普通员工\",\"deptId\":3,\"deptName\":\"上海分公司\",\"menuIdList\":[41,56,81,42,54,62,63,64,43,46,47,48,49,50,55,58,59,60,61,57,65,66],\"deptIdList\":[1,3,4,5],\"createTime\":\"May 15, 2020 8:29:43 PM\"}', 215, '0:0:0:0:0:0:0:1', '2020-05-17 08:38:32');
INSERT INTO `sys_log` VALUES (324, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":26,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-17\",\"upTime\":\"08:38:52\",\"createTime\":\"2020-05-17 08:38:54\"}', 40, '0:0:0:0:0:0:0:1', '2020-05-17 08:38:54');
INSERT INTO `sys_log` VALUES (325, 'wdc', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":26,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-17\",\"upTime\":\"08:38:52\",\"downTime\":\"18:38:42\",\"status\":0,\"createTime\":\"2020-05-17 08:38:54\",\"updateTime\":\"2020-05-17 08:39:11\"}', 13, '0:0:0:0:0:0:0:1', '2020-05-17 08:39:11');
INSERT INTO `sys_log` VALUES (326, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":27,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"upTime\":\"09:38:42\",\"status\":1,\"createTime\":\"2020-05-17 08:39:24\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-17 08:39:24');
INSERT INTO `sys_log` VALUES (327, 'wdc', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":27,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"upTime\":\"09:38:42\",\"downTime\":\"18:38:42\",\"status\":1,\"createTime\":\"2020-05-17 08:39:24\",\"updateTime\":\"2020-05-17 08:39:35\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-17 08:39:35');
INSERT INTO `sys_log` VALUES (328, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":28,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"upTime\":\"08:39:48\",\"createTime\":\"2020-05-17 08:39:49\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-17 08:39:49');
INSERT INTO `sys_log` VALUES (329, 'wdc', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":28,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"upTime\":\"08:39:48\",\"downTime\":\"17:38:42\",\"status\":2,\"createTime\":\"2020-05-17 08:39:49\",\"updateTime\":\"2020-05-17 08:40:00\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-17 08:40:00');
INSERT INTO `sys_log` VALUES (330, 'wdc', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":29,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-14\",\"upTime\":\"08:40:18\",\"createTime\":\"2020-05-17 08:40:19\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-17 08:40:19');
INSERT INTO `sys_log` VALUES (331, 'wdc', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":29,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-14\",\"upTime\":\"08:40:18\",\"downTime\":\"20:38:42\",\"status\":3,\"createTime\":\"2020-05-17 08:40:19\",\"updateTime\":\"2020-05-17 08:40:30\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-17 08:40:30');
INSERT INTO `sys_log` VALUES (332, 'wdc', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":34,\"userId\":2,\"name\":\"本周学习Excel常用函数\",\"content\":\"1.周一学习常用计算函数；\\n2.周二学习常用统计函数\",\"startDate\":\"2020-05-18\",\"endDate\":\"2020-05-19\",\"status\":0,\"createTime\":\"2020-05-17 08:48:20\"}', 15, '0:0:0:0:0:0:0:1', '2020-05-17 08:48:20');
INSERT INTO `sys_log` VALUES (333, 'wdc', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":35,\"userId\":2,\"name\":\"完成合同格式修改\",\"content\":\"完成公司合同范本格式修改\",\"startDate\":\"2020-05-11\",\"endDate\":\"2020-05-13\",\"status\":1,\"createTime\":\"2020-05-17 08:49:10\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-17 08:49:10');
INSERT INTO `sys_log` VALUES (334, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":6,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-17\",\"workContent\":\"今日完成领导交代的各项任务\",\"progress\":100,\"createTime\":\"2020-05-17 08:49:56\"}', 20, '0:0:0:0:0:0:0:1', '2020-05-17 08:49:56');
INSERT INTO `sys_log` VALUES (335, 'wdc', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":7,\"userId\":2,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"workContent\":\"完成招标计划书的概述部分\",\"progress\":12,\"createTime\":\"2020-05-17 08:50:41\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-17 08:50:41');
INSERT INTO `sys_log` VALUES (336, 'wdc', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":5,\"applyUserId\":2,\"applyDate\":\"2020-05-17\",\"applyContent\":\"经过3个月的工作，我已经完全胜任现在的工作岗位，现申请转正，望批准。\",\"createTime\":\"2020-05-17 08:56:50\"}', 19, '0:0:0:0:0:0:0:1', '2020-05-17 08:56:50');
INSERT INTO `sys_log` VALUES (337, 'rs', '保存招聘要求', 'com.person.modules.person.controller.RecruitNeedController.save()', '{\"id\":5,\"needNum\":2,\"post\":\"经理助理\",\"education\":\"本科\",\"workTime\":2,\"demand\":\"有相关助理经验\",\"status\":0,\"recruitUserId\":4,\"needUserId\":3,\"createTime\":\"2020-05-17 08:58:47\"}', 21, '0:0:0:0:0:0:0:1', '2020-05-17 08:58:47');
INSERT INTO `sys_log` VALUES (338, 'rs', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":6,\"candidate\":\"刘琦琦\",\"candidateMobile\":\"18723409981\",\"meetTime\":\"2020-05-20 08:58:55\",\"meetUserId\":3,\"status\":0,\"createTime\":\"2020-05-17 08:59:28\"}', 12, '0:0:0:0:0:0:0:1', '2020-05-17 08:59:28');
INSERT INTO `sys_log` VALUES (339, 'rs', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":6,\"userId\":2,\"education\":\"本科\",\"birth\":\"1998-05-11\",\"entryDate\":\"2020-03-11\",\"userType\":\"0\",\"createTime\":\"2020-05-17 09:05:48\"}', 17, '0:0:0:0:0:0:0:1', '2020-05-17 09:05:48');
INSERT INTO `sys_log` VALUES (340, 'rs', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":7,\"userId\":3,\"education\":\"研究生\",\"birth\":\"1983-02-17\",\"entryDate\":\"2018-04-17\",\"userType\":\"1\",\"createTime\":\"2020-05-17 09:06:23\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-17 09:06:23');
INSERT INTO `sys_log` VALUES (341, 'rs', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":8,\"userId\":4,\"education\":\"本科\",\"birth\":\"1986-05-15\",\"entryDate\":\"2016-05-17\",\"userType\":\"1\",\"createTime\":\"2020-05-17 09:06:56\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-17 09:06:56');
INSERT INTO `sys_log` VALUES (342, 'rs', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":30,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-12\",\"upTime\":\"09:07:02\",\"status\":1,\"createTime\":\"2020-05-17 09:07:14\"}', 11, '0:0:0:0:0:0:0:1', '2020-05-17 09:07:14');
INSERT INTO `sys_log` VALUES (343, 'rs', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":30,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-12\",\"upTime\":\"09:07:02\",\"downTime\":\"18:07:02\",\"status\":1,\"createTime\":\"2020-05-17 09:07:14\",\"updateTime\":\"2020-05-17 09:07:32\"}', 16, '0:0:0:0:0:0:0:1', '2020-05-17 09:07:32');
INSERT INTO `sys_log` VALUES (344, 'rs', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":31,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"upTime\":\"08:07:02\",\"createTime\":\"2020-05-17 09:07:44\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-17 09:07:44');
INSERT INTO `sys_log` VALUES (345, 'rs', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":31,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-16\",\"upTime\":\"08:07:02\",\"downTime\":\"20:07:02\",\"status\":3,\"createTime\":\"2020-05-17 09:07:44\",\"updateTime\":\"2020-05-17 09:07:55\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-17 09:07:55');
INSERT INTO `sys_log` VALUES (346, 'rs', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":32,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"upTime\":\"08:07:02\",\"createTime\":\"2020-05-17 09:08:07\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-17 09:08:07');
INSERT INTO `sys_log` VALUES (347, 'rs', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":32,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-15\",\"upTime\":\"08:07:02\",\"downTime\":\"17:07:02\",\"status\":2,\"createTime\":\"2020-05-17 09:08:07\",\"updateTime\":\"2020-05-17 09:08:20\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-17 09:08:20');
INSERT INTO `sys_log` VALUES (348, 'rs', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":33,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-13\",\"upTime\":\"08:07:02\",\"createTime\":\"2020-05-17 09:08:33\"}', 8, '0:0:0:0:0:0:0:1', '2020-05-17 09:08:33');
INSERT INTO `sys_log` VALUES (349, 'rs', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":33,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-13\",\"upTime\":\"08:07:02\",\"downTime\":\"18:07:02\",\"status\":0,\"createTime\":\"2020-05-17 09:08:33\",\"updateTime\":\"2020-05-17 09:08:45\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-17 09:08:45');
INSERT INTO `sys_log` VALUES (350, 'rs', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":36,\"userId\":4,\"name\":\"制定4月员工培训计划\",\"content\":\"制定4月份员工室外拓展活动计划\",\"startDate\":\"2020-05-18\",\"endDate\":\"2020-05-21\",\"status\":0,\"createTime\":\"2020-05-17 09:09:42\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-17 09:09:42');
INSERT INTO `sys_log` VALUES (351, 'rs', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":8,\"userId\":4,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-17\",\"workContent\":\"完成候选人初选\",\"progress\":10,\"createTime\":\"2020-05-17 09:10:18\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-17 09:10:18');
INSERT INTO `sys_log` VALUES (352, 'rs', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":6,\"applyUserId\":4,\"applyDate\":\"2020-05-17\",\"applyContent\":\"申请转正\",\"createTime\":\"2020-05-17 09:10:40\"}', 6, '0:0:0:0:0:0:0:1', '2020-05-17 09:10:40');
INSERT INTO `sys_log` VALUES (353, 'cw', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":18,\"userId\":2,\"salaryMonth\":\"2020-05\",\"mustSalary\":6500.0,\"realitySalary\":5453.0,\"createTime\":\"2020-05-17 09:11:32\"}', 40, '0:0:0:0:0:0:0:1', '2020-05-17 09:11:32');
INSERT INTO `sys_log` VALUES (354, 'cw', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":34,\"userId\":3,\"workMonth\":\"2020-05\",\"workDate\":\"2020-05-17\",\"upTime\":\"09:12:07\",\"status\":1,\"createTime\":\"2020-05-17 09:12:08\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-17 09:12:08');
INSERT INTO `sys_log` VALUES (355, 'cw', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":19,\"userId\":3,\"salaryMonth\":\"2020-05\",\"mustSalary\":4432.0,\"realitySalary\":4411.0,\"createTime\":\"2020-05-17 09:12:42\"}', 10, '0:0:0:0:0:0:0:1', '2020-05-17 09:12:42');
INSERT INTO `sys_log` VALUES (356, 'cw', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":20,\"userId\":4,\"salaryMonth\":\"2020-05\",\"mustSalary\":5600.0,\"realitySalary\":4456.0,\"createTime\":\"2020-05-17 09:13:05\"}', 9, '0:0:0:0:0:0:0:1', '2020-05-17 09:13:05');
INSERT INTO `sys_log` VALUES (357, 'admin', '审核', 'com.person.modules.person.controller.ConvertApplyController.approval()', '{\"id\":5,\"applyUserId\":2,\"applyDate\":\"2020-05-17\",\"applyContent\":\"经过3个月的工作，我已经完全胜任现在的工作岗位，现申请转正，望批准。\",\"status\":2,\"approvalDate\":\"2020-05-17\",\"approvalUserId\":1,\"approvalResult\":2,\"approvalOpinion\":\"通过\",\"createTime\":\"2020-05-17 08:56:50\",\"updateTime\":\"2020-05-17 09:13:46\"}', 12, '0:0:0:0:0:0:0:1', '2020-05-17 09:13:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单管理' ROW_FORMAT = COMPACT;

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
INSERT INTO `sys_menu` VALUES (41, 0, '工资管理', NULL, NULL, 0, 'fa fa-btc', 3);
INSERT INTO `sys_menu` VALUES (42, 0, '考勤管理', NULL, NULL, 0, 'fa fa-calendar-check-o', 4);
INSERT INTO `sys_menu` VALUES (43, 0, '个人中心', NULL, NULL, 0, 'fa fa-street-view', 5);
INSERT INTO `sys_menu` VALUES (44, 0, '招聘管理', NULL, NULL, 0, 'fa fa-bullhorn', 1);
INSERT INTO `sys_menu` VALUES (45, 0, '档案管理', NULL, NULL, 0, 'fa fa-file-word-o', 2);
INSERT INTO `sys_menu` VALUES (46, 43, '个人计划', 'modules/person/plan.html', '', 1, 'fa fa-table', 0);
INSERT INTO `sys_menu` VALUES (47, 46, '查看', NULL, 'person:plan:list,person:plan:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, 46, '新增', NULL, 'person:plan:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (49, 46, '修改', NULL, 'person:plan:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (50, 46, '删除', NULL, 'person:plan:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (51, 44, '招聘需求', 'modules/person/need.html', '', 1, 'fa fa-bullhorn', 0);
INSERT INTO `sys_menu` VALUES (52, 44, '面试计划', 'modules/person/interview.html', '', 1, 'fa fa-users', 0);
INSERT INTO `sys_menu` VALUES (53, 45, '员工档案', 'modules/person/doc.html', NULL, 1, 'fa fa-address-card-o', 0);
INSERT INTO `sys_menu` VALUES (54, 42, '出勤记录', 'modules/person/work.html', NULL, 1, 'fa fa-check-square', 0);
INSERT INTO `sys_menu` VALUES (55, 43, '工作日报', 'modules/person/daily.html', NULL, 1, 'fa fa-file-excel-o', 0);
INSERT INTO `sys_menu` VALUES (56, 41, '工资查询', 'modules/person/salary.html', NULL, 1, 'fa fa-jpy', 0);
INSERT INTO `sys_menu` VALUES (57, 43, '转正申请', 'modules/person/apply.html', NULL, 1, 'fa fa-american-sign-language-interpreting', 0);
INSERT INTO `sys_menu` VALUES (58, 55, '查询', '', 'person:daily:list,person:daily:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (59, 55, '增加', '', 'person:daily:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (60, 55, '编辑', NULL, 'person:daily:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (61, 55, '删除', NULL, 'person:daily:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (62, 54, '查询', NULL, 'person:work:list,person:work:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (63, 54, '上班', NULL, 'person:work:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (64, 54, '下班', NULL, 'person:work:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (65, 57, '申请', NULL, 'person:apply:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (66, 57, '查看', NULL, 'person:apply:list,person:apply:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (67, 57, '删除', NULL, 'person:apply:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (68, 57, '编辑', NULL, 'person:apply:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (69, 53, '查看', NULL, 'person:doc:list,person:doc:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (70, 53, '新增', NULL, 'person:doc:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (71, 53, '编辑', NULL, 'person:doc:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (72, 53, '删除', NULL, 'person:doc:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (73, 51, '查看', NULL, 'person:need:list,person:need:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (74, 51, '新增', NULL, 'person:need:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (75, 51, '编辑', NULL, 'person:need:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (76, 51, '删除', NULL, 'person:need:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (77, 52, '查看', NULL, 'person:interview:list,person:interview:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (78, 52, '新增', NULL, 'person:interview:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (79, 52, '编辑', NULL, 'person:interview:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (80, 52, '删除', NULL, 'person:interview:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (81, 56, '查看', NULL, 'person:salary:list,person:salary:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (82, 56, '新增', NULL, 'person:salary:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (83, 56, '编辑', NULL, 'person:salary:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (84, 56, '删除', NULL, 'person:salary:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (85, 57, '审核', NULL, 'person:apply:approval', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (86, 54, '删除', NULL, 'person:work:delete', 2, NULL, 0);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '超级管理员', 1, '2020-05-14 22:28:37');
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通员工', 3, '2020-05-15 20:29:43');
INSERT INTO `sys_role` VALUES (3, '财务专员', '财务专员', 3, '2020-05-15 20:30:29');
INSERT INTO `sys_role` VALUES (4, '人事专员', '人事专员', 3, '2020-05-15 20:31:13');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色与部门对应关系' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (19, 1, 1);
INSERT INTO `sys_role_dept` VALUES (20, 1, 3);
INSERT INTO `sys_role_dept` VALUES (21, 1, 4);
INSERT INTO `sys_role_dept` VALUES (22, 1, 5);
INSERT INTO `sys_role_dept` VALUES (31, 3, 1);
INSERT INTO `sys_role_dept` VALUES (32, 3, 3);
INSERT INTO `sys_role_dept` VALUES (33, 3, 4);
INSERT INTO `sys_role_dept` VALUES (34, 3, 5);
INSERT INTO `sys_role_dept` VALUES (35, 4, 1);
INSERT INTO `sys_role_dept` VALUES (36, 4, 3);
INSERT INTO `sys_role_dept` VALUES (37, 4, 4);
INSERT INTO `sys_role_dept` VALUES (38, 4, 5);
INSERT INTO `sys_role_dept` VALUES (39, 2, 1);
INSERT INTO `sys_role_dept` VALUES (40, 2, 3);
INSERT INTO `sys_role_dept` VALUES (41, 2, 4);
INSERT INTO `sys_role_dept` VALUES (42, 2, 5);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 451 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (217, 1, 1);
INSERT INTO `sys_role_menu` VALUES (218, 1, 2);
INSERT INTO `sys_role_menu` VALUES (219, 1, 15);
INSERT INTO `sys_role_menu` VALUES (220, 1, 16);
INSERT INTO `sys_role_menu` VALUES (221, 1, 17);
INSERT INTO `sys_role_menu` VALUES (222, 1, 18);
INSERT INTO `sys_role_menu` VALUES (223, 1, 3);
INSERT INTO `sys_role_menu` VALUES (224, 1, 19);
INSERT INTO `sys_role_menu` VALUES (225, 1, 20);
INSERT INTO `sys_role_menu` VALUES (226, 1, 21);
INSERT INTO `sys_role_menu` VALUES (227, 1, 22);
INSERT INTO `sys_role_menu` VALUES (228, 1, 4);
INSERT INTO `sys_role_menu` VALUES (229, 1, 23);
INSERT INTO `sys_role_menu` VALUES (230, 1, 24);
INSERT INTO `sys_role_menu` VALUES (231, 1, 25);
INSERT INTO `sys_role_menu` VALUES (232, 1, 26);
INSERT INTO `sys_role_menu` VALUES (233, 1, 31);
INSERT INTO `sys_role_menu` VALUES (234, 1, 32);
INSERT INTO `sys_role_menu` VALUES (235, 1, 33);
INSERT INTO `sys_role_menu` VALUES (236, 1, 34);
INSERT INTO `sys_role_menu` VALUES (237, 1, 35);
INSERT INTO `sys_role_menu` VALUES (238, 1, 36);
INSERT INTO `sys_role_menu` VALUES (239, 1, 37);
INSERT INTO `sys_role_menu` VALUES (240, 1, 38);
INSERT INTO `sys_role_menu` VALUES (241, 1, 39);
INSERT INTO `sys_role_menu` VALUES (242, 1, 40);
INSERT INTO `sys_role_menu` VALUES (243, 1, 41);
INSERT INTO `sys_role_menu` VALUES (244, 1, 56);
INSERT INTO `sys_role_menu` VALUES (245, 1, 81);
INSERT INTO `sys_role_menu` VALUES (246, 1, 82);
INSERT INTO `sys_role_menu` VALUES (247, 1, 83);
INSERT INTO `sys_role_menu` VALUES (248, 1, 84);
INSERT INTO `sys_role_menu` VALUES (249, 1, 42);
INSERT INTO `sys_role_menu` VALUES (250, 1, 54);
INSERT INTO `sys_role_menu` VALUES (251, 1, 43);
INSERT INTO `sys_role_menu` VALUES (252, 1, 46);
INSERT INTO `sys_role_menu` VALUES (253, 1, 47);
INSERT INTO `sys_role_menu` VALUES (254, 1, 48);
INSERT INTO `sys_role_menu` VALUES (255, 1, 49);
INSERT INTO `sys_role_menu` VALUES (256, 1, 50);
INSERT INTO `sys_role_menu` VALUES (257, 1, 55);
INSERT INTO `sys_role_menu` VALUES (258, 1, 58);
INSERT INTO `sys_role_menu` VALUES (259, 1, 59);
INSERT INTO `sys_role_menu` VALUES (260, 1, 60);
INSERT INTO `sys_role_menu` VALUES (261, 1, 61);
INSERT INTO `sys_role_menu` VALUES (262, 1, 57);
INSERT INTO `sys_role_menu` VALUES (263, 1, 65);
INSERT INTO `sys_role_menu` VALUES (264, 1, 66);
INSERT INTO `sys_role_menu` VALUES (265, 1, 67);
INSERT INTO `sys_role_menu` VALUES (266, 1, 68);
INSERT INTO `sys_role_menu` VALUES (267, 1, 85);
INSERT INTO `sys_role_menu` VALUES (268, 1, 44);
INSERT INTO `sys_role_menu` VALUES (269, 1, 51);
INSERT INTO `sys_role_menu` VALUES (270, 1, 73);
INSERT INTO `sys_role_menu` VALUES (271, 1, 74);
INSERT INTO `sys_role_menu` VALUES (272, 1, 75);
INSERT INTO `sys_role_menu` VALUES (273, 1, 76);
INSERT INTO `sys_role_menu` VALUES (274, 1, 52);
INSERT INTO `sys_role_menu` VALUES (275, 1, 77);
INSERT INTO `sys_role_menu` VALUES (276, 1, 78);
INSERT INTO `sys_role_menu` VALUES (277, 1, 79);
INSERT INTO `sys_role_menu` VALUES (278, 1, 80);
INSERT INTO `sys_role_menu` VALUES (279, 1, 45);
INSERT INTO `sys_role_menu` VALUES (280, 1, 53);
INSERT INTO `sys_role_menu` VALUES (281, 1, 69);
INSERT INTO `sys_role_menu` VALUES (282, 1, 70);
INSERT INTO `sys_role_menu` VALUES (283, 1, 71);
INSERT INTO `sys_role_menu` VALUES (284, 1, 72);
INSERT INTO `sys_role_menu` VALUES (353, 3, 41);
INSERT INTO `sys_role_menu` VALUES (354, 3, 56);
INSERT INTO `sys_role_menu` VALUES (355, 3, 81);
INSERT INTO `sys_role_menu` VALUES (356, 3, 82);
INSERT INTO `sys_role_menu` VALUES (357, 3, 83);
INSERT INTO `sys_role_menu` VALUES (358, 3, 84);
INSERT INTO `sys_role_menu` VALUES (359, 3, 42);
INSERT INTO `sys_role_menu` VALUES (360, 3, 54);
INSERT INTO `sys_role_menu` VALUES (361, 3, 62);
INSERT INTO `sys_role_menu` VALUES (362, 3, 63);
INSERT INTO `sys_role_menu` VALUES (363, 3, 64);
INSERT INTO `sys_role_menu` VALUES (364, 3, 43);
INSERT INTO `sys_role_menu` VALUES (365, 3, 46);
INSERT INTO `sys_role_menu` VALUES (366, 3, 47);
INSERT INTO `sys_role_menu` VALUES (367, 3, 48);
INSERT INTO `sys_role_menu` VALUES (368, 3, 49);
INSERT INTO `sys_role_menu` VALUES (369, 3, 50);
INSERT INTO `sys_role_menu` VALUES (370, 3, 55);
INSERT INTO `sys_role_menu` VALUES (371, 3, 58);
INSERT INTO `sys_role_menu` VALUES (372, 3, 59);
INSERT INTO `sys_role_menu` VALUES (373, 3, 60);
INSERT INTO `sys_role_menu` VALUES (374, 3, 61);
INSERT INTO `sys_role_menu` VALUES (375, 3, 57);
INSERT INTO `sys_role_menu` VALUES (376, 3, 65);
INSERT INTO `sys_role_menu` VALUES (377, 3, 66);
INSERT INTO `sys_role_menu` VALUES (378, 3, 67);
INSERT INTO `sys_role_menu` VALUES (379, 3, 68);
INSERT INTO `sys_role_menu` VALUES (380, 3, 85);
INSERT INTO `sys_role_menu` VALUES (381, 4, 1);
INSERT INTO `sys_role_menu` VALUES (382, 4, 2);
INSERT INTO `sys_role_menu` VALUES (383, 4, 15);
INSERT INTO `sys_role_menu` VALUES (384, 4, 16);
INSERT INTO `sys_role_menu` VALUES (385, 4, 17);
INSERT INTO `sys_role_menu` VALUES (386, 4, 18);
INSERT INTO `sys_role_menu` VALUES (387, 4, 41);
INSERT INTO `sys_role_menu` VALUES (388, 4, 56);
INSERT INTO `sys_role_menu` VALUES (389, 4, 81);
INSERT INTO `sys_role_menu` VALUES (390, 4, 42);
INSERT INTO `sys_role_menu` VALUES (391, 4, 54);
INSERT INTO `sys_role_menu` VALUES (392, 4, 62);
INSERT INTO `sys_role_menu` VALUES (393, 4, 63);
INSERT INTO `sys_role_menu` VALUES (394, 4, 64);
INSERT INTO `sys_role_menu` VALUES (395, 4, 43);
INSERT INTO `sys_role_menu` VALUES (396, 4, 46);
INSERT INTO `sys_role_menu` VALUES (397, 4, 47);
INSERT INTO `sys_role_menu` VALUES (398, 4, 48);
INSERT INTO `sys_role_menu` VALUES (399, 4, 49);
INSERT INTO `sys_role_menu` VALUES (400, 4, 50);
INSERT INTO `sys_role_menu` VALUES (401, 4, 55);
INSERT INTO `sys_role_menu` VALUES (402, 4, 58);
INSERT INTO `sys_role_menu` VALUES (403, 4, 59);
INSERT INTO `sys_role_menu` VALUES (404, 4, 60);
INSERT INTO `sys_role_menu` VALUES (405, 4, 61);
INSERT INTO `sys_role_menu` VALUES (406, 4, 57);
INSERT INTO `sys_role_menu` VALUES (407, 4, 65);
INSERT INTO `sys_role_menu` VALUES (408, 4, 66);
INSERT INTO `sys_role_menu` VALUES (409, 4, 67);
INSERT INTO `sys_role_menu` VALUES (410, 4, 68);
INSERT INTO `sys_role_menu` VALUES (411, 4, 85);
INSERT INTO `sys_role_menu` VALUES (412, 4, 44);
INSERT INTO `sys_role_menu` VALUES (413, 4, 51);
INSERT INTO `sys_role_menu` VALUES (414, 4, 73);
INSERT INTO `sys_role_menu` VALUES (415, 4, 74);
INSERT INTO `sys_role_menu` VALUES (416, 4, 75);
INSERT INTO `sys_role_menu` VALUES (417, 4, 76);
INSERT INTO `sys_role_menu` VALUES (418, 4, 52);
INSERT INTO `sys_role_menu` VALUES (419, 4, 77);
INSERT INTO `sys_role_menu` VALUES (420, 4, 78);
INSERT INTO `sys_role_menu` VALUES (421, 4, 79);
INSERT INTO `sys_role_menu` VALUES (422, 4, 80);
INSERT INTO `sys_role_menu` VALUES (423, 4, 45);
INSERT INTO `sys_role_menu` VALUES (424, 4, 53);
INSERT INTO `sys_role_menu` VALUES (425, 4, 69);
INSERT INTO `sys_role_menu` VALUES (426, 4, 70);
INSERT INTO `sys_role_menu` VALUES (427, 4, 71);
INSERT INTO `sys_role_menu` VALUES (428, 4, 72);
INSERT INTO `sys_role_menu` VALUES (429, 2, 41);
INSERT INTO `sys_role_menu` VALUES (430, 2, 56);
INSERT INTO `sys_role_menu` VALUES (431, 2, 81);
INSERT INTO `sys_role_menu` VALUES (432, 2, 42);
INSERT INTO `sys_role_menu` VALUES (433, 2, 54);
INSERT INTO `sys_role_menu` VALUES (434, 2, 62);
INSERT INTO `sys_role_menu` VALUES (435, 2, 63);
INSERT INTO `sys_role_menu` VALUES (436, 2, 64);
INSERT INTO `sys_role_menu` VALUES (437, 2, 43);
INSERT INTO `sys_role_menu` VALUES (438, 2, 46);
INSERT INTO `sys_role_menu` VALUES (439, 2, 47);
INSERT INTO `sys_role_menu` VALUES (440, 2, 48);
INSERT INTO `sys_role_menu` VALUES (441, 2, 49);
INSERT INTO `sys_role_menu` VALUES (442, 2, 50);
INSERT INTO `sys_role_menu` VALUES (443, 2, 55);
INSERT INTO `sys_role_menu` VALUES (444, 2, 58);
INSERT INTO `sys_role_menu` VALUES (445, 2, 59);
INSERT INTO `sys_role_menu` VALUES (446, 2, 60);
INSERT INTO `sys_role_menu` VALUES (447, 2, 61);
INSERT INTO `sys_role_menu` VALUES (448, 2, 57);
INSERT INTO `sys_role_menu` VALUES (449, 2, 65);
INSERT INTO `sys_role_menu` VALUES (450, 2, 66);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', 1, 1, '2016-11-11 11:11:11', '管理员');
INSERT INTO `sys_user` VALUES (2, 'wdc', 'a977e04a469ee5b213c31dc60d03f75de2bfeda871f465c723c304313f748e7d', '1sbkoGf5x7Q5lqxvCs5I', '1111@qq.com', '18651234456', 1, 3, '2020-05-15 22:29:02', '王大锤');
INSERT INTO `sys_user` VALUES (3, 'cw', '676bd505a6d523cb00f4f79bf6dc7a2954d761a3aee0d045c21f8d6e2172a179', '2E5mvF1xjXFoY0narVz9', 'gy@qq.com', '13455676543', 1, 3, '2020-05-16 15:11:08', '财务小王');
INSERT INTO `sys_user` VALUES (4, 'rs', 'c4ade571b45f569230b7782b9d657bc6e724913d7d429bf742ad17dabf0753bc', 'NF4cYNKNmsMA997exGGN', 'zf@qq.com', '19877678790', 1, 3, '2020-05-16 15:11:43', '人事小李');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2, 2);
INSERT INTO `sys_user_role` VALUES (5, 3, 3);
INSERT INTO `sys_user_role` VALUES (6, 4, 4);

SET FOREIGN_KEY_CHECKS = 1;
