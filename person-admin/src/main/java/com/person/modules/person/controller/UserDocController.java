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
import com.person.modules.person.entity.UserDocEntity;
import com.person.modules.person.service.UserDocService;
import com.person.modules.sys.controller.AbstractController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 员工档案
 *
 * @author 
 */
@Controller
@RequestMapping("/person/doc")
public class UserDocController  extends AbstractController {
	@Autowired
	private UserDocService userDocService;

	/**
	 * 所有员工档案列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("person:doc:list")
	public R list(@RequestParam Map<String, Object> params){
		PageUtils page = userDocService.queryPage(params);

		return R.ok().put("page", page);
	}


	/**
	 * 员工档案信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("person:doc:info")
	@ResponseBody
	public R info(@PathVariable("id") Long id){
		UserDocEntity doc = userDocService.getById(id);

		return R.ok().put("doc", doc);
	}

	/**
	 * 保存员工档案
	 */
	@SysLog("保存员工档案")
	@RequestMapping("/save")
	@RequiresPermissions("person:doc:save")
	public R save(@RequestBody UserDocEntity doc){
		ValidatorUtils.validateEntity(doc);

		userDocService.save(doc);

		return R.ok();
	}

	/**
	 * 修改员工档案
	 */
	@SysLog("修改员工档案")
	@RequestMapping("/update")
	@RequiresPermissions("person:doc:update")
	public R update(@RequestBody UserDocEntity doc){
		ValidatorUtils.validateEntity(doc);
		userDocService.update(doc);

		return R.ok();
	}

	/**
	 * 删除员工档案
	 */
	@SysLog("删除员工档案")
	@RequestMapping("/delete")
	@RequiresPermissions("person:doc:delete")
	public R delete(@RequestBody Long[] ids){
		userDocService.deleteBatch(ids);
		return R.ok();
	}

}