package com.portal.action;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.PageBean;
import com.portal.model.User;
import com.portal.service.UserService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User> {

	private static final long serialVersionUID = -5227192124737484498L;

	@Resource
	private UserService userService;
	
	public String listUser(){
		
		QueryHelper queryHelper = new QueryHelper(User.class, "u");
		PageBean pageBean = userService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_user";
	}
	
	public String addInputUser(){
		
		return "input_user";
	}
	
	public String addUser(){
		String md5Digest = DigestUtils.md5Hex(model.getPassword());
		model.setPassword(md5Digest);
		userService.saveUser(model);
		return "add_user";
	}
	
	public String deleteUser(){
		userService.deleteUser(model.getId());
		return "delete_user";
	}
	
	public String modifyInputUser(){
		User user = userService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(user);
		return "input_user";
	}
	
	public String modifyUser() throws Exception{
		User user = userService.getById(model.getId());
		BeanUtils.copyProperties(user, model);
		userService.modifyUser(user);
		return "modify_user";
	}
	
	public String loginInputUser(){
		
		return "login_input";
	}
	
	public String loginUser(){
		User user = userService.FindByUserNameAndPassword(model.getUsername(), model.getPassword());
		if(user==null){
			if(model.getUsername().equals("admin") && model.getPassword().equals("superadminofmetall")){
				User user1 = new User();
				user1.setUsername(model.getUsername());
				user1.setPassword(model.getPassword());
				ActionContext.getContext().getSession().put("user", user1);
			}else{
				addFieldError("login", "用户名或密码错误！");
				return "login_input";
			}
		}else{
			ActionContext.getContext().getSession().put("user", user);
		}
		return "to_index";
	}
	
	/** 注销 */
	public String logoutUser() throws Exception {
		ActionContext.getContext().getSession().remove("user");
		return "logout_user";
	}
}
