package com.xianyu.orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 系统管理员表
 * @author 
 *
 */
public class User implements  java.io.Serializable{
	private Integer id;
	private String username;//账号
	private String password;//密码
	private boolean Admin;//是否是管理员
	private String name;
	private String phone;
	private Set<Address> addresses = new HashSet<Address>();//收货地址
	private Set<Orders> orders= new HashSet<Orders>();//订单
	private Set<Message> messages= new HashSet<Message>();//订单
	private Set<Commodity> commodities= new HashSet<Commodity>();
	private Date createTime;
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isAdmin() {
		return Admin;
	}
	public void setAdmin(boolean admin) {
		Admin = admin;
	}
	public Set<Address> getAddresses() {
		return addresses;
	}
	public void setAddresses(Set<Address> addresses) {
		this.addresses = addresses;
	}
	public Set<Orders> getOrders() {
		return orders;
	}
	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set<Commodity> getCommodities() {
		return commodities;
	}
	public void setCommodities(Set<Commodity> commodities) {
		this.commodities = commodities;
	}
	
}
