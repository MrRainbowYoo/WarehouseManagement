package org.crazyit.goodssys.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "goods_inf")
public class Goods {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "goods_id")
	private String goods_id;
	
	@Column(name = "goods_name")
	private String goods_name;
	
	private String goods_type;
	private String goods_text;
	
	private double price;
	private Integer total_num;
	private Integer now_num;
	private Integer discount;
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {		
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getGoods_type() {
		return goods_type;
	}

	public void setGoods_type(String goods_type) {
		this.goods_type = goods_type;
	}

	public String getGoods_text() {
		return goods_text;
	}

	public void setGoods_text(String goods_text) {
		this.goods_text = goods_text;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Integer getTotal_num() {
		return total_num;
	}

	public void setTotal_num(Integer total_num) {
		this.total_num = total_num;
	}

	public Integer getNow_num() {
		return now_num;
	}

	public void setNow_num(Integer now_num) {
		this.now_num = now_num;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	
	
}
