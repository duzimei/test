package org.fkit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Cart;


public interface CartDao {
	/**
	 * 查询所有商品
	 *@return所有对象集合 
	 */
	@Select("select * from cart where user_id=#{user_id}")
	List <Cart> findAll(@Param("user_id")Integer user_id);
	/*
	 * 通过商品good_id和user_id 查询商品
	 */
	@Select("select * from cart where good_id = #{good_id} AND user_id = #{user_id} ")
	Cart findCart(@Param("good_id")Integer good_id,@Param("user_id")Integer user_id);
	/*
	 * 加入购物车
	 */
	@Insert("insert into cart(user_id,good_id,good_name,good_price,cart_count,cart_picture) values(#{user_id},#{good_id},#{good_name},#{good_price},#{cart_count},#{cart_picture})")
	void saveCart(Cart cart);
	//增加书籍数量
    @Update("update cart set cart_count=cart_count+1 where good_id=#{good_id}")
	void addCart(Cart cart);
    //清空购物车
    @Delete("delete from cart where user_id=#{user_id}")
	void clearCart(@Param("user_id") Integer user_id);
    //减少购物车商品数量
    @Update("update cart set cart_count=cart_count-1 where good_id=#{good_id}")
	void reduceCart(Cart cart);
    //删除商品
    @Delete("delete from cart where good_id=#{good_id} AND user_id = #{user_id}")
	void removeCart(@Param("good_id")Integer good_id,@Param("user_id")Integer user_id);
	
			
}
