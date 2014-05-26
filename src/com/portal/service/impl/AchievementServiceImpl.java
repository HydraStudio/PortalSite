package com.portal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.AchievementDao;
import com.portal.model.Achievement;
import com.portal.model.PageBean;
import com.portal.service.AchievementService;
import com.portal.util.QueryHelper;

@Service
@Transactional
public class AchievementServiceImpl implements AchievementService {

	@Resource
	private AchievementDao achievementDao;
	
	public List<Achievement> findAllAchievements() {
		return achievementDao.findAll();
	}

	public void deleteAchievement(Long id) {

		achievementDao.delete(id);
	}

	public void saveAchievement(Achievement achievement) {
		achievementDao.save(achievement);
	}

	public Achievement getById(Long id) {
		return achievementDao.getById(id);
	}

	public void modifyAchievement(Achievement achievement) {
		achievementDao.update(achievement);
	}

	public PageBean searchPagination(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		return achievementDao.searchPagination(pageNum, pageSize, queryHelper);
	}
}
