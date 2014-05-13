package com.portal.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Module;
import com.portal.service.ModuleService;


@Controller
@Scope("prototype")
public class ModuleAction extends BaseAction<Module> {

	private static final long serialVersionUID = 6801093180747513566L;
	
	@Resource
	private ModuleService moduleService;
	
//	private Long id;
//	private String name;
//	
	
	public String listModule(){
		List<Module> moduleList = moduleService.findAllModules();
		ActionContext.getContext().put("moduleList", moduleList);
		return "list_module";
	}
	
	public String addInputModule(){
		return "input_module";
	}
	
	public String addModule(){
		
		moduleService.saveModule(model);
		return "add_module";
	}
	
	public String deleteModule(){
		moduleService.deleteModule(this.model.getId());
		return "delete_module";
	}
	
	public String modifyInputModule(){
		Module module = moduleService.getById(this.model.getId());
		ActionContext.getContext().getValueStack().push(module);
		return "input_module";
	}
	
	public String modifyModule(){
		
		Module module = moduleService.getById(this.model.getId());
		module.setName(this.model.getName());
		
		moduleService.modifyModule(module);
		return "modify_module";
	}

//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}

	
}
