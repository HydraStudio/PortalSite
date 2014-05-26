package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;
import com.portal.model.Production;
import com.portal.service.ProductionService;


@Controller
@Scope("prototype")
public class ProductionAction extends BaseAction<Production> {


	private static final long serialVersionUID = 2188619404997947937L;
	
	@Resource
	private ProductionService productionService;
	
	public String listProduction(){
		
		return "list_all";
	}
	
	public String addInputProduction(){
		
		return "input";
	}
	
	public String addProduction(){
		
		return "add";
	}
	
	public String deleteProduction(){
		
		return "delete";
	}
	
	public String modifyInputProduction(){
		
		return "input";
	}
	
	public String modifyProduction(){
		
		return "modify";
	}
}
