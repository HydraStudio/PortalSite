package com.portal.service;

import java.util.List;

import com.portal.model.Order;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface OrderService {

	List<Order> findAllOrders();
	
	void deleteOrder(Long id);
	
	void saveOrder(Order order);

	Order getById(Long id);

	void modifyOrder(Order order);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
