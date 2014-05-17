package com.portal.dao;

import java.util.Date;
import java.util.List;

import com.portal.base.BaseDao;
import com.portal.model.ActivityInfo;

public interface ActivityInfoDao extends BaseDao<ActivityInfo> {

	List<ActivityInfo> findByDate(Date date);
}
