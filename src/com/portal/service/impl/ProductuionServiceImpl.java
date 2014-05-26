package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.ProductionDao;
import com.portal.model.Production;
import com.portal.model.PageBean;
import com.portal.service.ProductionService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class ProductuionServiceImpl implements ProductionService {

	@Resource
	private ProductionDao productionDao;
	
	public List<Production> findAllProductions() {
		return productionDao.findAll();
	}

	public void deleteProduction(Long id) {

		productionDao.delete(id);
	}

	public void saveProduction(Production production) {
		productionDao.save(production);
	}

	public Production getById(Long id) {
		return productionDao.getById(id);
	}

	public void modifyProduction(Production production) {
		productionDao.update(production);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return productionDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
