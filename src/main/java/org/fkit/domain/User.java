 package org.fkit.domain;

import java.io.Serializable;

/**
 * CREATE TABLE user(
userid INT PRIMARY KEY AUTO_INCREMENT,      #id
loginname VARCHAR(50) UNIQUE,		#登录名 邮箱
PASSWORD VARCHAR(18),			#密码
phone VARCHAR(18),			#电话
address VARCHAR(255)			#地址
);
 * */
public class User implements Serializable{

	private Integer userid;			// id
	private String loginname;	// 登录名
	private String password;	// 密码
	private String phone;		// 电话
	private String address;		// 地址
	private String newPassword;		// 新密码
	
	public Integer getUserid() {
		return userid;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}


	public String getLoginname() {
		return loginname;
	}


	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	
	
	
	@Override
	public String toString() {
		return "User [userid=" + userid + ", loginname=" + loginname + ", password="
				+ password + ",  phone=" + phone + ", address=" + address + "]";
	}


	public String getNewPassword() {
		return newPassword;
	}


	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	
}
