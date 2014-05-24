package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Module;
import com.portal.model.PageBean;
import com.portal.service.ModuleService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class ModuleAction extends BaseAction<Module> {

	private static final long serialVersionUID = 6801093180747513566L;
	
	@Resource
	private ModuleService moduleService;
	
	public String listModule(){
//		List<Module> moduleList = moduleService.findAllModules();
//		ActionContext.getContext().put("moduleList", moduleList);
		QueryHelper queryHelper = new QueryHelper(Module.class, "m");
		if(this.model.getId() !=null){
			queryHelper.addCondition("m.module.id = ? ", this.model.getId());
		}else{
			queryHelper.addCondition("m.module is null ");
		}
		PageBean pageBean = moduleService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
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
		module.setModuleUrl(model.getModuleUrl());
		
		moduleService.modifyModule(module);
		return "modify_module";
	}

}
