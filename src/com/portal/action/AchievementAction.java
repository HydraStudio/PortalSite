package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;
import com.portal.model.Achievement;
import com.portal.service.AchievementService;


@Controller
@Scope("prototype")
public class AchievementAction extends BaseAction<Achievement> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private AchievementService achievementService;
	
	public String listAchievement(){
		
		return "list_all";
	}
	
	public String addInputAchievement(){
		
		return "input";
	}
	
	public String addAchievement(){
		
		return "add";
	}
	
	public String deleteAchievement(){
		
		return "delete";
	}
	
	public String modifyInputAchievement(){
		
		return "input";
	}
	
	public String modifyAchievement(){
		
		return "modify";
	}
}
