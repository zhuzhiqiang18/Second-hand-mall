package com.xianyu.orm;

import java.util.Date;

/**
 * 留言表
 * @author 
 *
 */
public class Message implements java.io.Serializable{
	private Integer id;
	private String context;
	private String huifuStyle;//评价类型
    private Date date;
    private User user;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getHuifuStyle() {
		return huifuStyle;
	}
	public void setHuifuStyle(String huifuStyle) {
		this.huifuStyle = huifuStyle;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
    
}
