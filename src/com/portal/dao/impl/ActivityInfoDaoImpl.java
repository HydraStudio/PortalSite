package com.portal.dao.impl;


import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.portal.base.BaseDaoImpl;
import com.portal.dao.ActivityInfoDao;
import com.portal.model.ActivityInfo;

@Repository
public class ActivityInfoDaoImpl extends BaseDaoImpl<ActivityInfo> implements
		ActivityInfoDao {
	
	@SuppressWarnings("unchecked")
	public List<ActivityInfo> findByDate(Date date) {
		List<ActivityInfo> activityInfos = (List<ActivityInfo>)getSession().createQuery("from ActivityInfo a where a.date= ? ")
						.setParameter(0, date)
						.list();
		return activityInfos;
	}
	
	@SuppressWarnings("unchecked")
	public List<ActivityInfo> getPeriodActivities(Date beginDate, Date endDate) {
		List<ActivityInfo> activityInfos = (List<ActivityInfo>)getSession().createQuery("from ActivityInfo a where a.date >? and a.date <?")
						.setParameter(0, beginDate)
						.setParameter(1, endDate)
						.list();
		return activityInfos;
	}
}
