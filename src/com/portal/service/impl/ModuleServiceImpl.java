package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.ModuleDao;
import com.portal.model.Module;
import com.portal.service.ModuleService;


@Service
@Transactional
public class ModuleServiceImpl implements ModuleService {

	@Resource
	private ModuleDao moduleDao;
	
	public List<Module> findAllModules() {
		return moduleDao.findAll();
	}

	public void deleteModule(Long id) {
		moduleDao.delete(id);
	}
}
