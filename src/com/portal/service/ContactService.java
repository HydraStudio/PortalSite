package com.portal.service;

import java.util.List;

import com.portal.model.Contact;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface ContactService {

	List<Contact> findAllContacts();
	
	void deleteContact(Long id);
	
	void saveContact(Contact contact);

	Contact getById(Long id);

	void modifyContact(Contact contact);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
