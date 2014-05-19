package com.portal.action;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Order;
import com.portal.model.PageBean;
import com.portal.service.OrderService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class OrderAction extends BaseAction<Order> {

	private static final long serialVersionUID = -7505934436139505423L;

	@Resource
	private OrderService orderService;
	
	public String listOrder(){
		QueryHelper queryHelper = new QueryHelper(Order.class, "o");
		PageBean pageBean = orderService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_order";
	}
	
	public String addInputOrder(){
		return "input_order";
	}
	
	public String addOrder(){
		orderService.saveOrder(model);
		return "add_order";
	}
	
	public String modifyInputOrder(){
		Order order = orderService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(order);
		return "input_order";
	}
	
	public String modifyOrder() throws Exception{
		Order order = orderService.getById(model.getId());
//		order.setEmail(model.getEmail());
//		order.setGmat(model.getGmat());
//		order.setGpa(model.getGpa());
//		order.setGrade(model.getGrade());
//		order.setGre(model.getGre());
		BeanUtils.copyProperties(order, model);
		orderService.modifyOrder(order);
		return "modify_order";
	}
	
	public String deleteOrder(){
		orderService.deleteOrder(model.getId());
		return "delete_order";
	}
}
