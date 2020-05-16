package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("b_interview_plan")
public class InterviewPlanEntity {
    @TableId
    private Long id;

    private String candidate;

    private String candidateMobile;

    private String meetTime;

    private Long meetUserId;
    @TableField(exist = false)
    private String meetName;

    private Integer status;

    private String createTime;

    private String updateTime;
}