package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.ContactDao;
import com.portal.model.Contact;
import com.portal.model.PageBean;
import com.portal.service.ContactService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {

	@Resource
	private ContactDao contactDao;
	
	public List<Contact> findAllContacts() {
		return contactDao.findAll();
	}

	public void deleteContact(Long id) {

		contactDao.delete(id);
	}

	public void saveContact(Contact contact) {
		contactDao.save(contact);
	}

	public Contact getById(Long id) {
		return contactDao.getById(id);
	}

	public void modifyContact(Contact contact) {
		contactDao.update(contact);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return contactDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
