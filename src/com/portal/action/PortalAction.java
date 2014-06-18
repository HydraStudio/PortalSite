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
import com.portal.service.PortalService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class PortalAction extends BaseAction<Portal> {

	private static final long serialVersionUID = -7786961290460022303L;

	@Resource
	private PortalService portalService;
	
	public String listPortal(){
		QueryHelper queryHelper = new QueryHelper(Portal.class, "p");
		queryHelper.addOrderProperty(true, "p.useFlag",false);
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
//		String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
//		String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
        String imageUrl =  "upload/" + fileName;
        model.setImageUrl(imageUrl);
        
        model.setUseFlag(false);
        
        String activityId = request.getParameter("activityId");
        if(activityId !=null && !activityId.equals("")){
//          ActivityInfo activityInfo = activityInfoService.getById(Long.valueOf(activityId));
            String activityUrl = "indexShowActivityInfo.action?id=" + activityId;
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
//			String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
	        String imageUrl = "upload/" + fileName;
	        portal.setImageUrl(imageUrl);
		}
        portalService.modifyPortal(portal);
		return "modify_portal";
	}
	
	public String setToIndexPortal(){
		Portal portal = portalService.getById(model.getId());
		if(portal.getUseFlag()){
			portal.setUseFlag(false);
		}else{
			portal.setUseFlag(true);
		}
		portalService.modifyPortal(portal);
		return "set_to_index";
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
	
//	public static void main(String []args){
//		try {  
//            Runtime rt = Runtime.getRuntime();  
//                        String cmd ="mysqldump -h localhost -uroot -proot oa user> sql\\asdfgaaaf.sql"; //一定要加 -h localhost(或是服务器IP地址)  
//            Process process =rt.exec("cmd /c " + cmd);  
//            InputStreamReader isr = new InputStreamReader(process.getErrorStream(),"GBK");  
//            LineNumberReader input = new LineNumberReader(isr);  
//            String line;  
//            while((line = input.readLine())!= null){  
//                System.out.println(line+"~~~~~~~~~~");  
//            }  
//            System.out.println("备份成功!");  
//        } catch (IOException e) {  
//            System.out.println("备份失败!");  
//            e.printStackTrace();  
//        } 
//	}
}
