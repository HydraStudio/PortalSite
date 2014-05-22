package com.portal.dao.impl;


import org.springframework.stereotype.Repository;
import org.apache.commons.codec.digest.DigestUtils;

import com.portal.base.BaseDaoImpl;
import com.portal.dao.UserDao;
import com.portal.model.User;


@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	public User FindByUserNameAndPassword(String username, String password) {
		// 使用密码的MD5摘要进行对比
		String md5Digest = DigestUtils.md5Hex(password);
		return (User)getSession().createQuery("from User u where u.username = ? and u.password = ? ")
					.setParameter(0, username)
					.setParameter(1, md5Digest)
					.uniqueResult();
	}
}
