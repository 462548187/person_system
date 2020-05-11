/**
 * 
 *
 * 
 *
 * 
 */

package com.person.modules.person.controller;

import com.person.common.annotation.SysLog;
import com.person.common.utils.PageUtils;
import com.person.common.utils.R;
import com.person.common.validator.ValidatorUtils;
import com.person.modules.person.entity.WorkDailyEntity;
import com.person.modules.person.service.WorkDailyService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 日报
 *
 * @author 
 */
@Controller
@RequestMapping("/person/daily")

public class WorkDailyController {
	@Autowired
	private WorkDailyService workDailyService;

	/**
	 * 所有日报列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("person:daily:list")
	public R list(@RequestParam Map<String, Object> params){
		PageUtils page = workDailyService.queryPage(params);

		return R.ok().put("page", page);
	}


	/**
	 * 日报信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("person:daily:info")
	@ResponseBody
	public R info(@PathVariable("id") Long id){
		WorkDailyEntity daily = workDailyService.getById(id);

		return R.ok().put("daily", daily);
	}

	/**
	 * 保存日报
	 */
	@SysLog("保存日报")
	@RequestMapping("/save")
	@RequiresPermissions("person:daily:save")
	public R save(@RequestBody WorkDailyEntity daily){
		ValidatorUtils.validateEntity(daily);

		workDailyService.save(daily);

		return R.ok();
	}

	/**
	 * 修改日报
	 */
	@SysLog("修改日报")
	@RequestMapping("/update")
	@RequiresPermissions("person:daily:update")
	public R update(@RequestBody WorkDailyEntity daily){
		ValidatorUtils.validateEntity(daily);
		workDailyService.update(daily);

		return R.ok();
	}

	/**
	 * 删除日报
	 */
	@SysLog("删除日报")
	@RequestMapping("/delete")
	@RequiresPermissions("person:daily:delete")
	public R delete(@RequestBody Long[] ids){
		workDailyService.deleteBatch(ids);
		return R.ok();
	}

}