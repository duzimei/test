package org.fkit.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;



import static org.fkit.util.common.TestConstants.USER_SESSION;

import org.fkit.domain.Cart;
import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.fkit.util.common.TestConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 处理/login请求
	 * */
	@RequestMapping(value="/login")
	 public ModelAndView login( String loginname,
			  String password,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		User user = userService.login(loginname, password);
		if(user != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute(TestConstants.USER_SESSION, user);
			// 转发到main请求
			mv.setViewName(("forward:/main"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("forward:/loginForm");
		}
		return mv;
	}
	/**
	 * 处理添加请求
	 * @param User user 要添加用户的对象
	 * @param ModelAndView mv
	 **/
	@RequestMapping(value = "/register")
	public ModelAndView addUser(
			@ModelAttribute User user,
			ModelAndView mv){
			userService.addUser(user);
				//设置客户端跳转到登录页面
			mv.setViewName("loginForm");
				return mv;
	  }
	/**
	 * 修改密码
	 */
	@RequestMapping(value = "/modifyPassword")
	public ModelAndView  updatePassword(@RequestParam("loginname") String loginname,
			@RequestParam("password") String password,
			Model model,
			ModelAndView mv,
			HttpServletRequest request,
			@ModelAttribute User user){
		User user1 = userService.login(loginname, password);
		if(user1 != null){
			userService.updatePassword(user);
			mv.setViewName(("forward:/main"));
		}else{
			// 修改密码失败，设置失败提示信息，并跳转到修改页面
			mv.addObject("message","登录名或密码错误，修改密码失败!");
			mv.setViewName("forward:/changePassword");
		}
		return mv;
	}
		
	
}
