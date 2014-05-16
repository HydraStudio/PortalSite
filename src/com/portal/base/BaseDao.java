package com.portal.base;

import java.util.List;

import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface BaseDao<T> {

	void save(T entity);
	
	void delete(Long id);
	
	void update(T entity);
	
	T getById(Long id);
	
	List<T> findAll();

	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
