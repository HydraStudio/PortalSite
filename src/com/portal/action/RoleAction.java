package com.portal.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class RoleAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2843035303744199788L;

	public String list() throws Exception{
		return "list";
	}
	
	public String delete() throws Exception{
		return "toList";
	}
	
	public String addUI() throws Exception{
		return "addUI";
	}
}
