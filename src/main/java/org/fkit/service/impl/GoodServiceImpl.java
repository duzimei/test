package org.fkit.service.impl;

import java.util.List;
import org.fkit.dao.GoodDao;
import org.fkit.domain.Good;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
/**
 * Good服务层接口实现类
 * @Service("goodService")用于将当前类注释为一个Spring的bean，名为goodService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("goodService")
public  class GoodServiceImpl  implements GoodService{
	/**
	 * 自动注入持久层goodDao对象
	 * */
	@Autowired
	private GoodDao goodDao;

	/**
	 * GoodServiceImpl接口addGood方法实现
	 * @see { GoodService }
	 * */

	@Override
	public List<Good> getAll() {
		// TODO Auto-generated method stub
		return goodDao.findAll();
	}

	@Override
	public Good getGoodDetail(Integer goodsid) {
		// TODO Auto-generated method stub
		return goodDao.findGoodDetail(goodsid);
	}

	@Override
	public void saveGood(Good good) {
		// TODO Auto-generated method stub
		goodDao.saveGood(good);
		
	}

	@Override
	public void modifyGood(Integer goodsid, String goodsname, String goodsprice, String sortid, 
			 String goodscount) {
		// TODO Auto-generated method stub
		goodDao.modifyGood(goodsid, goodsname, goodsprice, sortid,goodscount);
		
	}

	@Override
	public void removeGood(Integer goodsid) {
		// TODO Auto-generated method stub
		goodDao.removeGood(goodsid);
		
	}
}
