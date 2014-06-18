package com.portal.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Contact;
import com.portal.model.JoinUs;
import com.portal.model.PageBean;
import com.portal.service.JoinUsService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class JoinUsAction extends BaseAction<JoinUs> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private JoinUsService joinUsService;
	
	public String listJoinUs(){
		QueryHelper queryHelper = new QueryHelper(JoinUs.class, "a");
		PageBean pageBean = joinUsService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_all";
	}
	
	public String addInputJoinUs(){
		
		return "input";
	}
	
	public String addJoinUs() throws Exception{
//		HttpServletRequest request = ServletActionContext.getRequest();
		String fileName = uploadCommon();
//		String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
        String imageUrl =  "upload/" + fileName;
        model.setImageUrl(imageUrl);
        joinUsService.saveJoinUs(model);
		return "add";
	}
	
	public String deleteJoinUs(){
		joinUsService.deleteJoinUs(model.getId());
		return "delete";
	}
	
	public String modifyInputJoinUs(){
		JoinUs joinUs = joinUsService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(joinUs);
		return "input";
	}
	
	public String modifyJoinUs() throws Exception{
		JoinUs joinUs = joinUsService.getById(model.getId());
		joinUs.setImageName(model.getImageName());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
//			String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
	        String imageUrl =  "upload/" + fileName;
	        joinUs.setImageUrl(imageUrl);
		}
		joinUsService.modifyJoinUs(joinUs);
		return "modify";
	}
	
	public String indexGetJoinUs(){
		List<JoinUs> joinUs = joinUsService.findAllJoinUs();
		if(joinUs !=null && joinUs.size()>0){
			ActionContext.getContext().getValueStack().push(joinUs.get(0));
		}
		return "index_get_join_us";
	}
}
