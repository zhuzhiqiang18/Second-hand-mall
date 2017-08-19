package com.xianyu.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.orm.Address;
import com.xianyu.orm.User;
import com.xianyu.util.HqlHelper;

public class AddressAction extends BaseAction<Address>{
	public String list(){
		User user=(User) ActionContext.getContext().getSession().get("loginer");
		List<Address> addresses=addressService.getPageBean(1, 20, new HqlHelper(Address.class,"a").addWhereCondition("a.user.id=?", user.getId()).addOrderByProperty("a.id", false)).getRecordList();
		ActionContext.getContext().put("addresses", addresses);
		return "list";
	}
	public String addAddress(){
		User user=(User) ActionContext.getContext().getSession().get("loginer");
		model.setUser(user);
		addressService.save(model);
		return "addAddress";
	}
	public String delete(){
		addressService.delete(model.getId());
		return "delete";
		
	}
}
