package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_recruit_need")
public class RecruitNeedEntity {
    @TableId
    private Long id;

    private String dept;

    private Integer needNum;

    private String post;

    private String education;

    private Integer workTime;

    private String demand;

    private Integer status;

    private Long recruitUserId;

    private Long needUserId;

    private String createTime;

    private String updateTime;
}