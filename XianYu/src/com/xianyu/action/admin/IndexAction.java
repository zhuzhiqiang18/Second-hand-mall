package com.xianyu.action.admin;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.action.BaseAction;
import com.xianyu.orm.User;

public class IndexAction extends BaseAction<User>{
	public String head(){
		User user=userService.getById(1);
		ActionContext.getContext().getSession().put("adminUser", user);
		return "head";
		
	}
	public String top(){
		return "top";
		
	}
	public String left(){
		return "left";
		
	}
	public String main(){
		return "main";
		
	}
	public String index(){
		return "index";
		
	}
}
