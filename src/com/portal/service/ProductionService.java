package com.portal.service;

import java.util.List;

import com.portal.model.PageBean;
import com.portal.model.Production;
import com.portal.util.QueryHelper;

public interface ProductionService {

	List<Production> findAllProductions();
	
	void deleteProduction(Long id);
	
	void saveProduction(Production production);

	Production getById(Long id);

	void modifyProduction(Production production);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
