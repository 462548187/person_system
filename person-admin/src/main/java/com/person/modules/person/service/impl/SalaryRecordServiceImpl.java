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
import com.person.modules.person.dao.SalaryRecordDao;
import com.person.modules.person.entity.SalaryRecordEntity;
import com.person.modules.person.service.SalaryRecordService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("salaryRecordService")
public class SalaryRecordServiceImpl extends ServiceImpl<SalaryRecordDao, SalaryRecordEntity> implements SalaryRecordService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String)params.get("key");

        IPage<SalaryRecordEntity> page = this.page(
            new Query<SalaryRecordEntity>().getPage(params),
            new QueryWrapper<SalaryRecordEntity>().like(StringUtils.isNotBlank(key),"username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));

    }

    @Override
    public void update(SalaryRecordEntity record) {

    }
}
