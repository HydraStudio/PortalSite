package com.portal.service;

import java.util.List;

import com.portal.model.JoinUs;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface JoinUsService {

	List<JoinUs> findAllJoinUs();
	
	void deleteJoinUs(Long id);
	
	void saveJoinUs(JoinUs joinUs);

	JoinUs getById(Long id);

	void modifyJoinUs(JoinUs joinUs);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
