package com.portal.service;

import java.util.List;

import com.portal.model.Portal;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface PortalService {

	List<Portal> findAllPortals();
	
	void deletePortal(Long id);
	
	void savePortal(Portal portal);

	Portal getById(Long id);

	void modifyPortal(Portal portal);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
