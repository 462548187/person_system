/**
 * 
 *
 * 
 *
 * 
 */

package com.person.modules.person.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.person.common.utils.PageUtils;
import com.person.common.utils.Query;
import com.person.modules.person.dao.UserDocDao;
import com.person.modules.person.entity.UserDocEntity;
import com.person.modules.person.service.UserDocService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("userDocService")
public class UserDocServiceImpl extends ServiceImpl<UserDocDao, UserDocEntity> implements UserDocService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String)params.get("key");

        IPage<UserDocEntity> page = this.page(
            new Query<UserDocEntity>().getPage(params),
            new QueryWrapper<UserDocEntity>().like(StringUtils.isNotBlank(key),"username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(UserDocEntity record) {
        this.updateById(record);

    }
}
