package org.fkit.dao;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.fkit.domain.Good;

public interface GoodDao {
	
	/**
	 * 查询所有商品
	 *@return所有对象集合 
	 */
	@Select("select * from good")
	List<Good> findAll();
	
	/**
	 * 查询商品详情
	 *@return所有对象集合 
	 */
	@Select("select * from good where goodsid = #{goodsid}")
	Good findGoodDetail(Integer goodsid);
	
	
}
