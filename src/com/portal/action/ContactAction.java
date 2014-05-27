package com.portal.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Achievement;
import com.portal.model.Contact;
import com.portal.model.PageBean;
import com.portal.service.ContactService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class ContactAction extends BaseAction<Contact> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private ContactService contactService;
	
	public String listContact(){
		QueryHelper queryHelper = new QueryHelper(Contact.class, "a");
		PageBean pageBean = contactService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_all";
	}
	
	public String addInputContact(){
		
		return "input";
	}
	
	public String addContact() throws Exception{
		String fileName = uploadCommon();
		String imageUrl = "upload/" + fileName;
        model.setImageUrl(imageUrl);
        contactService.saveContact(model);
		return "add";
	}
	
	public String deleteContact(){
		contactService.deleteContact(model.getId());
		return "delete";
	}
	
	public String modifyInputContact(){
		Contact contact = contactService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(contact);
		return "input";
	}
	
	public String modifyContact() throws Exception{
		Contact contact = contactService.getById(model.getId());
		contact.setImageName(model.getImageName());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
	        String imageUrl = "upload/" + fileName;
	        contact.setImageUrl(imageUrl);
		}
		contactService.modifyContact(contact);
		return "modify";
	}
}
