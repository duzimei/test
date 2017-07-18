package org.fkit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Collect;

public interface CollectDao {
	/**
	 * 查询所有商品
	 *@return所有对象集合 
	 */
	@Select("select * from collect where userId=#{userId}")
	List <Collect> findAll(@Param("userId")Integer userId);
	/*
	 * 通过商品goodId和userId 查询商品
	 */
	@Select("select * from collect where goodId = #{goodId} AND userId = #{userId} ")
	Collect findCollect(@Param("goodId")Integer goodId,@Param("userId")Integer userId);
	/*
	 * 加入我的收藏
	 */
	@Insert("insert into collect(userId,goodId,goodName,goodPrice,goodPicture) values(#{userId},#{goodId},#{goodName},#{goodPrice},#{goodPicture})")
	void saveCollect(Collect collect);
	
	//删除商品
    @Delete("delete from collect where goodId=#{goodId} AND userId = #{userId}")
	void removeCollect(@Param("goodId")Integer goodId,@Param("userId")Integer userId);

}
