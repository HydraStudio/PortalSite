package com.portal.service;

import java.util.List;

import com.portal.model.Teacher;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface TeacherService {

	List<Teacher> findAllTeachers();
	
	void deleteTeacher(Long id);
	
	void saveTeacher(Teacher teacher);

	Teacher getById(Long id);

	void modifyTeacher(Teacher teacher);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
