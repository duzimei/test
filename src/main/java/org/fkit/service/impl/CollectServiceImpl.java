package org.fkit.service.impl;

import java.util.List;


import org.fkit.dao.CollectDao;
import org.fkit.domain.Collect;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("collectService")
public class CollectServiceImpl implements CollectService{
	/**
	 * 自动注入持久层cartDao对象
	 * */
	@Autowired
	private CollectDao collectDao;


	@Override
	public List<Collect> getAll(Integer userId) {
		// TODO Auto-generated method stub
		return collectDao.findAll(userId);
	}

	@Override
	public Collect findCollect(Integer goodId, Integer userId) {
		// TODO Auto-generated method stub
		return collectDao.findCollect(goodId, userId);
	}

	@Override
	public void saveCollect(Collect collect) {
		// TODO Auto-generated method stub
		collectDao.saveCollect(collect);
	}

	@Override
	public Collect removeCollect(Integer goodId, Integer userId) {
		// TODO Auto-generated method stub
		collectDao.removeCollect(goodId,userId);
		return collectDao.findCollect(goodId,userId);
	}

	

}
