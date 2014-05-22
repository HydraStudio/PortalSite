package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.UserDao;
import com.portal.model.PageBean;
import com.portal.model.User;
import com.portal.service.UserService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public List<User> findAllUsers() {
		return userDao.findAll();
	}

	public void deleteUser(Long id) {
		userDao.delete(id);
	}

	public void saveUser(User user) {
		userDao.save(user);
	}

	public User getById(Long id) {
		return userDao.getById(id);
	}

	public void modifyUser(User user) {
		userDao.update(user);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return userDao.searchPagination(pageNum, pageSize, queryHelper);
	}
	
	public User FindByUserNameAndPassword(String username, String password) {
		User user = userDao.FindByUserNameAndPassword(username, password);
		return user;
	}
}
