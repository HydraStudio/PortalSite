package com.portal.service;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.model.User;

@Service("testService")
public class TestService {

	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveTwoUsers(){
		Session session = sessionFactory.getCurrentSession();
		
		session.save(new User());
//		int a = 1/0;  //exception
		session.save(new User());
	}
}
