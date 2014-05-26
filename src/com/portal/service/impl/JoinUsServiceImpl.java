package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.JoinUsDao;
import com.portal.model.JoinUs;
import com.portal.model.PageBean;
import com.portal.service.JoinUsService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class JoinUsServiceImpl implements JoinUsService {

	@Resource
	private JoinUsDao joinUsDao;
	
	public List<JoinUs> findAllJoinUs() {
		return joinUsDao.findAll();
	}

	public void deleteJoinUs(Long id) {

		joinUsDao.delete(id);
	}

	public void saveJoinUs(JoinUs joinUs) {
		joinUsDao.save(joinUs);
	}

	public JoinUs getById(Long id) {
		return joinUsDao.getById(id);
	}

	public void modifyJoinUs(JoinUs joinUs) {
		joinUsDao.update(joinUs);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return joinUsDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
