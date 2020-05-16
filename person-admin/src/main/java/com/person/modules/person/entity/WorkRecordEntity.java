package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("b_work_record")
public class WorkRecordEntity {
    @TableId
    private Long id;

    private Long userId;

    private String workMonth;
    private String workDate;

    private String upTime;

    private String downTime;

    private Integer status;

    private String createTime;

    private String updateTime;
}