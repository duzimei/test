package org.fkit.service.impl;

import java.util.List;


import javax.management.RuntimeErrorException;
import org.fkit.dao.CartDao;
import org.fkit.domain.Cart;
import org.fkit.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Cart服务层接口实现类
 * @Service("cartService")用于将当前类注释为一个Spring的bean，名为cartService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("cartService")
public class CartServiceImpl implements CartService{
	/**
	 * 自动注入持久层cartDao对象
	 * */
	@Autowired
	private CartDao cartDao;

	@Override
	public List<Cart> getAll(Integer user_id) {
		// TODO Auto-generated method stub
		return cartDao.findAll(user_id);
	}

	@Override
	public Cart findCart(Integer good_id,Integer user_id) {
		// TODO Auto-generated method stub
		return cartDao.findCart(good_id,user_id);
	}
	@Override
	public void saveCart(Cart cart) {
		// TODO Auto-generated method stub
		cartDao.saveCart(cart);
	}

	@Override
	public void addCart(Cart cart) {
		// TODO Auto-generated method stub
		cartDao.addCart(cart);
	}
	@Override
	public Cart removeCart(Integer good_id,Integer user_id) {
		// TODO Auto-generated method stub
		cartDao.removeCart(good_id,user_id);
		return cartDao.findCart(good_id,user_id);
	}

	@Override
	public void reduceCart(Cart cart) {
	// TODO Auto-generated method stub
		cartDao.reduceCart(cart);
}
	
	@Override
	public void clearCart(Integer user_id) {
		// TODO Auto-generated method stub
		cartDao.clearCart(user_id);
	}
}
