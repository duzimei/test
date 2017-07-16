package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.fkit.domain.Cart;
import org.fkit.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@RequestMapping(value = "/cart")
	public String cart(@RequestParam("user_id") Integer user_id,
			Model model) {
		// 获得所有商品集合
		List<Cart> cart_list = cartService.getAll(user_id);
		// 将商品集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	
	}
	
	@RequestMapping(value = "/good_save")
	public String save(@RequestParam("good_id") Integer good_id,
			@RequestParam("user_id") Integer user_id,
			HttpServletRequest request,
			Model model,
			@ModelAttribute Cart cart) {
		Cart cart1=cartService.findCart(good_id,user_id);
		if (cart1 != null) {
			cartService.addCart(cart);
		}else {			
			cartService.saveCart(cart);
		}
		List<Cart> cart_list = cartService.getAll(user_id);
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
	//清空购物车
	@RequestMapping(value = "/good_clear")
	public String clear(Integer user_id,
			Model model) {
		cartService.clearCart(user_id);
		List<Cart> cart_list = cartService.getAll(user_id);
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到main页面
		return "cart";

	}
	//从购物车里减少数量
	@RequestMapping(value="/good_reduce")
	public String reduce(@RequestParam("good_id") Integer good_id,
			Model model,
			HttpServletRequest request,
			@ModelAttribute Cart cart,
			Integer user_id){
		cartService.reduceCart(cart);
		List<Cart> cart_list = cartService.getAll(user_id);
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
	//取消购物车的东西
	@RequestMapping(value="/good_delete")
	public String remove(@RequestParam("good_id") Integer good_id,
			@RequestParam("user_id") Integer user_id,
			HttpServletRequest request,
			Model model,
			@ModelAttribute Cart cart){
		cartService.removeCart(good_id,user_id);
		List<Cart> cart_list = cartService.getAll(user_id);
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
}	

