package com.portal.service;

import java.util.List;


import com.portal.model.Module;

public interface ModuleService {

	List<Module> findAllModules();
	
	void deleteModule(Long id);
}
