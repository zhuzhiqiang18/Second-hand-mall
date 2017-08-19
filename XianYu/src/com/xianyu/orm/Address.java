package com.xianyu.orm;

public class Address implements  java.io.Serializable{
	private Integer id;
	private String shName;//收货人
	private String diqu;//地区
	private String addressName;//s收货地址
	private String guHua;//固话
	private String phone;//手机
	private String email;//email
	private User user;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getShName() {
		return shName;
	}
	public void setShName(String shName) {
		this.shName = shName;
	}
	public String getDiqu() {
		return diqu;
	}
	public void setDiqu(String diqu) {
		this.diqu = diqu;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getGuHua() {
		return guHua;
	}
	public void setGuHua(String guHua) {
		this.guHua = guHua;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
