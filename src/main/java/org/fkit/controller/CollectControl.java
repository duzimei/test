package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Cart;
import org.fkit.domain.Collect;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CollectControl {
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	
	@RequestMapping(value = "/collect")
	public String collect(@RequestParam("userId") Integer userId,
			Model model) {
		// 获得所有商品集合
		List<Collect> collect_list = collectService.getAll(userId);
		// 将商品集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collect";
	
	}
	@RequestMapping(value = "/collect_save")
	public String save(@RequestParam("goodId") Integer goodId,
			@RequestParam("userId") Integer userId,
			HttpServletRequest request,
			Model model,
			@ModelAttribute Collect collect) {
		Collect collect1=collectService.findCollect(goodId,userId);
		if (collect1 != null) {
			
		}else {			
			collectService.saveCollect(collect);
		}
		List<Collect> collect_list = collectService.getAll(userId);
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collect";
	}
	//取消购物车的东西
		@RequestMapping(value="/collect_delete")
		public String remove(@RequestParam("goodId") Integer goodId,
				@RequestParam("userId") Integer userId,
				HttpServletRequest request,
				Model model,
				@ModelAttribute Collect collect){
			collectService.removeCollect(goodId,userId);
			List<Collect> collect_list = collectService.getAll(userId);
			// 将图书集合添加到model当中
			model.addAttribute("collect_list", collect_list);
			// 跳转到cart页面
			return "collect";
		}

}
