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
import com.person.modules.person.dao.InterviewPlanDao;
import com.person.modules.person.entity.InterviewPlanEntity;
import com.person.modules.person.service.InterviewPlanService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("interviewPlanService")
public class InterviewPlanServiceImpl extends ServiceImpl<InterviewPlanDao, InterviewPlanEntity> implements InterviewPlanService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String)params.get("key");

        IPage<InterviewPlanEntity> page = this.page(
            new Query<InterviewPlanEntity>().getPage(params),
            new QueryWrapper<InterviewPlanEntity>().like(StringUtils.isNotBlank(key),"username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(InterviewPlanEntity record) {
        this.updateById(record);

    }
}
