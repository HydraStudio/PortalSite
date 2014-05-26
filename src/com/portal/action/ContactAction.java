package com.portal.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;
import com.portal.model.Contact;
import com.portal.service.ContactService;


@Controller
@Scope("prototype")
public class ContactAction extends BaseAction<Contact> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private ContactService contactService;
	
	public String listContact(){
		
		return "list_all";
	}
	
	public String addInputContact(){
		
		return "input";
	}
	
	public String addContact(){
		
		return "add";
	}
	
	public String deleteContact(){
		
		return "delete";
	}
	
	public String modifyInputContact(){
		
		return "input";
	}
	
	public String modifyContact(){
		
		return "modify";
	}
}
