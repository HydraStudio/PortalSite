package com.portal.service;

import java.util.List;

import com.portal.model.Achievement;
import com.portal.model.PageBean;
import com.portal.util.QueryHelper;

public interface AchievementService {

	List<Achievement> findAllAchievements();
	
	void deleteAchievement(Long id);
	
	void saveAchievement(Achievement achievement);

	Achievement getById(Long id);

	void modifyAchievement(Achievement achievement);
	
	PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper);
}
