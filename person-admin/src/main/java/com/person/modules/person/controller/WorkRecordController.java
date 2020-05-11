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
import com.person.modules.person.entity.WorkRecordEntity;
import com.person.modules.person.service.WorkRecordService;
import com.person.modules.sys.controller.AbstractController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 考勤管理
 *
 * @author 
 */
@RestController
@RequestMapping("/person/work")
public class WorkRecordController extends AbstractController {
	@Autowired
	private WorkRecordService workRecordService;

	/**
	 * 所有考勤列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("person:work:list")
	public R list(@RequestParam Map<String, Object> params){
		PageUtils page = workRecordService.queryPage(params);

		return R.ok().put("page", page);
	}


	/**
	 * 考勤信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("person:work:info")
	@ResponseBody
	public R info(@PathVariable("id") Long id){
		WorkRecordEntity work = workRecordService.getById(id);

		return R.ok().put("work", work);
	}

	/**
	 * 保存考勤
	 */
	@SysLog("保存考勤")
	@RequestMapping("/save")
	@RequiresPermissions("person:work:save")
	public R save(@RequestBody WorkRecordEntity work){
		ValidatorUtils.validateEntity(work);

		workRecordService.save(work);

		return R.ok();
	}

	/**
	 * 修改考勤
	 */
	@SysLog("修改考勤")
	@RequestMapping("/update")
	@RequiresPermissions("person:work:update")
	public R update(@RequestBody WorkRecordEntity work){
		ValidatorUtils.validateEntity(work);
		workRecordService.update(work);

		return R.ok();
	}

	/**
	 * 删除考勤
	 */
	@SysLog("删除考勤")
	@RequestMapping("/delete")
	@RequiresPermissions("person:work:delete")
	public R delete(@RequestBody Long[] ids){
		workRecordService.deleteBatch(ids);
		return R.ok();
	}

}