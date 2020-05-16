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
import com.person.modules.person.dao.UserDocDao;
import com.person.modules.person.entity.SalaryRecordEntity;
import com.person.modules.person.entity.UserDocEntity;
import com.person.modules.person.service.UserDocService;
import com.person.modules.sys.service.SysUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


@Service("userDocService")
public class UserDocServiceImpl extends ServiceImpl<UserDocDao, UserDocEntity> implements UserDocService {
    @Autowired
    SysUserService userService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Long userId = (Long) params.get("userId");

        IPage<UserDocEntity> page = this.page(
                new Query<UserDocEntity>().getPage(params),
                new QueryWrapper<UserDocEntity>()
                        .eq(null != userId, "user_id", userId)
                        .apply(params.get(Constant.SQL_FILTER) != null, (String) params.get(Constant.SQL_FILTER))

        );
        List<UserDocEntity> records = page.getRecords();

        List<UserDocEntity> list = new ArrayList<UserDocEntity>();
        for (UserDocEntity r : records) {
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
    public void update(UserDocEntity record) {
        this.updateById(record);

    }
}
