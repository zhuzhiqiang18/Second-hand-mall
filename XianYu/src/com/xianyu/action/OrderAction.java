package com.xianyu.action;

import java.util.Date;
import java.util.List;

import javax.persistence.criteria.Order;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.xianyu.orm.Address;
import com.xianyu.orm.Commodity;
import com.xianyu.orm.Orders;
import com.xianyu.orm.User;
import com.xianyu.util.HqlHelper;
import com.xianyu.util.OrderId;

public class OrderAction extends BaseAction<Orders> {
	private Integer addressId;
	private String orderIdOrName;

	// 所有订单
	public String list() {
		User user = (User) ActionContext.getContext().getSession()
				.get("loginer");
		System.out.println("user.getId()" + user.getId());
		new HqlHelper(Orders.class, "o")
				.addWhereCondition("o.user.id=?", user.getId())
				.addOrderByProperty("o.createTime", false)
				.preparePageBeanForStruts2(1, 1000, orderService);
		return "list";
	}

	// 购买
	public String buy() {
		if (ActionContext.getContext().getSession().get("loginer") == null) {
			return "login";
		} else {
			// 收货地址
			User user = (User) ActionContext.getContext().getSession()
					.get("loginer");
			user = userService.getById(user.getId());
			ActionContext.getContext().getValueStack().push(user);
			// 购买的商品
			System.out.println("model.getId()" + model.getId());
			Commodity commodity = commodityService.getById(model.getId());
			ActionContext.getContext().getValueStack().push(commodity);
			return "buy";
		}
	}

	// 生成订单
	public String buy_order() {
		Commodity commodity = commodityService.getById(model.getId());
		Address address = addressService.getById(addressId);
		model.setOrderId(OrderId.createOrderId());
		model.setAddress(address);
		model.setCommodity(commodity);
		model.setCreateTime(new Date());
		model.setMerMoney(commodity.getXianjia() + commodity.getYunfei());
		model.setZhuangtai(0);// 未支付
		model.setZhifu("在线支付");
		model.setUser((User) ActionContext.getContext().getSession()
				.get("loginer"));
		orderService.save(model);
		orderService.update(model);
		Orders order = orderService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(order);
		return "buy_order";
	}

	public String buy_ok() {
		Orders order = orderService.getById(model.getId());
		Commodity commodity=order.getCommodity();
		commodity.setState(false);
		commodityService.update(commodity);
		order.setZhuangtai(1);
		orderService.update(order);
		return "buy_ok";
	}

	// 订单详情
	public String orderInfo() {
		Orders order = orderService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(order);
		return "orderInfo";
	}

	// 确认发货
	public String fahuoar() {
		Orders order = orderService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(order);
		return "fahuoar";
	}

	public String fahuo() {
		Orders order = orderService.getById(model.getId());
		order.setZhuangtai(2);
		order.setKuaidi(model.getKuaidi());
		order.setKuaididanhao(model.getKuaididanhao());
		orderService.update(order);
		return "fahuo";
	}
    public String xianjiaBuy(){
    	if (ActionContext.getContext().getSession().get("loginer") == null) {
			return "login";
		} else {
			// 购买的商品
			Commodity commodity = commodityService.getById(model.getId());
			model.setOrderId(OrderId.createOrderId());
			model.setCommodity(commodity);
			model.setCreateTime(new Date());
			model.setZhifu("线下支付");
			model.setMerMoney(commodity.getXianjia() + commodity.getYunfei());
			model.setZhuangtai(1);//
			model.setUser((User) ActionContext.getContext().getSession()
					.get("loginer"));
			orderService.save(model);
			return "xianjiaBuy";
			}
    }
	// 确认收货
	public String shouhuoar() {
		Orders order = orderService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(order);
		return "shouhuoar";
	}

	public String shouhuo() {
		Orders order = orderService.getById(model.getId());
		order.setZhuangtai(3);
		orderService.update(order);
		return "shouhuo";
	}

	// 搜索购买商品的订单
	public String ssbuy() {
		User user = (User) ActionContext.getContext().getSession()
				.get("loginer");
		System.out.println("user.getId()" + user.getId());
		new HqlHelper(Orders.class, "l")
				.addWhereCondition("l.user.id=?", user.getId())
				.addWhereCondition(
						"(l.commodity.name LIKE '%" +orderIdOrName +
						 "%' OR l.orderId LIKE '%"+orderIdOrName+"%')")
				.preparePageBeanForStruts2(1, 1000, orderService);
		return "ssbuy";
	}

	// 搜索出售的商品
	public String sscs() {
		System.out.println(orderIdOrName);
		User user = (User) ActionContext.getContext().getSession()
				.get("loginer");
		System.out.println(user.getId());
		List<Order> orders = orderService.getPageBean(
				1,
				1000,
				new HqlHelper(Orders.class, "o").addWhereCondition(
						"o.commodity.user.id=?", user.getId())
						.addWhereCondition(
								"o.commodity.name like '%" + orderIdOrName
										+ "%' OR o.orderId like '%" + orderIdOrName+"%'"))
				.getRecordList();
		ActionContext.getContext().put("orders", orders);
		return "sscs";
	}

	public String addAddress() {
		return "addAddress";
	}

	// ////////////////////////////////////
	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public String getOrderIdOrName() {
		return orderIdOrName;
	}

	public void setOrderIdOrName(String orderIdOrName) {
		this.orderIdOrName = orderIdOrName;
	}

}
