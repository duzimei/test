package org.fkit.controller;

import java.util.List;


import org.fkit.domain.Good;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodController {
	/**
	 * 自动注入goodservice
	 * 
	 */
	@Autowired
	@Qualifier("goodService")
	private GoodService goodService;
	/**
	 * 处理goodshow
	 */
	@RequestMapping(value="/goodShow")
	public String goodShow(Model model){
		//获得所有商品集合
		List< Good> good_list = goodService .getAll(); 
		//将所有商品添加到model中
		model.addAttribute("good_list",good_list);
		//跳转到goodShow
		return "goodShow";
	}
	/**
	 * 处理gooddetail
	 */
	@RequestMapping(value="/Detail")
	public ModelAndView  goodDetail(@RequestParam("goodsid") Integer goodsid,
			ModelAndView mv){
		Good good =goodService.getGoodDetail(goodsid);
		mv.addObject("good", good);
		mv.setViewName("forward:/goodDetail");
		return mv;
	}	
}
	
	
	

