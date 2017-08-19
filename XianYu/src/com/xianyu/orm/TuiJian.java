package com.xianyu.orm;

import java.util.Date;

public class TuiJian implements java.io.Serializable{
	private Integer id;
	private String name;
	private String Adminname;
	private Date date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdminname() {
		return Adminname;
	}
	public void setAdminname(String adminname) {
		Adminname = adminname;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
