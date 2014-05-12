package com.portal.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.portal.model.Module;
import com.portal.service.ModuleService;


@Controller
@Scope("prototype")
public class ModuleAction extends ActionSupport {

	private static final long serialVersionUID = 6801093180747513566L;
	
	@Resource
	private ModuleService moduleService;
	
	private Long id;
	
	public String listModule(){
		List<Module> moduleList = moduleService.findAllModules();
		ActionContext.getContext().put("moduleList", moduleList);
		return "list_module";
	}
	
	public String addInputModule(){
		return "add_input_module";
	}
	
	public String addModule(){
		return "add_module";
	}
	
	public String deleteModule(){
		moduleService.deleteModule(id);
		return "delete_module";
	}
	
	public String modifyInputModule(){
		return "modify_input_module";
	}
	
	public String modifyModule(){
		return "modify_module";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
