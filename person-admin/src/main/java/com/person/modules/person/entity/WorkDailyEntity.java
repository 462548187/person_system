package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_work_daily")
public class WorkDailyEntity {
    @TableId
    private Long id;

    private Long userId;
    @TableField(exist = false)
    private String userName;
    private String workMonth;
    private String workDate;

    private String workContent;

    private Integer progress;

    private String createTime;

    private String updateTime;
}