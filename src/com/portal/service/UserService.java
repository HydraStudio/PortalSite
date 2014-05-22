package com.portal.service;

import java.util.List;

import com.portal.model.PageBean;
import com.portal.model.User;
import com.portal.util.QueryHelper;

public interface UserService {

	List<User> findAllUsers();
	
	void deleteUser(Long id);
	
	void saveUser(User user);

	User getById(Long id);

	void modifyUser(User user);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
	
	User FindByUserNameAndPassword(String username, String password);
}
