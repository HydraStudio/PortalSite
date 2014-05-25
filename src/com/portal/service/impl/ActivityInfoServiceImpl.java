package com.portal.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.ActivityInfoDao;
import com.portal.model.ActivityInfo;
import com.portal.model.PageBean;
import com.portal.service.ActivityInfoService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class ActivityInfoServiceImpl implements ActivityInfoService {

	@Resource
	private ActivityInfoDao activityInfoDao;

	public List<ActivityInfo> findAllModules() {
		return activityInfoDao.findAll();
	}

	public void deleteActivityInfo(Long id) {
		activityInfoDao.delete(id);
	}

	public void saveActivityInfo(ActivityInfo activityInfo) {
		activityInfoDao.save(activityInfo);
	}

	public ActivityInfo getById(Long id) {
		return activityInfoDao.getById(id);
	}

	public void modifyActivityInfo(ActivityInfo activityInfo) {
		activityInfoDao.update(activityInfo);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return activityInfoDao.searchPagination(pageNum, pageSize, queryHelper);
	}
	
	public List<ActivityInfo> findByDate(Date date) {
		return activityInfoDao.findByDate(date);
	}
	
	public List<ActivityInfo> getPeriodActivities(Date beginDate, Date endDate) {
		return activityInfoDao.getPeriodActivities(beginDate, endDate);
	}
}
