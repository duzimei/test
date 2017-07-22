package org.fkit.service;

import java.util.List;



import org.fkit.domain.User;
/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	User login(String loginname,String password);
	
	/**
	 * 添加用户
	 * @param User 用户对象
	 * */
	void addUser(User user);
	/**
	 * 修改密码
	 */
	void updatePassword(User user);
//	/**
//	 * 找回密码
//	 */
//	void updateUserPassword(String loginname,String password);
	User find(String loginname,String phone);
	


	
}
