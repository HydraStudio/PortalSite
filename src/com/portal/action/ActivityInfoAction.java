package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.ActivityInfo;
import com.portal.model.PageBean;
import com.portal.service.ActivityInfoService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class ActivityInfoAction extends BaseAction<ActivityInfo> {

	private static final long serialVersionUID = -2637537027873914577L;

	@Resource
	private ActivityInfoService activityInfoService;
	
	
	public String listActivityInfo(){
		QueryHelper queryHelper = new QueryHelper(ActivityInfo.class, "a");
		PageBean pageBean = activityInfoService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_activity_info";
	}
	
	public String addInputActivityInfo(){
		return "input_activity_info";
	}
	
	public String addActivityInfo(){
		activityInfoService.saveActivityInfo(model);
		return "add_activity_info";
	}
	
	
	public String deleteActivityInfo(){
		activityInfoService.deleteActivityInfo(model.getId());
		return "delete_activity_info";
	}
	
	public String modifyInputActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(activityInfo);
		return "input_activity_info";
	}
	
	//need to modify
	public String modifyActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		activityInfo.setDate(model.getDate());
		activityInfo.setDescription(model.getDescription());
		activityInfo.setLikeCount(model.getLikeCount());
		activityInfo.setTitle(model.getTitle());
		activityInfoService.modifyActivityInfo(activityInfo);
		return "modify_activity_info";
	}
}
