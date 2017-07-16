package org.fkit.domain;

import java.io.Serializable;

public class Cart implements Serializable{
	private Integer id;
	private Integer user_id;
	private Integer good_id;
	private String good_name; 
	private String good_price;
	private String cart_count;
	private String cart_picture;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getGood_id() {
		return good_id;
	}
	public void setGood_id(Integer good_id) {
		this.good_id = good_id;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public String getGood_price() {
		return good_price;
	}
	public void setGood_price(String good_price) {
		this.good_price = good_price;
	}
	public String getCart_count() {
		return cart_count;
	}
	public void setCart_count(String cart_count) {
		this.cart_count = cart_count;
	}
	public String getCart_picture() {
		return cart_picture;
	}
	public void setCart_picture(String cart_picture) {
		this.cart_picture = cart_picture;
	}
	
}
