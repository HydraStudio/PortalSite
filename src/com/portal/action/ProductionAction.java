package com.portal.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Achievement;
import com.portal.model.JoinUs;
import com.portal.model.PageBean;
import com.portal.model.Production;
import com.portal.service.ProductionService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class ProductionAction extends BaseAction<Production> {


	private static final long serialVersionUID = 2188619404997947937L;
	
	@Resource
	private ProductionService productionService;
	
	public String listProduction(){
		QueryHelper queryHelper = new QueryHelper(Production.class, "a");
		PageBean pageBean = productionService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_all";
	}
	
	public String addInputProduction(){
		return "input";
	}
	
	public String addProduction() throws Exception{
//		HttpServletRequest request = ServletActionContext.getRequest();
		String fileName = uploadCommon();
//		String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
        String imageUrl = "upload/" + fileName;
        model.setImageUrl(imageUrl);
        productionService.saveProduction(model);
		return "add";
	}
	
	public String deleteProduction(){
		productionService.deleteProduction(model.getId());
		return "delete";
	}
	
	public String modifyInputProduction(){
		Production production = productionService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(production);
		return "input";
	}
	
	public String modifyProduction() throws Exception{
		Production production = productionService.getById(model.getId());
		production.setImageName(model.getImageName());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
//			String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
	        String imageUrl = "upload/" + fileName;
	        production.setImageUrl(imageUrl);
		}
		productionService.modifyProduction(production);
		return "modify";
	}
	
	public String indexGetProduction(){
		List<Production> productions = productionService.findAllProductions();
		if(productions !=null && productions.size()>0){
			ActionContext.getContext().getValueStack().push(productions.get(0));
		}
		return "index_get_production";
	}
}
