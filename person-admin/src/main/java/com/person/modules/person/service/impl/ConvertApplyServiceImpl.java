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
import com.person.modules.person.dao.ConvertApplyDao;
import com.person.modules.person.entity.ConvertApplyEntity;
import com.person.modules.person.service.ConvertApplyService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;


@Service("convertApplyService")
public class ConvertApplyServiceImpl extends ServiceImpl<ConvertApplyDao, ConvertApplyEntity> implements ConvertApplyService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String)params.get("key");

        IPage<ConvertApplyEntity> page = this.page(
            new Query<ConvertApplyEntity>().getPage(params),
            new QueryWrapper<ConvertApplyEntity>().like(StringUtils.isNotBlank(key),"username", key)
        );

        return new PageUtils(page);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));
    }

    @Override
    public void update(ConvertApplyEntity record) {
        this.updateById(record);
    }
}
