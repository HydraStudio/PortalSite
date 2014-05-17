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
		List<ActivityInfo> activityInfos = (List<ActivityInfo>)getSession().createQuery("from Activity a where a.date= ? ")
						.setParameter(0, date)
						.list();
		return activityInfos;
	}
}
