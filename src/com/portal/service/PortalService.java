package com.portal.service;

import java.util.List;

import com.portal.model.Portal;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface PortalService {

	List<Portal> findAllIndexs();
	
	void deleteIndex(Long id);
	
	void saveIndex(Portal portal);

	Portal getById(Long id);

	void modifyIndex(Portal portal);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
