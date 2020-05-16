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
import com.person.common.utils.Constant;
import com.person.common.utils.PageUtils;
import com.person.common.utils.Query;
import com.person.modules.person.dao.UserPlanDao;
import com.person.modules.person.entity.UserPlanEntity;
import com.person.modules.person.service.UserPlanService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("userPlanService")
public class UserPlanServiceImpl extends ServiceImpl<UserPlanDao, UserPlanEntity> implements UserPlanService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String name = (String)params.get("name");
        Long userId = Long.valueOf(params.get("userId").toString());

        IPage<UserPlanEntity> page = this.page(
                new Query<UserPlanEntity>().getPage(params),
                new QueryWrapper<UserPlanEntity>()
                        .like(StringUtils.isNotBlank(name),"name", name)
                        .eq("user_id", userId)
                        .apply(params.get(Constant.SQL_FILTER) != null, (String)params.get(Constant.SQL_FILTER))
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));
    }

    @Override
    public void update(UserPlanEntity record) {
        this.updateById(record);

    }
}
