package com.xianyu.action.admin;

import java.util.Date;

import com.xianyu.action.BaseAction;
import com.xianyu.orm.Commodity;
import com.xianyu.orm.TuiJian;
import com.xianyu.util.HqlHelper;

public class AdminTuiJianAction extends BaseAction<TuiJian>{
	public String list(){
		new HqlHelper(TuiJian.class, "c").addOrderByProperty("date", false).preparePageBeanForStruts2(1, 1000, tuiJianService);
		return "list";
	}
	public String addar(){
		return "addar";
	}
	public String add(){
		model.setDate(new Date());
		tuiJianService.save(model);
		return "add";
	}
	public String delete(){
		tuiJianService.delete(model.getId());
		return "delete";
		
	}
}
