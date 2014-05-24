package com.portal.action;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.PageBean;
import com.portal.model.Portal;
import com.portal.service.ActivityInfoService;
import com.portal.service.PortalService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class PortalAction extends BaseAction<Portal> {

	private static final long serialVersionUID = -7786961290460022303L;

	@Resource
	private PortalService portalService;
	@Resource
	private ActivityInfoService activityInfoService;
	
	public String listPortal(){
		QueryHelper queryHelper = new QueryHelper(Portal.class, "p");
		queryHelper.addOrderProperty(true, "p.useFlag",true);
		PageBean pageBean = portalService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_portal";
	}
	
	public String addInputPortal(){
		return "input_portal";
	}
	
	public String addPortal() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String fileName = uploadCommon();
		String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
        String imageUrl = URL+"upload/" + fileName;
        model.setImageUrl(imageUrl);
        
        String activityId = request.getParameter("activityId");
        if(activityId !=null && !activityId.equals("")){
//          ActivityInfo activityInfo = activityInfoService.getById(Long.valueOf(activityId));
            String activityUrl = URL + "indexShowActivityInfo.action?id=" + activityId;
            model.setUrl(activityUrl);
        }
        portalService.savePortal(model);
		return "add_portal";
	}
	
	public String deletePortal(){
		portalService.deletePortal(model.getId());
		return "delete_portal";
	}
	
	public String modifyInputPortal(){
		Portal portal = portalService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(portal);
		return "input_portal";
	}
	
	public String modifyPortal() throws Exception{
		
		Portal portal = portalService.getById(model.getId());
//		BeanUtils.copyProperties(portal, model);
		portal.setName(model.getName());
		portal.setTitle(model.getTitle());
		portal.setSubTitle(model.getSubTitle());
		
		//need to check if changed.
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
			String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
	        String imageUrl = URL+"upload/" + fileName;
	        portal.setImageUrl(imageUrl);
		}
        portalService.modifyPortal(portal);
		return "modify_portal";
	}
	
	@SuppressWarnings("unchecked")
	public String indexShowPortal(){
		QueryHelper queryHelper = new QueryHelper(Portal.class, "p");
		queryHelper.addCondition(true,"p.useFlag=? ",true);
		PageBean pageBean = portalService.searchPagination(pageNum, pageSize, queryHelper);
		List<Portal> portals = pageBean.getRecordList();
		ActionContext.getContext().put("portals", portals);
		return "index_show_portal";
	}
}
