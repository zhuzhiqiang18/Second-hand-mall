package com.xianyu.action.admin;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.action.BaseAction;
import com.xianyu.orm.Commodity;
import com.xianyu.util.HqlHelper;

public class AdminCommodityAction extends BaseAction<Commodity>{
	public String list(){
		//上架商品
		new HqlHelper(Commodity.class, "c").addOrderByProperty("date", false).addWhereCondition("c.state=?", true).preparePageBeanForStruts2(1, 1000, commodityService);
		
		//下架商品
		List<Commodity> commodities=commodityService.getPageBean(1, 1000, new HqlHelper(Commodity.class, "c").addWhereCondition("c.state=?", false).addOrderByProperty("date", false)).getRecordList();
		ActionContext.getContext().put("commodities", commodities);
		return "list";
	}
	//下架
	public String delete(){
		Commodity commodity= commodityService.getById(model.getId());
		commodity.setState(false);
		commodityService.update(commodity);
		return "tolist";
	}
	
	//上架
		public String unDelete(){
			Commodity commodity= commodityService.getById(model.getId());
			commodity.setState(true);
			commodityService.update(commodity);
			return "tolist";
		}
}
