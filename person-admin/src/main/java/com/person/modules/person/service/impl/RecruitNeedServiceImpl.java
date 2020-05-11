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
import com.person.modules.person.dao.RecruitNeedDao;
import com.person.modules.person.entity.RecruitNeedEntity;
import com.person.modules.person.service.RecruitNeedService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("recruitNeedService")
public class RecruitNeedServiceImpl extends ServiceImpl<RecruitNeedDao, RecruitNeedEntity> implements RecruitNeedService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String)params.get("key");

        IPage<RecruitNeedEntity> page = this.page(
            new Query<RecruitNeedEntity>().getPage(params),
            new QueryWrapper<RecruitNeedEntity>().like(StringUtils.isNotBlank(key),"username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(RecruitNeedEntity record) {
        this.updateById(record);

    }
}
