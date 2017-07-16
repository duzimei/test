package org.fkit.domain;

import java.io.Serializable;

public class Good implements Serializable{
	private Integer goodsid;			// goodsid
	private String goodsname;	// 商品名
	private String goodsprice;	// 商品价格
	private String sortid; // 种类
	private String goodspicture1;//商品图片1
	private String goodspicture2;//商品图片2
	private String goodspicture3;//商品图片3
	private String goodscount;//商品数量
	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getSortid() {
		return sortid;
	}
	public void setSortid(String sortid) {
		this.sortid = sortid;
	}
	public String getGoodspicture1() {
		return goodspicture1;
	}
	public void setGoodspicture1(String goodspicture1) {
		this.goodspicture1 = goodspicture1;
	}
	public String getGoodspicture2() {
		return goodspicture2;
	}
	public void setGoodspicture2(String goodspicture2) {
		this.goodspicture2 = goodspicture2;
	}
	public String getGoodspicture3() {
		return goodspicture3;
	}
	public void setGoodspicture3(String goodspicture3) {
		this.goodspicture3 = goodspicture3;
	}
	public String getGoodscount() {
		return goodscount;
	}
	public void setGoodscount(String goodscount) {
		this.goodscount = goodscount;
	}
	
	
}
