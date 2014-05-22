package com.portal.dao;

import com.portal.base.BaseDao;
import com.portal.model.User;

public interface UserDao extends BaseDao<User>{

	User FindByUserNameAndPassword(String username, String password);
}
