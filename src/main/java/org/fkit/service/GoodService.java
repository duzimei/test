package org.fkit.service;

import java.util.List;

import org.fkit.domain.Good;

public interface GoodService {
	/**
	 * 查找所有商品
	 * @return good 对象集合
	 * */
	List <Good> getAll();
	/**
	 * 查找选择商品详情
	 * @return good 详情对象集合
	 * */
	Good getGoodDetail(Integer goodsid);
	
}
