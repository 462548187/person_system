package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_convert_apply")
public class ConvertApplyEntity {
    @TableId
    private Long id;

    private Long applyUserId;

    private String applyDate;

    private Integer status;

    private String approvalDate;

    private String approvalUserId;

    private Integer approvalResult;

    private String approvalOpinion;

    private String createTime;

    private String updateTime;
}