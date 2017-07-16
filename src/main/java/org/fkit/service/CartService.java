package org.fkit.service;

import java.util.List;
import org.fkit.domain.Cart;


public interface CartService {
	/**
	 * 查找所有商品
	 * @return good 对象集合
	 * */
	List <Cart> getAll(Integer user_id);
	Cart findCart(Integer good_id,Integer user_id);
	void saveCart(Cart cart);
	void addCart(Cart cart);
	void reduceCart(Cart cart);
	Cart removeCart(Integer good_id,Integer user_id);
	void clearCart(Integer user_id);

}
