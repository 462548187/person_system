# 人事管理系统

## 一、系统介绍
本系统为人事管理系统，系统分为七大模块：绩效考核，招聘管理，档案管理，工资管理，考勤管理，培训管理，系统管理。
可满足小企业日常办公。

### 1.绩效考核
绩效考核目前只做了简单的考核设置，后期可扩展更多功能与工资和培训挂钩。后期会从以下几个方面扩展：
1. 季度考核不达标需要参加培训；
2. 考核不达标影响绩效；
3. 在公司做培训增加绩效；

### 2.招聘管理
招聘管理子模块:招聘需求和面试计划。招聘需求是为各个部门需要人才时到招聘需求申请，申请成功后，由人事部门和招聘部门协商面试时间添加面试计划，并跟踪面试结果。
#### （1）招聘需求
可由人事部门或有招聘需求部门填写招聘需求。
#### （2）面试计划
人事专员看到各个部门的招聘需求后，联系候选人并和用人部门协商面试时间，并将面试计划提交，等面试结束再将面试结果同步到系统。招聘结束后结束流程。

### 3.档案管理
档案管理子模块:员工档案和合同管理。
#### （1）员工档案
员工入职资料管理
#### （2）合同档案
公司商业合同管理

### 4.工资管理
工资管理目前有工资查询子模块。普通用户可查看自己工资记录，财务专员可增加员工工资记录。

### 5.考勤管理
考勤管理目前有出勤记录子模块。普通用户可每日打卡，查看出勤记录，后期可扩展与工资计算挂钩。

### 6.培训管理
培训管理子模块:个人计划，工作日报，员工档案和合同管理。
#### （1）个人计划
员工可写当日工作计划
#### （2）工作日报
员工可写当日工作日报
#### （3）转正申请
员工到了转正日期可申请转正由其领导进行审批。后期可与工资和绩效挂钩进行扩展，扩展内容如下：
1. 转正前工资按合同80%计算，转正后100%；
2. 转正后绩效不达标则绩效奖金按百分比算
#### （4）培训计划
可添加新员工培训计划，新技能培训计划，新业务培训计划，后期可扩展会议室管理功能

### 7.系统管理
系统管理子模块:员工管理，部门管理，角色管理，菜单管理和字典管理。
#### （1）员工管理
可为新员工增加系统登录账号，为离职员工删除账号。后期可扩展员工忘记密码后，重置密码功能，通常只有人事专员和管理员可用
#### （2）部门管理
可增加新部门或新成立子公司，通常只有管理员和高级管理领导可用
#### （3）角色管理
可新增角色，并为角色赋予相应权限，如招聘专员只能操作系统管理模块以外的其他模块功能，从财务专员只能进行工资记录添加等，通常只有管理员和高级管理领导可用
#### （4）菜单管理
管理系统左侧的菜单树，只有管理员可用
#### （5）字典管理
管理系统常用字典值，只有管理员可用

## 二、软件架构
本系统由person-common和person-admin两个模块组成。其中person-common模块主要用于权限验证，person-admin模块主要有业务逻辑

基础环境：
1. JDK:1.8

2. MySQL:5.7

3. Maven3.0

使用框架：

1. 核心框架：Spring Boot 2.1.8.RELEASE

2. 视图框架：Spring MVC 5.0

3. ORM框架：MyBatisPlus 3.1.2

4. 数据库连接池：Druid 1.1

5. 安全框架：Apache Shiro 1.4

6. 日志：SLF4J 1.7、Log4j

7. 前端框架：Vue,Layui,ztree



## 三、安装教程
1. 导入mysql脚本
2. 启动java工程（执行person-admin工程com.person.AdminApplication.class中main方法）
3. 访问：http://localhost:8888（账号admin/admin）
4. swagger调试地址：http://localhost:8888/swagger-ui.html

## 四、系统运行效果图
### 0.登录
- 登录地址：http://localhost:8888/
- 账号密码：admin/admin

![登录](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/0-1%E7%99%BB%E5%BD%95.png)
![首页](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/0-2%E9%A6%96%E9%A1%B5.png)
![修改密码](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/0-3%E4%BF%AE%E6%94%B9%E5%AF%86%E7%A0%81.png)
### 1.绩效考核
![绩效考核-考核设置-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/1-%E7%BB%A9%E6%95%88%E8%80%83%E6%A0%B8-%E8%80%83%E6%A0%B8%E8%AE%BE%E7%BD%AE-%E5%88%97%E8%A1%A8.png)
![绩效考核-考核设置-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/1-%E7%BB%A9%E6%95%88%E8%80%83%E6%A0%B8-%E8%80%83%E6%A0%B8%E8%AE%BE%E7%BD%AE-%E5%A2%9E%E5%8A%A0.png)
### 2.招聘管理
#### 2.1招聘需求
![招聘管理-招聘需求-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/2-%E6%8B%9B%E8%81%98%E7%AE%A1%E7%90%86-%E6%8B%9B%E8%81%98%E9%9C%80%E6%B1%82-%E5%88%97%E8%A1%A8.png)
![招聘管理-招聘需求-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/2-%E6%8B%9B%E8%81%98%E7%AE%A1%E7%90%86-%E6%8B%9B%E8%81%98%E9%9C%80%E6%B1%82-%E5%A2%9E%E5%8A%A0.png)
#### 2.2面试计划
![招聘管理-面试计划-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/2-%E6%8B%9B%E8%81%98%E7%AE%A1%E7%90%86-%E9%9D%A2%E8%AF%95%E8%AE%A1%E5%88%92-%E5%88%97%E8%A1%A8.png)
![招聘管理-面试计划-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/2-%E6%8B%9B%E8%81%98%E7%AE%A1%E7%90%86-%E9%9D%A2%E8%AF%95%E8%AE%A1%E5%88%92-%E5%A2%9E%E5%8A%A0.png)
### 3.档案管理
#### 3.1员工档案
![档案管理-员工档案-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/3-%E6%A1%A3%E6%A1%88%E7%AE%A1%E7%90%86-%E5%91%98%E5%B7%A5%E6%A1%A3%E6%A1%88-%E5%88%97%E8%A1%A8.png)
![档案管理-员工档案-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/3-%E6%A1%A3%E6%A1%88%E7%AE%A1%E7%90%86-%E5%91%98%E5%B7%A5%E6%A1%A3%E6%A1%88-%E5%A2%9E%E5%8A%A0.png)
#### 3.2合同管理
![档案管理-合同管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/3-%E6%A1%A3%E6%A1%88%E7%AE%A1%E7%90%86-%E5%90%88%E5%90%8C%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![档案管理-合同管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/3-%E6%A1%A3%E6%A1%88%E7%AE%A1%E7%90%86-%E5%90%88%E5%90%8C%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)
### 4.工资管理
![工资管理-工资查询-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/4-%E5%B7%A5%E8%B5%84%E7%AE%A1%E7%90%86-%E5%B7%A5%E8%B5%84%E6%9F%A5%E8%AF%A2-%E5%88%97%E8%A1%A8.png)
![工资管理-工资查询-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/4-%E5%B7%A5%E8%B5%84%E7%AE%A1%E7%90%86-%E5%B7%A5%E8%B5%84%E6%9F%A5%E8%AF%A2-%E5%A2%9E%E5%8A%A0.png)
### 5.考勤管理
![考勤管理-出勤记录-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/5-%E8%80%83%E5%8B%A4%E7%AE%A1%E7%90%86-%E5%87%BA%E5%8B%A4%E8%AE%B0%E5%BD%95-%E5%88%97%E8%A1%A8.png)
![考勤管理-出勤记录-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/5-%E8%80%83%E5%8B%A4%E7%AE%A1%E7%90%86-%E5%87%BA%E5%8B%A4%E8%AE%B0%E5%BD%95-%E5%A2%9E%E5%8A%A0.png)
### 6.培训管理
#### 6.1个人计划
![培训管理-个人计划-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E4%B8%AA%E4%BA%BA%E8%AE%A1%E5%88%92-%E5%88%97%E8%A1%A8.png)
![培训管理-个人计划-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E4%B8%AA%E4%BA%BA%E8%AE%A1%E5%88%92-%E5%A2%9E%E5%8A%A0.png)
#### 6.2工作日报
![培训管理-工作日报-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E5%B7%A5%E4%BD%9C%E6%97%A5%E6%8A%A5-%E5%88%97%E8%A1%A8.png)
![培训管理-工作日报-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E5%B7%A5%E4%BD%9C%E6%97%A5%E6%8A%A5-%E5%A2%9E%E5%8A%A0.png)
#### 6.3培训计划
![培训管理-培训计划-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E5%9F%B9%E8%AE%AD%E8%AE%A1%E5%88%92-%E5%88%97%E8%A1%A8.png)
![培训管理-培训计划-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E5%9F%B9%E8%AE%AD%E8%AE%A1%E5%88%92-%E5%A2%9E%E5%8A%A0.png)
#### 6.4转正申请
![培训管理-转正申请-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E8%BD%AC%E6%AD%A3%E7%94%B3%E8%AF%B7-%E5%88%97%E8%A1%A8.png)
![培训管理-转正申请-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/6-%E5%9F%B9%E8%AE%AD%E7%AE%A1%E7%90%86-%E8%BD%AC%E6%AD%A3%E7%94%B3%E8%AF%B7-%E5%A2%9E%E5%8A%A0.png)
### 6.系统管理
#### 6.1员工管理
![系统管理-员工管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E5%91%98%E5%B7%A5%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![系统管理-员工管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E5%91%98%E5%B7%A5%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)
#### 6.2部门管理
![系统管理-部门管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E9%83%A8%E9%97%A8%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![系统管理-部门管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E9%83%A8%E9%97%A8%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)
#### 6.3角色管理
![系统管理-角色管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E8%A7%92%E8%89%B2%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![系统管理-角色管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E8%A7%92%E8%89%B2%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)
#### 6.4菜单管理
![系统管理-菜单管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E8%8F%9C%E5%8D%95%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![系统管理-菜单管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E8%8F%9C%E5%8D%95%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)
#### 6.5字典管理
![系统管理-字典管理-列表](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E5%AD%97%E5%85%B8%E7%AE%A1%E7%90%86-%E5%88%97%E8%A1%A8.png)
![系统管理-字典管理-增加](https://gitee.com/doudoutang/person_system/raw/master/%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E6%95%88%E6%9E%9C%E5%9B%BE/7-%E7%B3%BB%E7%BB%9F%E7%AE%A1%E7%90%86-%E5%AD%97%E5%85%B8%E7%AE%A1%E7%90%86-%E5%A2%9E%E5%8A%A0.png)

## 五、特别说明
本项目可做练习亦可作毕业设计，如需交流请加QQ:598187998
