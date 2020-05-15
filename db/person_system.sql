/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : person_system

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2020-05-15 14:14:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for b_convert_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_convert_apply`;
CREATE TABLE `b_convert_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `apply_user_id` bigint(20) DEFAULT NULL COMMENT '申请人',
  `apply_date` varchar(24) DEFAULT NULL COMMENT '申请日期',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `approval_date` varchar(24) DEFAULT NULL COMMENT '审批日期',
  `approval_user_id` varchar(24) DEFAULT NULL COMMENT '审批人',
  `approval_result` int(11) DEFAULT NULL COMMENT '审批结果',
  `approval_opinion` varchar(64) DEFAULT NULL COMMENT '审批意见',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `apply_content` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='转正申请';

-- ----------------------------
-- Records of b_convert_apply
-- ----------------------------
INSERT INTO `b_convert_apply` VALUES ('1', null, '1', '0', null, null, null, null, '2020-05-15 13:53:45', null, null);

-- ----------------------------
-- Table structure for b_interview_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_interview_plan`;
CREATE TABLE `b_interview_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `candidate` varchar(64) DEFAULT NULL COMMENT '候选人姓名',
  `candidate_mobile` varchar(11) DEFAULT NULL COMMENT '候选人电话',
  `meet_time` varchar(24) DEFAULT NULL COMMENT '面试时间',
  `meet_user_id` bigint(20) DEFAULT NULL COMMENT '面试官',
  `status` int(11) DEFAULT '0' COMMENT '面试结果',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='面试计划';

-- ----------------------------
-- Records of b_interview_plan
-- ----------------------------
INSERT INTO `b_interview_plan` VALUES ('1', '2', null, '3', '4', '0', '2020-05-15 13:49:31', null);
INSERT INTO `b_interview_plan` VALUES ('2', null, '22', '33', '44', '0', '2020-05-15 13:50:47', null);
INSERT INTO `b_interview_plan` VALUES ('3', '111', '222', '333', '444', '0', '2020-05-15 13:51:38', null);

-- ----------------------------
-- Table structure for b_recruit_need
-- ----------------------------
DROP TABLE IF EXISTS `b_recruit_need`;
CREATE TABLE `b_recruit_need` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dept` varchar(16) DEFAULT NULL COMMENT '需求部门',
  `need_num` int(11) DEFAULT NULL COMMENT '需求人数',
  `post` varchar(16) DEFAULT NULL COMMENT '岗位类型',
  `education` varchar(16) DEFAULT NULL COMMENT '学历要求',
  `work_time` int(11) DEFAULT NULL COMMENT '工作年限要求',
  `demand` varchar(128) DEFAULT NULL COMMENT '招聘要求',
  `status` int(11) DEFAULT NULL COMMENT '需求状态',
  `recruit_user_id` bigint(20) DEFAULT NULL COMMENT '招聘负责人',
  `need_user_id` bigint(20) DEFAULT NULL COMMENT '需求负责人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='招聘需求';

-- ----------------------------
-- Records of b_recruit_need
-- ----------------------------

-- ----------------------------
-- Table structure for b_salary_record
-- ----------------------------
DROP TABLE IF EXISTS `b_salary_record`;
CREATE TABLE `b_salary_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `salary_month` varchar(16) DEFAULT NULL COMMENT '工资月份',
  `must_salary` float DEFAULT NULL COMMENT '应发工资',
  `reality_salary` float DEFAULT NULL COMMENT '实发工资',
  `fund_amount` float DEFAULT NULL COMMENT '公积金扣款',
  `tax_amount` float DEFAULT NULL COMMENT '个税扣款',
  `medical_amount` float DEFAULT NULL COMMENT '医保扣款',
  `pension_amount` float DEFAULT NULL COMMENT '养老扣款',
  `injured_amount` float DEFAULT NULL COMMENT '工伤扣款',
  `birth_amount` float DEFAULT NULL COMMENT '生育扣款',
  `unemployment_amount` float DEFAULT NULL COMMENT '失业扣款',
  `leave_amount` float DEFAULT NULL COMMENT '请假扣款',
  `late_amount` float DEFAULT NULL COMMENT '迟到扣款',
  `base_amount` float DEFAULT NULL COMMENT '基本工资',
  `work_amount` float DEFAULT NULL COMMENT '工龄工资',
  `overtime_amount` float DEFAULT NULL COMMENT '加班费',
  `merits_amount` float DEFAULT NULL COMMENT '绩效奖金',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='工资记录';

-- ----------------------------
-- Records of b_salary_record
-- ----------------------------
INSERT INTO `b_salary_record` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2020-05-15 13:53:22', null);

-- ----------------------------
-- Table structure for b_user_doc
-- ----------------------------
DROP TABLE IF EXISTS `b_user_doc`;
CREATE TABLE `b_user_doc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '员工id',
  `education` varchar(16) DEFAULT NULL COMMENT '学历',
  `birth` varchar(16) DEFAULT NULL COMMENT '生日',
  `entry_date` varchar(16) DEFAULT NULL COMMENT '入职日期',
  `user_type` varchar(16) DEFAULT NULL COMMENT '员工类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='员工档案';

-- ----------------------------
-- Records of b_user_doc
-- ----------------------------
INSERT INTO `b_user_doc` VALUES ('1', '1', '2', '3', '4', null, '2020-05-15 13:51:50', null);

-- ----------------------------
-- Table structure for b_user_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_user_plan`;
CREATE TABLE `b_user_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '员工',
  `name` varchar(64) DEFAULT '0' COMMENT '计划名称',
  `start_date` varchar(16) DEFAULT NULL COMMENT '开始日期',
  `end_date` varchar(16) DEFAULT NULL COMMENT '结束日期',
  `status` int(11) DEFAULT '0' COMMENT '计划状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='个人计划';

-- ----------------------------
-- Records of b_user_plan
-- ----------------------------
INSERT INTO `b_user_plan` VALUES ('29', '1', '本周看一本书', '2020-05-11', '2020-05-17', '0', '2020-05-15 12:53:18', null);

-- ----------------------------
-- Table structure for b_work_daily
-- ----------------------------
DROP TABLE IF EXISTS `b_work_daily`;
CREATE TABLE `b_work_daily` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(24) DEFAULT NULL COMMENT '工作日期',
  `work_content` varchar(1024) NOT NULL COMMENT '工作内容',
  `progress` int(11) DEFAULT NULL COMMENT '完成进度',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='工作日报';

-- ----------------------------
-- Records of b_work_daily
-- ----------------------------
INSERT INTO `b_work_daily` VALUES ('26', '1', '2020-05-01', '防守打法', '1', '2020-05-15 13:07:35', null);

-- ----------------------------
-- Table structure for b_work_record
-- ----------------------------
DROP TABLE IF EXISTS `b_work_record`;
CREATE TABLE `b_work_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(16) DEFAULT NULL COMMENT '工作日期',
  `up_time` varchar(8) DEFAULT NULL COMMENT '上班时间',
  `down_time` varchar(8) DEFAULT NULL COMMENT '下班时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='出勤记录';

-- ----------------------------
-- Records of b_work_record
-- ----------------------------
INSERT INTO `b_work_record` VALUES ('1', '1', '2020-05-15', '13:14:23', '21:23:20', '0', null, null);
INSERT INTO `b_work_record` VALUES ('2', '1', '2020-05-08', '13:26:11', '13:26:13', '0', null, null);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `param_key` (`param_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '江苏富梓民轮胎厂', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '长沙分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '上海分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`,`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '性别', 'sex', '0', '女', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '性别', 'sex', '1', '男', '1', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '性别', 'sex', '2', '未知', '3', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2020-05-10 13:16:24');
INSERT INTO `sys_log` VALUES ('2', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '14', '0', '0:0:0:0:0:0:0:1', '2020-05-10 13:18:22');
INSERT INTO `sys_log` VALUES ('3', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"员工管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":1}', '24', '0:0:0:0:0:0:0:1', '2020-05-10 15:43:45');
INSERT INTO `sys_log` VALUES ('4', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"cny\",\"orderNum\":0}', '17', '0:0:0:0:0:0:0:1', '2020-05-10 18:04:39');
INSERT INTO `sys_log` VALUES ('5', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"http://www.fontawesome.com.cn/faicons/\",\"orderNum\":0}', '16', '0:0:0:0:0:0:0:1', '2020-05-10 18:05:31');
INSERT INTO `sys_log` VALUES ('6', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-10 18:05:51');
INSERT INTO `sys_log` VALUES ('7', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":1}', '6', '0:0:0:0:0:0:0:1', '2020-05-10 18:06:06');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":10}', '7', '0:0:0:0:0:0:0:1', '2020-05-10 18:06:53');
INSERT INTO `sys_log` VALUES ('9', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":42,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"考勤管理\",\"type\":0,\"icon\":\"fa fa-calendar-check-o\",\"orderNum\":2}', '7', '0:0:0:0:0:0:0:1', '2020-05-10 18:09:23');
INSERT INTO `sys_log` VALUES ('10', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"orderNum\":3}', '20', '0:0:0:0:0:0:0:1', '2020-05-10 21:52:11');
INSERT INTO `sys_log` VALUES ('11', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"orderNum\":4}', '8', '0:0:0:0:0:0:0:1', '2020-05-10 21:52:36');
INSERT INTO `sys_log` VALUES ('12', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":4}', '8', '0:0:0:0:0:0:0:1', '2020-05-10 21:53:19');
INSERT INTO `sys_log` VALUES ('13', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":5}', '14', '0:0:0:0:0:0:0:1', '2020-05-10 21:53:28');
INSERT INTO `sys_log` VALUES ('14', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"orderNum\":1}', '6', '0:0:0:0:0:0:0:1', '2020-05-10 21:53:52');
INSERT INTO `sys_log` VALUES ('15', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"\",\"orderNum\":2}', '6', '0:0:0:0:0:0:0:1', '2020-05-10 21:54:12');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-jpy\",\"orderNum\":3}', '7', '0:0:0:0:0:0:0:1', '2020-05-10 21:54:34');
INSERT INTO `sys_log` VALUES ('17', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":42,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"考勤管理\",\"type\":0,\"icon\":\"fa fa-calendar-check-o\",\"orderNum\":4}', '6', '0:0:0:0:0:0:0:1', '2020-05-10 21:54:41');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"orderNum\":5}', '6', '0:0:0:0:0:0:0:1', '2020-05-10 21:54:50');
INSERT INTO `sys_log` VALUES ('19', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":46,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人计划\",\"url\":\"/person/plan/list\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', '23', '0:0:0:0:0:0:0:1', '2020-05-11 22:05:40');
INSERT INTO `sys_log` VALUES ('20', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"/person/plan/list\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', '17', '0:0:0:0:0:0:0:1', '2020-05-11 22:06:23');
INSERT INTO `sys_log` VALUES ('21', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"/person/plan.html\",\"perms\":\"person:plan:list\",\"type\":1,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-11 22:07:12');
INSERT INTO `sys_log` VALUES ('22', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"modules/person/plan.html\",\"perms\":\"\",\"type\":1,\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-11 22:07:47');
INSERT INTO `sys_log` VALUES ('23', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":47,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"查看\",\"perms\":\"person:plan:list,person:plan:info\",\"type\":2,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-11 22:09:06');
INSERT INTO `sys_log` VALUES ('24', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":48,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"新增\",\"perms\":\"person:plan:save\",\"type\":2,\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-11 22:09:45');
INSERT INTO `sys_log` VALUES ('25', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":49,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"修改\",\"perms\":\"person:plan:update\",\"type\":2,\"orderNum\":0}', '5', '0:0:0:0:0:0:0:1', '2020-05-11 22:10:25');
INSERT INTO `sys_log` VALUES ('26', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":50,\"parentId\":46,\"parentName\":\"个人计划\",\"name\":\"删除\",\"perms\":\"person:plan:delete\",\"type\":2,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-11 22:10:57');
INSERT INTO `sys_log` VALUES ('27', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":1,\"name\":\"测试\",\"startDate\":\"2020-05-13\",\"endDate\":\"2020-05-14\",\"status\":0}', '101', '0:0:0:0:0:0:0:1', '2020-05-12 22:43:55');
INSERT INTO `sys_log` VALUES ('28', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[1]', '15', '0:0:0:0:0:0:0:1', '2020-05-12 22:52:13');
INSERT INTO `sys_log` VALUES ('29', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":2,\"name\":\"萨达\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-13\",\"status\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-12 22:52:35');
INSERT INTO `sys_log` VALUES ('30', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":3,\"userId\":1,\"name\":\"阿斯顿发光会\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-12\",\"status\":0,\"createTime\":\"2020-05-12 22:54:11\"}', '101', '0:0:0:0:0:0:0:1', '2020-05-12 22:54:11');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":2,\"name\":\"萨达\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-13\",\"status\":1}', '97', '0:0:0:0:0:0:0:1', '2020-05-13 07:20:07');
INSERT INTO `sys_log` VALUES ('32', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":3,\"userId\":1,\"name\":\"阿斯顿发光会\",\"startDate\":\"2012-09-12\",\"endDate\":\"2012-09-12\",\"status\":1,\"createTime\":\"2020-05-12 22:54:11\"}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 07:20:21');
INSERT INTO `sys_log` VALUES ('33', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":51,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"照片需求\",\"url\":\"/person/apply/apply.html\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":1,\"orderNum\":0}', '11', '0:0:0:0:0:0:0:1', '2020-05-13 07:32:11');
INSERT INTO `sys_log` VALUES ('34', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/apply/apply.html\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":1,\"orderNum\":0}', '24', '0:0:0:0:0:0:0:1', '2020-05-13 07:32:41');
INSERT INTO `sys_log` VALUES ('35', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":52,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"面试计划\",\"url\":\"person/interview/interview.html\",\"perms\":\"\",\"type\":1,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 07:34:22');
INSERT INTO `sys_log` VALUES ('36', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":53,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-13 07:34:57');
INSERT INTO `sys_log` VALUES ('37', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-13 07:36:07');
INSERT INTO `sys_log` VALUES ('38', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"工作日报\",\"url\":\"person/daily/daily.html\",\"type\":1,\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 07:38:09');
INSERT INTO `sys_log` VALUES ('39', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":53,\"parentId\":45,\"parentName\":\"档案管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"orderNum\":0}', '12', '0:0:0:0:0:0:0:1', '2020-05-13 07:38:53');
INSERT INTO `sys_log` VALUES ('40', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":56,\"parentId\":41,\"parentName\":\"工资管理\",\"name\":\"工资查询\",\"url\":\"person/salary/salary.html\",\"type\":1,\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 07:40:16');
INSERT INTO `sys_log` VALUES ('41', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":57,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"转正申请\",\"url\":\"person/apply/apply.html\",\"type\":1,\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 07:41:19');
INSERT INTO `sys_log` VALUES ('42', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/need/need.html\",\"perms\":\"person:need:list,person:need:info\",\"type\":1,\"orderNum\":0}', '17', '0:0:0:0:0:0:0:1', '2020-05-13 07:42:21');
INSERT INTO `sys_log` VALUES ('43', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"招聘需求\",\"url\":\"/person/need/need.html\",\"perms\":\"person:need:list,person:need:info\",\"type\":1,\"icon\":\"fa fa-bullhorn\",\"orderNum\":0}', '19', '0:0:0:0:0:0:0:1', '2020-05-13 20:33:35');
INSERT INTO `sys_log` VALUES ('44', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"招聘管理\",\"type\":0,\"icon\":\"fa fa-bullhorn\",\"orderNum\":1}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 20:33:52');
INSERT INTO `sys_log` VALUES ('45', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"档案管理\",\"type\":0,\"icon\":\"fa fa-file-word-o\",\"orderNum\":2}', '7', '0:0:0:0:0:0:0:1', '2020-05-13 20:35:54');
INSERT INTO `sys_log` VALUES ('46', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"个人中心\",\"type\":0,\"icon\":\"fa fa-street-view\",\"orderNum\":5}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 20:36:48');
INSERT INTO `sys_log` VALUES ('47', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":56,\"parentId\":41,\"parentName\":\"工资管理\",\"name\":\"工资查询\",\"url\":\"person/salary/salary.html\",\"type\":1,\"icon\":\"fa fa-jpy\",\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 20:38:22');
INSERT INTO `sys_log` VALUES ('48', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"工资管理\",\"type\":0,\"icon\":\"fa fa-btc\",\"orderNum\":3}', '4', '0:0:0:0:0:0:0:1', '2020-05-13 20:45:16');
INSERT INTO `sys_log` VALUES ('49', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-btc\",\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 20:45:52');
INSERT INTO `sys_log` VALUES ('50', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-check-squar\",\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-13 20:46:14');
INSERT INTO `sys_log` VALUES ('51', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":54,\"parentId\":42,\"parentName\":\"考勤管理\",\"name\":\"出勤记录\",\"url\":\"person/work/work.html\",\"type\":1,\"icon\":\"fa fa-check-square\",\"orderNum\":0}', '15', '0:0:0:0:0:0:0:1', '2020-05-13 20:46:32');
INSERT INTO `sys_log` VALUES ('52', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":52,\"parentId\":44,\"parentName\":\"招聘管理\",\"name\":\"面试计划\",\"url\":\"person/interview/interview.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-users\",\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-13 20:47:53');
INSERT INTO `sys_log` VALUES ('53', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"工作日报\",\"url\":\"person/daily/daily.html\",\"type\":1,\"icon\":\"fa fa-file-excel-o\",\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-13 20:49:17');
INSERT INTO `sys_log` VALUES ('54', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"个人计划\",\"url\":\"modules/person/plan.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-table\",\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-13 20:50:00');
INSERT INTO `sys_log` VALUES ('55', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":57,\"parentId\":43,\"parentName\":\"个人中心\",\"name\":\"转正申请\",\"url\":\"person/apply/apply.html\",\"type\":1,\"icon\":\"fa fa-american-sign-language-interpreting\",\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 20:50:34');
INSERT INTO `sys_log` VALUES ('56', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":53,\"parentId\":45,\"parentName\":\"档案管理\",\"name\":\"员工档案\",\"url\":\"person/doc/doc.html\",\"type\":1,\"icon\":\"fa fa-address-card-o\",\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 20:51:37');
INSERT INTO `sys_log` VALUES ('57', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":58,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"查询\",\"url\":\"person/daily/list\",\"perms\":\"person:daily:list,person:daily:list:info\",\"type\":1,\"orderNum\":0}', '18', '0:0:0:0:0:0:0:1', '2020-05-13 21:03:15');
INSERT INTO `sys_log` VALUES ('58', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":58,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"查询\",\"url\":\"person/daily/list\",\"perms\":\"person:daily:list,person:daily:list:info\",\"type\":2,\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 21:03:40');
INSERT INTO `sys_log` VALUES ('59', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":59,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"增加\",\"url\":\"/person/daily/add\",\"perms\":\"person:daily:add\",\"type\":2,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 21:13:03');
INSERT INTO `sys_log` VALUES ('60', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":60,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"编辑\",\"perms\":\"person:daily:update\",\"type\":2,\"orderNum\":0}', '10', '0:0:0:0:0:0:0:1', '2020-05-13 21:13:47');
INSERT INTO `sys_log` VALUES ('61', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":61,\"parentId\":55,\"parentName\":\"工作日报\",\"name\":\"删除\",\"perms\":\"person:daily:delete\",\"type\":2,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 21:14:14');
INSERT INTO `sys_log` VALUES ('62', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":55,\"parentId\":43,\"parentName\":\"工作日报\",\"name\":\"工作日报\",\"url\":\"modules/person/daily.html\",\"type\":1,\"icon\":\"fa fa-file-excel-o\",\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2020-05-13 21:15:03');
INSERT INTO `sys_log` VALUES ('63', 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":59,\"parentId\":55,\"name\":\"增加\",\"url\":\"\",\"perms\":\"person:daily:save\",\"type\":2,\"orderNum\":0}', '15', '0:0:0:0:0:0:0:1', '2020-05-13 21:30:45');
INSERT INTO `sys_log` VALUES ('64', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":1,\"workContent\":\"dsf \",\"progress\":0}', '91', '0:0:0:0:0:0:0:1', '2020-05-13 21:31:01');
INSERT INTO `sys_log` VALUES ('65', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":2,\"workContent\":\"dsf \",\"progress\":0}', '7', '0:0:0:0:0:0:0:1', '2020-05-13 21:31:19');
INSERT INTO `sys_log` VALUES ('66', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":3,\"workContent\":\"waerdf\",\"progress\":1}', '5', '0:0:0:0:0:0:0:1', '2020-05-13 21:33:37');
INSERT INTO `sys_log` VALUES ('67', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":4,\"workContent\":\"12waesr\",\"progress\":1}', '7', '0:0:0:0:0:0:0:1', '2020-05-13 21:37:38');
INSERT INTO `sys_log` VALUES ('68', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":5,\"workContent\":\"rtstdf\",\"progress\":1}', '8', '0:0:0:0:0:0:0:1', '2020-05-13 21:42:05');
INSERT INTO `sys_log` VALUES ('69', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":6,\"workContent\":\"rtstdf\",\"progress\":1}', '25622', '0:0:0:0:0:0:0:1', '2020-05-13 21:46:27');
INSERT INTO `sys_log` VALUES ('70', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":7,\"workContent\":\"rtstdf\",\"progress\":1}', '126214', '0:0:0:0:0:0:0:1', '2020-05-13 21:50:49');
INSERT INTO `sys_log` VALUES ('71', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":8,\"userId\":1,\"workContent\":\"111111111\",\"progress\":222222}', '222211', '0:0:0:0:0:0:0:1', '2020-05-14 20:45:51');
INSERT INTO `sys_log` VALUES ('72', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":9,\"userId\":1,\"workContent\":\"11\",\"progress\":11}', '91', '0:0:0:0:0:0:0:1', '2020-05-14 22:20:40');
INSERT INTO `sys_log` VALUES ('73', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":10,\"userId\":1,\"workDate\":\"111\",\"workContent\":\"111\",\"progress\":111}', '7', '0:0:0:0:0:0:0:1', '2020-05-14 22:26:33');
INSERT INTO `sys_log` VALUES ('74', 'admin', '保存角色', 'com.person.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"deptId\":1,\"deptName\":\"江苏富梓民轮胎厂\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,31,32,33,34,35,36,37,38,39,40,41,56,42,54,43,46,47,48,49,50,55,58,59,60,61,57,44,51,52,45,53],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"May 14, 2020 10:28:37 PM\"}', '132', '0:0:0:0:0:0:0:1', '2020-05-14 22:28:37');
INSERT INTO `sys_log` VALUES ('75', 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"name\":\"管理员\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@renren.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"江苏富梓民轮胎厂\"}', '59', '0:0:0:0:0:0:0:1', '2020-05-14 22:28:51');
INSERT INTO `sys_log` VALUES ('76', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":11,\"userId\":1,\"workDate\":\"22\",\"workContent\":\"22\",\"progress\":33}', '4', '0:0:0:0:0:0:0:1', '2020-05-14 22:31:53');
INSERT INTO `sys_log` VALUES ('77', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":12,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', '6', '0:0:0:0:0:0:0:1', '2020-05-14 22:34:31');
INSERT INTO `sys_log` VALUES ('78', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":13,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', '6', '0:0:0:0:0:0:0:1', '2020-05-14 22:34:33');
INSERT INTO `sys_log` VALUES ('79', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":14,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', '8', '0:0:0:0:0:0:0:1', '2020-05-14 22:34:40');
INSERT INTO `sys_log` VALUES ('80', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":15,\"userId\":1,\"workContent\":\"挨罚\",\"progress\":12}', '9', '0:0:0:0:0:0:0:1', '2020-05-14 22:35:26');
INSERT INTO `sys_log` VALUES ('81', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":16,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', '99', '0:0:0:0:0:0:0:1', '2020-05-15 06:41:21');
INSERT INTO `sys_log` VALUES ('82', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":17,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', '7', '0:0:0:0:0:0:0:1', '2020-05-15 06:41:43');
INSERT INTO `sys_log` VALUES ('83', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":18,\"userId\":1,\"workDate\":\"232\",\"workContent\":\"3\",\"progress\":4}', '8', '0:0:0:0:0:0:0:1', '2020-05-15 06:41:49');
INSERT INTO `sys_log` VALUES ('84', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":19,\"userId\":1,\"workContent\":\"萨达\",\"progress\":1}', '92', '0:0:0:0:0:0:0:1', '2020-05-15 06:46:32');
INSERT INTO `sys_log` VALUES ('85', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":20,\"userId\":1,\"workContent\":\"电饭锅\",\"progress\":1}', '9', '0:0:0:0:0:0:0:1', '2020-05-15 06:47:15');
INSERT INTO `sys_log` VALUES ('86', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":21,\"userId\":1,\"workContent\":\"萨达\",\"progress\":2}', '7', '0:0:0:0:0:0:0:1', '2020-05-15 06:54:31');
INSERT INTO `sys_log` VALUES ('87', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":22,\"userId\":1,\"workContent\":\"33\",\"progress\":11}', '8', '0:0:0:0:0:0:0:1', '2020-05-15 06:55:47');
INSERT INTO `sys_log` VALUES ('88', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":23,\"userId\":1,\"workContent\":\"强娃儿\",\"progress\":0,\"createTime\":\"2020-05-15 06:57:06\"}', '104', '0:0:0:0:0:0:0:1', '2020-05-15 06:57:06');
INSERT INTO `sys_log` VALUES ('89', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":24,\"userId\":1,\"workDate\":\"66666\",\"workContent\":\"555555555\",\"progress\":444,\"createTime\":\"2020-05-15 07:08:38\"}', '9', '0:0:0:0:0:0:0:1', '2020-05-15 07:08:38');
INSERT INTO `sys_log` VALUES ('90', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":25,\"userId\":1,\"workDate\":\"66666\",\"workContent\":\"555555555\",\"progress\":444,\"createTime\":\"2020-05-15 07:08:42\"}', '7', '0:0:0:0:0:0:0:1', '2020-05-15 07:08:42');
INSERT INTO `sys_log` VALUES ('91', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[2,3]', '11', '0:0:0:0:0:0:0:1', '2020-05-15 07:09:16');
INSERT INTO `sys_log` VALUES ('92', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":4,\"userId\":1,\"name\":\"今天中午开会\",\"status\":0,\"createTime\":\"2020-05-15 07:09:39\"}', '16', '0:0:0:0:0:0:0:1', '2020-05-15 07:09:39');
INSERT INTO `sys_log` VALUES ('93', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":5,\"userId\":1,\"name\":\"收到咨询发\",\"status\":0,\"createTime\":\"2020-05-15 07:11:08\"}', '10321', '0:0:0:0:0:0:0:1', '2020-05-15 07:11:08');
INSERT INTO `sys_log` VALUES ('94', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":6,\"userId\":1,\"name\":\"森岛帆高\",\"status\":0,\"createTime\":\"2020-05-15 07:17:38\"}', '11177', '0:0:0:0:0:0:0:1', '2020-05-15 07:17:38');
INSERT INTO `sys_log` VALUES ('95', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":7,\"userId\":1,\"name\":\"暗室逢灯\",\"status\":0,\"createTime\":\"2020-05-15 07:19:16\"}', '8', '0:0:0:0:0:0:0:1', '2020-05-15 07:19:16');
INSERT INTO `sys_log` VALUES ('96', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":4,\"userId\":1,\"name\":\"今天中午开会\",\"status\":0,\"createTime\":\"2020-05-15 07:09:39\"}', '15', '0:0:0:0:0:0:0:1', '2020-05-15 07:19:42');
INSERT INTO `sys_log` VALUES ('97', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":8,\"userId\":1,\"name\":\"ASdf\",\"startDate\":\"s\",\"status\":0,\"createTime\":\"2020-05-15 07:23:11\"}', '7', '0:0:0:0:0:0:0:1', '2020-05-15 07:23:11');
INSERT INTO `sys_log` VALUES ('98', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":9,\"userId\":1,\"name\":\"水电工\",\"status\":0,\"createTime\":\"2020-05-15 07:23:22\"}', '6', '0:0:0:0:0:0:0:1', '2020-05-15 07:23:22');
INSERT INTO `sys_log` VALUES ('99', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[4,5,6,7,8,9]', '97', '0:0:0:0:0:0:0:1', '2020-05-15 09:07:44');
INSERT INTO `sys_log` VALUES ('100', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":10,\"userId\":1,\"name\":\"水电费  \",\"status\":0,\"createTime\":\"2020-05-15 09:12:14\"}', '19961', '0:0:0:0:0:0:0:1', '2020-05-15 09:12:14');
INSERT INTO `sys_log` VALUES ('101', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":11,\"userId\":1,\"name\":\"水电费\",\"endDate\":\"2020-05-01\",\"status\":0,\"createTime\":\"2020-05-15 09:19:11\"}', '104299', '0:0:0:0:0:0:0:1', '2020-05-15 09:19:11');
INSERT INTO `sys_log` VALUES ('102', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[10,11]', '89', '0:0:0:0:0:0:0:1', '2020-05-15 09:19:19');
INSERT INTO `sys_log` VALUES ('103', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\"}', '76', '0:0:0:0:0:0:0:1', '2020-05-15 09:19:52');
INSERT INTO `sys_log` VALUES ('104', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":13,\"userId\":1,\"name\":\"都市风光电饭锅\",\"status\":0,\"createTime\":\"2020-05-15 09:21:20\"}', '217', '0:0:0:0:0:0:0:1', '2020-05-15 09:21:20');
INSERT INTO `sys_log` VALUES ('105', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[13]', '100', '0:0:0:0:0:0:0:1', '2020-05-15 09:21:31');
INSERT INTO `sys_log` VALUES ('106', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:21:40\"}', '121', '0:0:0:0:0:0:0:1', '2020-05-15 09:21:41');
INSERT INTO `sys_log` VALUES ('107', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:21:58\"}', '77', '0:0:0:0:0:0:0:1', '2020-05-15 09:21:58');
INSERT INTO `sys_log` VALUES ('108', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":12,\"userId\":1,\"name\":\"测试赛\",\"endDate\":\"2020-05-02\",\"status\":0,\"createTime\":\"2020-05-15 09:19:52\",\"updateTime\":\"2020-05-15 09:23:16\"}', '48730', '0:0:0:0:0:0:0:1', '2020-05-15 09:23:16');
INSERT INTO `sys_log` VALUES ('109', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":14,\"userId\":1,\"name\":\"第三个\",\"endDate\":\"2020-05-06\",\"status\":0,\"createTime\":\"2020-05-15 09:31:47\"}', '8370', '0:0:0:0:0:0:0:1', '2020-05-15 09:31:48');
INSERT INTO `sys_log` VALUES ('110', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":15,\"userId\":1,\"name\":\"得到的\",\"endDate\":\"2020-04-23\",\"status\":0,\"createTime\":\"2020-05-15 09:33:36\"}', '27498', '0:0:0:0:0:0:0:1', '2020-05-15 09:33:36');
INSERT INTO `sys_log` VALUES ('111', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":16,\"userId\":1,\"name\":\"撒\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 09:38:27\"}', '7199', '0:0:0:0:0:0:0:1', '2020-05-15 09:38:27');
INSERT INTO `sys_log` VALUES ('112', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[12,14,15,16]', '36', '0:0:0:0:0:0:0:1', '2020-05-15 09:47:13');
INSERT INTO `sys_log` VALUES ('113', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":17,\"userId\":1,\"name\":\"防守打法\",\"startDate\":\"2020-05-30\",\"endDate\":\"2020-04-30\",\"status\":0,\"createTime\":\"2020-05-15 09:47:43\"}', '9590', '0:0:0:0:0:0:0:1', '2020-05-15 09:47:43');
INSERT INTO `sys_log` VALUES ('114', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":18,\"userId\":1,\"name\":\"似懂非懂\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 09:51:52\"}', '2648', '0:0:0:0:0:0:0:1', '2020-05-15 09:51:52');
INSERT INTO `sys_log` VALUES ('115', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":19,\"userId\":1,\"name\":\"十点多打多多多多多多多多\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:24:16\"}', '1890114', '0:0:0:0:0:0:0:1', '2020-05-15 10:24:17');
INSERT INTO `sys_log` VALUES ('116', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[18,19]', '137', '0:0:0:0:0:0:0:1', '2020-05-15 10:24:27');
INSERT INTO `sys_log` VALUES ('117', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":20,\"userId\":1,\"name\":\"哒哒哒哒哒哒\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:24:46\"}', '8397', '0:0:0:0:0:0:0:1', '2020-05-15 10:24:46');
INSERT INTO `sys_log` VALUES ('118', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":21,\"userId\":1,\"name\":\"电饭锅\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 10:28:01\"}', '3695', '0:0:0:0:0:0:0:1', '2020-05-15 10:28:01');
INSERT INTO `sys_log` VALUES ('119', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":22,\"userId\":1,\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-03\",\"status\":0,\"createTime\":\"2020-05-15 10:29:19\"}', '2871', '0:0:0:0:0:0:0:1', '2020-05-15 10:29:19');
INSERT INTO `sys_log` VALUES ('120', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[20,21]', '33', '0:0:0:0:0:0:0:1', '2020-05-15 10:29:42');
INSERT INTO `sys_log` VALUES ('121', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[17,22]', '271', '0:0:0:0:0:0:0:1', '2020-05-15 12:35:24');
INSERT INTO `sys_log` VALUES ('122', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":23,\"userId\":1,\"name\":\"测试\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 12:39:16\"}', '10271', '0:0:0:0:0:0:0:1', '2020-05-15 12:39:16');
INSERT INTO `sys_log` VALUES ('123', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":24,\"userId\":1,\"name\":\"jjjjjjjjjj\",\"startDate\":\"\",\"endDate\":\"\",\"status\":0,\"createTime\":\"2020-05-15 12:50:25\"}', '7143', '0:0:0:0:0:0:0:1', '2020-05-15 12:50:25');
INSERT INTO `sys_log` VALUES ('124', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[23,24]', '110', '0:0:0:0:0:0:0:1', '2020-05-15 12:50:35');
INSERT INTO `sys_log` VALUES ('125', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":25,\"userId\":1,\"name\":\"yyyyyyy\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-01\",\"status\":0,\"createTime\":\"2020-05-15 12:51:11\"}', '9654', '0:0:0:0:0:0:0:1', '2020-05-15 12:51:11');
INSERT INTO `sys_log` VALUES ('126', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":26,\"userId\":1,\"name\":\"fddddd\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-22\",\"status\":0,\"createTime\":\"2020-05-15 12:51:58\"}', '3330', '0:0:0:0:0:0:0:1', '2020-05-15 12:51:58');
INSERT INTO `sys_log` VALUES ('127', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-20\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\"}', '10219', '0:0:0:0:0:0:0:1', '2020-05-15 12:52:26');
INSERT INTO `sys_log` VALUES ('128', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":28,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-20\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\"}', '190', '0:0:0:0:0:0:0:1', '2020-05-15 12:52:26');
INSERT INTO `sys_log` VALUES ('129', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-01\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\",\"updateTime\":\"2020-05-15 12:52:38\"}', '132', '0:0:0:0:0:0:0:1', '2020-05-15 12:52:38');
INSERT INTO `sys_log` VALUES ('130', 'admin', '修改个人计划', 'com.person.modules.person.controller.UserPlanController.update()', '{\"id\":27,\"userId\":1,\"name\":\"dfffffff\",\"startDate\":\"2020-05-08\",\"endDate\":\"2020-05-13\",\"status\":0,\"createTime\":\"2020-05-15 12:52:25\",\"updateTime\":\"2020-05-15 12:52:48\"}', '133', '0:0:0:0:0:0:0:1', '2020-05-15 12:52:48');
INSERT INTO `sys_log` VALUES ('131', 'admin', '删除个人计划', 'com.person.modules.person.controller.UserPlanController.delete()', '[25,26,27,28]', '106', '0:0:0:0:0:0:0:1', '2020-05-15 12:52:58');
INSERT INTO `sys_log` VALUES ('132', 'admin', '保存个人计划', 'com.person.modules.person.controller.UserPlanController.save()', '{\"id\":29,\"userId\":1,\"name\":\"本周看一本书\",\"startDate\":\"2020-05-11\",\"endDate\":\"2020-05-17\",\"status\":0,\"createTime\":\"2020-05-15 12:53:18\"}', '66', '0:0:0:0:0:0:0:1', '2020-05-15 12:53:18');
INSERT INTO `sys_log` VALUES ('133', 'admin', '保存日报', 'com.person.modules.person.controller.WorkDailyController.save()', '{\"id\":26,\"userId\":1,\"workDate\":\"2020-05-01\",\"workContent\":\"防守打法\",\"progress\":1,\"createTime\":\"2020-05-15 13:07:35\"}', '83', '0:0:0:0:0:0:0:1', '2020-05-15 13:07:35');
INSERT INTO `sys_log` VALUES ('134', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":62,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"查询\",\"perms\":\"person:work:list,person:work:info\",\"type\":2,\"orderNum\":0}', '111', '0:0:0:0:0:0:0:1', '2020-05-15 13:08:47');
INSERT INTO `sys_log` VALUES ('135', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":63,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"上班\",\"perms\":\"person:work:save\",\"type\":2,\"orderNum\":0}', '117', '0:0:0:0:0:0:0:1', '2020-05-15 13:09:17');
INSERT INTO `sys_log` VALUES ('136', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":64,\"parentId\":54,\"parentName\":\"出勤记录\",\"name\":\"下班\",\"perms\":\"person:work:update\",\"type\":2,\"orderNum\":0}', '87', '0:0:0:0:0:0:0:1', '2020-05-15 13:09:46');
INSERT INTO `sys_log` VALUES ('137', 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":1,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"13:14:23\",\"status\":0}', '138', '0:0:0:0:0:0:0:1', '2020-05-15 13:21:56');
INSERT INTO `sys_log` VALUES ('138', 'admin', '修改考勤', 'com.person.modules.person.controller.WorkRecordController.update()', '{\"id\":1,\"userId\":1,\"workDate\":\"2020-05-15\",\"upTime\":\"13:14:23\",\"downTime\":\"21:23:20\",\"status\":0}', '162', '0:0:0:0:0:0:0:1', '2020-05-15 13:23:34');
INSERT INTO `sys_log` VALUES ('139', 'admin', '保存考勤', 'com.person.modules.person.controller.WorkRecordController.save()', '{\"id\":2,\"userId\":1,\"workDate\":\"2020-05-08\",\"upTime\":\"13:26:11\",\"downTime\":\"13:26:13\",\"status\":0}', '39', '0:0:0:0:0:0:0:1', '2020-05-15 13:26:23');
INSERT INTO `sys_log` VALUES ('140', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":65,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"申请\",\"perms\":\"person:apply:save\",\"type\":2,\"orderNum\":0}', '56', '0:0:0:0:0:0:0:1', '2020-05-15 13:28:13');
INSERT INTO `sys_log` VALUES ('141', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":66,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"查看\",\"perms\":\"person:apply:list,person:apply:info\",\"type\":2,\"orderNum\":0}', '64', '0:0:0:0:0:0:0:1', '2020-05-15 13:28:47');
INSERT INTO `sys_log` VALUES ('142', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":67,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"删除\",\"perms\":\"person:apply:delete\",\"type\":2,\"orderNum\":0}', '68', '0:0:0:0:0:0:0:1', '2020-05-15 13:29:20');
INSERT INTO `sys_log` VALUES ('143', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":68,\"parentId\":57,\"parentName\":\"转正申请\",\"name\":\"编辑\",\"perms\":\"person:apply:update\",\"type\":2,\"orderNum\":0}', '70', '0:0:0:0:0:0:0:1', '2020-05-15 13:34:00');
INSERT INTO `sys_log` VALUES ('144', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":69,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"查看\",\"perms\":\"person:doc:list,person:doc:info\",\"type\":2,\"orderNum\":0}', '72', '0:0:0:0:0:0:0:1', '2020-05-15 13:36:30');
INSERT INTO `sys_log` VALUES ('145', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":70,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"新增\",\"perms\":\"person:doc:save\",\"type\":2,\"orderNum\":0}', '77', '0:0:0:0:0:0:0:1', '2020-05-15 13:36:53');
INSERT INTO `sys_log` VALUES ('146', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":71,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"编辑\",\"perms\":\"person:doc:update\",\"type\":2,\"orderNum\":0}', '71', '0:0:0:0:0:0:0:1', '2020-05-15 13:37:16');
INSERT INTO `sys_log` VALUES ('147', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":72,\"parentId\":53,\"parentName\":\"员工档案\",\"name\":\"删除\",\"perms\":\"person:doc:delete\",\"type\":2,\"orderNum\":0}', '29', '0:0:0:0:0:0:0:1', '2020-05-15 13:37:36');
INSERT INTO `sys_log` VALUES ('148', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":73,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"查看\",\"perms\":\"person:need:list,person:need:info\",\"type\":2,\"orderNum\":0}', '27', '0:0:0:0:0:0:0:1', '2020-05-15 13:39:03');
INSERT INTO `sys_log` VALUES ('149', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":74,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"新增\",\"perms\":\"person:need:save\",\"type\":2,\"orderNum\":0}', '63', '0:0:0:0:0:0:0:1', '2020-05-15 13:39:18');
INSERT INTO `sys_log` VALUES ('150', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":75,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"编辑\",\"perms\":\"person:need:update\",\"type\":2,\"orderNum\":0}', '91', '0:0:0:0:0:0:0:1', '2020-05-15 13:39:40');
INSERT INTO `sys_log` VALUES ('151', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":76,\"parentId\":51,\"parentName\":\"招聘需求\",\"name\":\"删除\",\"perms\":\"person:need:delete\",\"type\":2,\"orderNum\":0}', '64', '0:0:0:0:0:0:0:1', '2020-05-15 13:40:04');
INSERT INTO `sys_log` VALUES ('152', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":77,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"查看\",\"perms\":\"person:interview:list,person:interview:info\",\"type\":2,\"orderNum\":0}', '47', '0:0:0:0:0:0:0:1', '2020-05-15 13:40:35');
INSERT INTO `sys_log` VALUES ('153', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":78,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"新增\",\"perms\":\"person:interview:save\",\"type\":2,\"orderNum\":0}', '100', '0:0:0:0:0:0:0:1', '2020-05-15 13:40:51');
INSERT INTO `sys_log` VALUES ('154', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":79,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"编辑\",\"perms\":\"person:interview:update\",\"type\":2,\"orderNum\":0}', '35', '0:0:0:0:0:0:0:1', '2020-05-15 13:41:14');
INSERT INTO `sys_log` VALUES ('155', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":80,\"parentId\":52,\"parentName\":\"面试计划\",\"name\":\"删除\",\"perms\":\"person:interview:delete\",\"type\":2,\"orderNum\":0}', '63', '0:0:0:0:0:0:0:1', '2020-05-15 13:41:29');
INSERT INTO `sys_log` VALUES ('156', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":81,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"查看\",\"perms\":\"person:salary:list,person:salary:info\",\"type\":2,\"orderNum\":0}', '33', '0:0:0:0:0:0:0:1', '2020-05-15 13:42:46');
INSERT INTO `sys_log` VALUES ('157', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":82,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"新增\",\"perms\":\"person:salary:save\",\"type\":2,\"orderNum\":0}', '86', '0:0:0:0:0:0:0:1', '2020-05-15 13:43:03');
INSERT INTO `sys_log` VALUES ('158', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":83,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"编辑\",\"perms\":\"person:salary:update\",\"type\":2,\"orderNum\":0}', '34', '0:0:0:0:0:0:0:1', '2020-05-15 13:43:17');
INSERT INTO `sys_log` VALUES ('159', 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":84,\"parentId\":56,\"parentName\":\"工资查询\",\"name\":\"删除\",\"perms\":\"person:salary:delete\",\"type\":2,\"orderNum\":0}', '75', '0:0:0:0:0:0:0:1', '2020-05-15 13:43:49');
INSERT INTO `sys_log` VALUES ('160', 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":1,\"candidate\":\"2\",\"meetTime\":\"3\",\"meetUserId\":4,\"status\":0,\"createTime\":\"2020-05-15 13:49:31\"}', '149', '0:0:0:0:0:0:0:1', '2020-05-15 13:49:32');
INSERT INTO `sys_log` VALUES ('161', 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":2,\"candidateMobile\":\"22\",\"meetTime\":\"33\",\"meetUserId\":44,\"status\":0,\"createTime\":\"2020-05-15 13:50:47\"}', '29', '0:0:0:0:0:0:0:1', '2020-05-15 13:50:47');
INSERT INTO `sys_log` VALUES ('162', 'admin', '保存面试', 'com.person.modules.person.controller.InterviewPlanController.save()', '{\"id\":3,\"candidate\":\"111\",\"candidateMobile\":\"222\",\"meetTime\":\"333\",\"meetUserId\":444,\"status\":0,\"createTime\":\"2020-05-15 13:51:38\"}', '47', '0:0:0:0:0:0:0:1', '2020-05-15 13:51:38');
INSERT INTO `sys_log` VALUES ('163', 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":1,\"userId\":1,\"education\":\"2\",\"birth\":\"3\",\"entryDate\":\"4\",\"createTime\":\"2020-05-15 13:51:50\"}', '89', '0:0:0:0:0:0:0:1', '2020-05-15 13:51:50');
INSERT INTO `sys_log` VALUES ('164', 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":1,\"createTime\":\"2020-05-15 13:53:22\"}', '58', '0:0:0:0:0:0:0:1', '2020-05-15 13:53:22');
INSERT INTO `sys_log` VALUES ('165', 'admin', '保存申请', 'com.person.modules.person.controller.ConvertApplyController.save()', '{\"id\":1,\"applyDate\":\"1\",\"status\":0,\"createTime\":\"2020-05-15 13:53:45\"}', '70', '0:0:0:0:0:0:0:1', '2020-05-15 13:53:45');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '10');
INSERT INTO `sys_menu` VALUES ('2', '1', '员工管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '1', '字典管理', 'modules/sys/dict.html', null, '1', 'fa fa-bookmark-o', '6');
INSERT INTO `sys_menu` VALUES ('37', '36', '查看', null, 'sys:dict:list,sys:dict:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('38', '36', '新增', null, 'sys:dict:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('39', '36', '修改', null, 'sys:dict:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('40', '36', '删除', null, 'sys:dict:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('41', '0', '工资管理', null, null, '0', 'fa fa-btc', '3');
INSERT INTO `sys_menu` VALUES ('42', '0', '考勤管理', null, null, '0', 'fa fa-calendar-check-o', '4');
INSERT INTO `sys_menu` VALUES ('43', '0', '个人中心', null, null, '0', 'fa fa-street-view', '5');
INSERT INTO `sys_menu` VALUES ('44', '0', '招聘管理', null, null, '0', 'fa fa-bullhorn', '1');
INSERT INTO `sys_menu` VALUES ('45', '0', '档案管理', null, null, '0', 'fa fa-file-word-o', '2');
INSERT INTO `sys_menu` VALUES ('46', '43', '个人计划', 'modules/person/plan.html', '', '1', 'fa fa-table', '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '查看', null, 'person:plan:list,person:plan:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '新增', null, 'person:plan:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '修改', null, 'person:plan:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '46', '删除', null, 'person:plan:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('51', '44', '招聘需求', 'modules//person/need.html', 'person:need:list,person:need:info', '1', 'fa fa-bullhorn', '0');
INSERT INTO `sys_menu` VALUES ('52', '44', '面试计划', 'modules/person/interview.html', '', '1', 'fa fa-users', '0');
INSERT INTO `sys_menu` VALUES ('53', '45', '员工档案', 'modules/person/doc.html', null, '1', 'fa fa-address-card-o', '0');
INSERT INTO `sys_menu` VALUES ('54', '42', '出勤记录', 'modules/person/work.html', null, '1', 'fa fa-check-square', '0');
INSERT INTO `sys_menu` VALUES ('55', '43', '工作日报', 'modules/person/daily.html', null, '1', 'fa fa-file-excel-o', '0');
INSERT INTO `sys_menu` VALUES ('56', '41', '工资查询', 'modules/person/salary.html', null, '1', 'fa fa-jpy', '0');
INSERT INTO `sys_menu` VALUES ('57', '43', '转正申请', 'modules/person/apply.html', null, '1', 'fa fa-american-sign-language-interpreting', '0');
INSERT INTO `sys_menu` VALUES ('58', '55', '查询', '', 'person:daily:list,person:daily:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '55', '增加', '', 'person:daily:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('60', '55', '编辑', null, 'person:daily:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('61', '55', '删除', null, 'person:daily:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('62', '54', '查询', null, 'person:work:list,person:work:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('63', '54', '上班', null, 'person:work:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('64', '54', '下班', null, 'person:work:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('65', '57', '申请', null, 'person:apply:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('66', '57', '查看', null, 'person:apply:list,person:apply:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '57', '删除', null, 'person:apply:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '57', '编辑', null, 'person:apply:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('69', '53', '查看', null, 'person:doc:list,person:doc:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('70', '53', '新增', null, 'person:doc:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '53', '编辑', null, 'person:doc:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('72', '53', '删除', null, 'person:doc:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('73', '51', '查看', null, 'person:need:list,person:need:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('74', '51', '新增', null, 'person:need:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('75', '51', '编辑', null, 'person:need:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('76', '51', '删除', null, 'person:need:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('77', '52', '查看', null, 'person:interview:list,person:interview:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('78', '52', '新增', null, 'person:interview:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('79', '52', '编辑', null, 'person:interview:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('80', '52', '删除', null, 'person:interview:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('81', '56', '查看', null, 'person:salary:list,person:salary:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('82', '56', '新增', null, 'person:salary:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('83', '56', '编辑', null, 'person:salary:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('84', '56', '删除', null, 'person:salary:delete', '2', null, '0');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '超级管理员', '1', '2020-05-14 22:28:37');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('1', '1', '1');
INSERT INTO `sys_role_dept` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('4', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('5', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('6', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('7', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('8', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('9', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('10', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('11', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('12', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('13', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('14', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('15', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('16', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('17', '1', '31');
INSERT INTO `sys_role_menu` VALUES ('18', '1', '32');
INSERT INTO `sys_role_menu` VALUES ('19', '1', '33');
INSERT INTO `sys_role_menu` VALUES ('20', '1', '34');
INSERT INTO `sys_role_menu` VALUES ('21', '1', '35');
INSERT INTO `sys_role_menu` VALUES ('22', '1', '36');
INSERT INTO `sys_role_menu` VALUES ('23', '1', '37');
INSERT INTO `sys_role_menu` VALUES ('24', '1', '38');
INSERT INTO `sys_role_menu` VALUES ('25', '1', '39');
INSERT INTO `sys_role_menu` VALUES ('26', '1', '40');
INSERT INTO `sys_role_menu` VALUES ('27', '1', '41');
INSERT INTO `sys_role_menu` VALUES ('28', '1', '56');
INSERT INTO `sys_role_menu` VALUES ('29', '1', '42');
INSERT INTO `sys_role_menu` VALUES ('30', '1', '54');
INSERT INTO `sys_role_menu` VALUES ('31', '1', '43');
INSERT INTO `sys_role_menu` VALUES ('32', '1', '46');
INSERT INTO `sys_role_menu` VALUES ('33', '1', '47');
INSERT INTO `sys_role_menu` VALUES ('34', '1', '48');
INSERT INTO `sys_role_menu` VALUES ('35', '1', '49');
INSERT INTO `sys_role_menu` VALUES ('36', '1', '50');
INSERT INTO `sys_role_menu` VALUES ('37', '1', '55');
INSERT INTO `sys_role_menu` VALUES ('38', '1', '58');
INSERT INTO `sys_role_menu` VALUES ('39', '1', '59');
INSERT INTO `sys_role_menu` VALUES ('40', '1', '60');
INSERT INTO `sys_role_menu` VALUES ('41', '1', '61');
INSERT INTO `sys_role_menu` VALUES ('42', '1', '57');
INSERT INTO `sys_role_menu` VALUES ('43', '1', '44');
INSERT INTO `sys_role_menu` VALUES ('44', '1', '51');
INSERT INTO `sys_role_menu` VALUES ('45', '1', '52');
INSERT INTO `sys_role_menu` VALUES ('46', '1', '45');
INSERT INTO `sys_role_menu` VALUES ('47', '1', '53');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11', '管理员');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
