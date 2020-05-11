package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_user_plan")
public class UserPlanEntity {
    @TableId
    private Long id;

    private Long userId;

    private String name;

    private String startDate;

    private String endDate;

    private Integer status;

    private String createTime;

    private String updateTime;
}