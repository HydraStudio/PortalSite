package com.portal.service;

import java.util.List;


import com.portal.model.Module;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface ModuleService {

	List<Module> findAllModules();
	
	void deleteModule(Long id);
	
	void saveModule(Module module);

	Module getById(Long id);

	void modifyModule(Module module);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
