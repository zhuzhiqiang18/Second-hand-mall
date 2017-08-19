package com.xianyu.action.admin;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.action.BaseAction;
import com.xianyu.orm.Orders;
import com.xianyu.util.HqlHelper;

public class AdminOrderAction extends BaseAction<Orders>{
    public String list(){
    	new HqlHelper(Orders.class, "o")
		.addOrderByProperty("o.createTime", false)
		.preparePageBeanForStruts2(1, 1000, orderService);
		return "list";
    }
    public String xiangqing(){
    	ActionContext.getContext().getValueStack().push(orderService.getById(model.getId()));
		return "xiangqing";
    }
    public String sousuo(){
    	new HqlHelper(Orders.class, "o")
		.addOrderByProperty("o.createTime", false)
		.addWhereCondition("o.orderId LIKE '%"+model.getOrderId()+"%'")
		.preparePageBeanForStruts2(1, 1000, orderService);
		return "sousuo";
    }
}
