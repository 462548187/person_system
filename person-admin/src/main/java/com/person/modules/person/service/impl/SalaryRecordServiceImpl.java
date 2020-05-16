/**
 *
 */

package com.person.modules.person.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.person.common.utils.Constant;
import com.person.common.utils.PageUtils;
import com.person.common.utils.Query;
import com.person.modules.person.dao.SalaryRecordDao;
import com.person.modules.person.entity.ConvertApplyEntity;
import com.person.modules.person.entity.SalaryRecordEntity;
import com.person.modules.person.service.SalaryRecordService;
import com.person.modules.sys.service.SysUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


@Service("salaryRecordService")
public class SalaryRecordServiceImpl extends ServiceImpl<SalaryRecordDao, SalaryRecordEntity> implements SalaryRecordService {
    @Autowired
    SysUserService userService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String salaryMonth = (String) params.get("salaryMonth");
        Long userId = Long.valueOf(params.get("userId").toString());

        IPage<SalaryRecordEntity> page = this.page(
                new Query<SalaryRecordEntity>().getPage(params),
                new QueryWrapper<SalaryRecordEntity>()
                        .eq(StringUtils.isNotBlank(salaryMonth), "salary_month", salaryMonth)
                        .eq("user_id", userId)
                        .apply(params.get(Constant.SQL_FILTER) != null, (String)params.get(Constant.SQL_FILTER))
        );
        List<SalaryRecordEntity> records = page.getRecords();

        List<SalaryRecordEntity> list = new ArrayList<SalaryRecordEntity>();
        for (SalaryRecordEntity r : records) {
            r.setUserName(userService.getById(r.getUserId()).getName());
            list.add(r);
        }
        page.setRecords(list);
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
