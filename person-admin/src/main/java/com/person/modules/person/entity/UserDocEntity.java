package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
@Data
@TableName("b_user_doc")
public class UserDocEntity {
    @TableId
    private Long id;

    private Long userId;

    private String education;

    private String birth;

    private String entryDate;

    private String userType;

    private String createTime;

    private String updateTime;
}