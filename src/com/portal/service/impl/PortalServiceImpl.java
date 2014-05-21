package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.PortalDao;
import com.portal.model.Portal;
import com.portal.model.PageBean;
import com.portal.service.PortalService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class PortalServiceImpl implements PortalService {

	@Resource
	private PortalDao portalDao;

	public List<Portal> findAllIndexs() {
		return portalDao.findAll();
	}

	public void deleteIndex(Long id) {
		portalDao.delete(id);
	}

	public void saveIndex(Portal portal) {
		portalDao.save(portal);
	}

	public Portal getById(Long id) {
		return portalDao.getById(id);
	}

	public void modifyIndex(Portal portal) {
		portalDao.update(portal);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return portalDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
