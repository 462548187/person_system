package com.person.modules.person.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("b_convert_apply")
public class ConvertApplyEntity {
    @TableId
    private Long id;

    private Long applyUserId;
    @TableField(exist = false)
    private String applyName;

    private String applyDate;
    private String applyContent;

    private Integer status;

    private String approvalDate;

    private Long approvalUserId;

    @TableField(exist = false)
    private String approvalName;

    private Integer approvalResult;

    private String approvalOpinion;

    private String createTime;

    private String updateTime;
}