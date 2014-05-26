package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;
import com.portal.model.JoinUs;
import com.portal.service.JoinUsService;


@Controller
@Scope("prototype")
public class JoinUsAction extends BaseAction<JoinUs> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private JoinUsService joinUsService;
	
	public String listJoinUs(){
		
		return "list_all";
	}
	
	public String addInputJoinUs(){
		
		return "input";
	}
	
	public String addJoinUs(){
		
		return "add";
	}
	
	public String deleteJoinUs(){
		
		return "delete";
	}
	
	public String modifyInputJoinUs(){
		
		return "input";
	}
	
	public String modifyJoinUs(){
		
		return "modify";
	}
}
