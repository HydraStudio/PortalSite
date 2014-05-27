package com.portal.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Achievement;
import com.portal.model.PageBean;
import com.portal.service.AchievementService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class AchievementAction extends BaseAction<Achievement> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private AchievementService achievementService;
	
	public String listAchievement(){
		QueryHelper queryHelper = new QueryHelper(Achievement.class, "a");
		PageBean pageBean = achievementService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_all";
	}
	
	public String addInputAchievement(){
		
		return "input";
	}
	
	public String addAchievement() throws Exception{
		String fileName = uploadCommon();
		String imageUrl = "upload/" + fileName;
        model.setImageUrl(imageUrl);
        achievementService.saveAchievement(model);
		return "add";
	}
	
	public String deleteAchievement(){
		achievementService.deleteAchievement(model.getId());
		return "delete";
	}
	
	public String modifyInputAchievement(){
		Achievement achievement = achievementService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(achievement);
		return "input";
	}
	
	public String modifyAchievement() throws Exception{
		Achievement achievement = achievementService.getById(model.getId());
		achievement.setImageName(model.getImageName());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
	        String imageUrl = "upload/" + fileName;
	        achievement.setImageUrl(imageUrl);
		}
		achievementService.modifyAchievement(achievement);
		return "modify";
	}
}
