package com.portal.service;

import java.util.Date;
import java.util.List;

import com.portal.model.ActivityInfo;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface ActivityInfoService {

List<ActivityInfo> findAllModules();
	
	void deleteActivityInfo(Long id);
	
	void saveActivityInfo(ActivityInfo activityInfo);

	ActivityInfo getById(Long id);

	void modifyActivityInfo(ActivityInfo activityInfo);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
	
	List<ActivityInfo> findByDate(Date date);
	
	List<ActivityInfo> getPeriodActivities(Date beginDate, Date endDate);
}
