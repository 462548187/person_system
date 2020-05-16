/**
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
import com.person.modules.sys.service.SysUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


@Service("convertApplyService")
public class ConvertApplyServiceImpl extends ServiceImpl<ConvertApplyDao, ConvertApplyEntity> implements ConvertApplyService {
    @Autowired
    SysUserService userService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String key = (String) params.get("key");

        IPage<ConvertApplyEntity> page = this.page(
                new Query<ConvertApplyEntity>().getPage(params),
                new QueryWrapper<ConvertApplyEntity>().like(StringUtils.isNotBlank(key), "username", key)
        );
        List<ConvertApplyEntity> records = page.getRecords();
        List<ConvertApplyEntity> list = new ArrayList<ConvertApplyEntity>();
        for (ConvertApplyEntity r : records) {
            Long applyUserId = r.getApplyUserId();
            Long approvalUserId = r.getApprovalUserId();
            if (null != applyUserId) {
                r.setApplyName(userService.getById(applyUserId).getName());
            }
            if (null != approvalUserId) {
                r.setApprovalName(userService.getById(approvalUserId).getName());
            }
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
    public void update(ConvertApplyEntity record) {
        this.updateById(record);
    }
}
