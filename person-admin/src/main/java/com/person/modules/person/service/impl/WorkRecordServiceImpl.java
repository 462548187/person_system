/**
 *
 */

package com.person.modules.person.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.person.common.utils.PageUtils;
import com.person.common.utils.Query;
import com.person.modules.person.dao.WorkRecordDao;
import com.person.modules.person.entity.WorkRecordEntity;
import com.person.modules.person.service.WorkRecordService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("workRecordService")
public class WorkRecordServiceImpl extends ServiceImpl<WorkRecordDao, WorkRecordEntity> implements WorkRecordService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String) params.get("key");

        IPage<WorkRecordEntity> page = this.page(
                new Query<WorkRecordEntity>().getPage(params),
                new QueryWrapper<WorkRecordEntity>().like(StringUtils.isNotBlank(key), "username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(WorkRecordEntity record) {
        this.updateById(record);

    }
}
