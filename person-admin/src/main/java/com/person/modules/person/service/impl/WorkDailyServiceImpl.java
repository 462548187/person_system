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
import com.person.modules.person.dao.WorkDailyDao;
import com.person.modules.person.entity.WorkDailyEntity;
import com.person.modules.person.service.WorkDailyService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("workDailyService")
public class WorkDailyServiceImpl extends ServiceImpl<WorkDailyDao, WorkDailyEntity> implements WorkDailyService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String workDate = (String)params.get("workDate");
        String workMonth = (String)params.get("workMonth");

        IPage<WorkDailyEntity> page = this.page(
                new Query<WorkDailyEntity>().getPage(params),
                new QueryWrapper<WorkDailyEntity>()
                        .eq(StringUtils.isNotBlank(workDate),"work_date", workDate)
                        .eq(StringUtils.isNotBlank(workMonth),"work_month", workMonth)
                        .apply(params.get(Constant.SQL_FILTER) != null, (String)params.get(Constant.SQL_FILTER))
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(WorkDailyEntity record) {
        this.updateById(record);

    }
}
