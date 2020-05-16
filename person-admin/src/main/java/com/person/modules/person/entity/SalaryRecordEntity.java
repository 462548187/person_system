package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_salary_record")
public class SalaryRecordEntity {
    @TableId
    private Long id;

    private Long userId;
    @TableField(exist = false)
    private String userName;

    private String salaryMonth;

    private Float mustSalary;

    private Float realitySalary;

    private Float fundAmount;

    private Float taxAmount;

    private Float medicalAmount;

    private Float pensionAmount;

    private Float injuredAmount;

    private Float birthAmount;

    private Float unemploymentAmount;

    private Float leaveAmount;

    private Float lateAmount;

    private Float baseAmount;

    private Float workAmount;

    private Float overtimeAmount;

    private Float meritsAmount;

    private String createTime;

    private String updateTime;
}