package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;
import com.portal.model.Teacher;
import com.portal.service.TeacherService;


@Controller
@Scope("prototype")
public class TeacherAction extends BaseAction<Teacher> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private TeacherService teacherService;
	
	public String listTeacher(){
		
		return "list_all";
	}
	
	public String addInputTeacher(){
		
		return "input";
	}
	
	public String addTeacher(){
		
		return "add";
	}
	
	public String deleteTeacher(){
		
		return "delete";
	}
	
	public String modifyInputTeacher(){
		
		return "input";
	}
	
	public String modifyTeacher(){
		
		return "modify";
	}
}
