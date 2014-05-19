package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.OrderDao;
import com.portal.model.Order;
import com.portal.model.PageBean;
import com.portal.service.OrderService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderDao orderDao;
	
	public List<Order> findAllOrders() {
		return orderDao.findAll();
	}

	public void deleteOrder(Long id) {

		orderDao.delete(id);
	}

	public void saveOrder(Order order) {
		orderDao.save(order);
	}

	public Order getById(Long id) {
		return orderDao.getById(id);
	}

	public void modifyOrder(Order order) {
		orderDao.update(order);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return orderDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
