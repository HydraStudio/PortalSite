package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.TeacherDao;
import com.portal.model.Teacher;
import com.portal.model.PageBean;
import com.portal.service.TeacherService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {

	@Resource
	private TeacherDao teacherDao;
	
	public List<Teacher> findAllTeachers() {
		return teacherDao.findAll();
	}

	public void deleteTeacher(Long id) {

		teacherDao.delete(id);
	}

	public void saveTeacher(Teacher teacher) {
		teacherDao.save(teacher);
	}

	public Teacher getById(Long id) {
		return teacherDao.getById(id);
	}

	public void modifyTeacher(Teacher teacher) {
		teacherDao.update(teacher);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return teacherDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
