package org.fkit.dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Good;

public interface GoodDao {
	
	/**
	 * 查询所有商品
	 *@return所有对象集合 
	 */
	@Select("select * from good")
	List <Good> findAll();
	
	/**
	 * 查询商品详情
	 *@return所有对象集合 
	 */
	@Select("select * from good where goodsid = #{goodsid}")
	Good findGoodDetail(Integer goodsid);
	/**
	 * 后台添加商品
	 */
	@Insert("insert into good(goodsname,goodsprice,sortid,goodspicture1,goodspicture2,goodspicture3,goodscount) values(#{goodsname},#{goodsprice},#{sortid},#{goodspicture1},#{goodspicture2},#{goodspicture3},#{goodscount})")
	@Options(useGeneratedKeys=true,keyProperty="goodsid")
	void saveGood(Good good);
	/*
	 * 后台修改商品
	 */
	@Update("update good set goodsname=#{goodsname}, goodsprice=#{goodsprice},sortid=#{sortid},goodscount=#{goodscount} where goodsid = #{goodsid}")
	void modifyGood(@Param("goodsid")Integer goodsid,
			@Param("goodsname")String goodsname,
			@Param("goodsprice")String goodsprice,
			@Param("sortid")String sortid,
			@Param("goodscount")String goodscount
			);
	 //删除商品
    @Delete("delete from good where goodsid = #{goodsid}")
	void removeGood(@Param("goodsid")Integer goodsid);
	
}
