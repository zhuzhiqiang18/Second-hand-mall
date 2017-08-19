package com.xianyu.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.orm.Commodity;
import com.xianyu.orm.LanMu;
import com.xianyu.orm.Orders;
import com.xianyu.orm.TuiJian;
import com.xianyu.orm.User;
import com.xianyu.util.HqlHelper;

public class UserAction extends BaseAction<User> {
	public String loginar() {
		return "loginar";
	}

	public String login() {
		List<User> list =userService.getPageBean(
				1,
				1,
				new HqlHelper(User.class, "u").addWhereCondition(
						"u.username=?", model.getUsername()).addWhereCondition(
						"u.password=?", model.getPassword())).getRecordList();
		if (list.size() == 1 && list.get(0) != null) {
			User user=list.get(0);
            ActionContext.getContext().getSession().put("loginer",user);
			return "newindex";

		} else {
			return "errorlogin";
		}
	}

	public String regar() {
		return "regar";
	}

	public String reg() {
		model.setCreateTime(new Date());
		model.setAdmin(false);
		userService.save(model);
		return "newindex";
	}
    /**
     * 退出登录
     * @return
     * @throws IOException
     */
	public String outLine(){
		 ActionContext.getContext().getSession().remove("loginer");
		return "newindex";
	}
	// 获取验证码
	public String yanzhengma() throws IOException {
		String code = (String) ActionContext.getContext().getSession()
				.get("authCode");
		System.out.println("验证码" + code);
		ServletActionContext.getResponse().getWriter().print(code);
		return null;
	}
	
	public String index(){
		//导航
		List<LanMu> lanMus=lanMuService.getPageBean(
				1,
				5,
				new HqlHelper(LanMu.class, "l").addWhereCondition(
						"l.lanMu.id=null").addOrderByProperty("l.date", true))
				.getRecordList();
		ActionContext.getContext().getSession().put("lanMuss", lanMus);
		//推荐
		List<TuiJian> tuiJians =tuiJianService.getPageBean(1,12, new HqlHelper(TuiJian.class,"t").addOrderByProperty("t.date", false)).getRecordList();
		ActionContext.getContext().put("tuiJians", tuiJians);
		//最近销售
		List<Orders> orders =orderService.getPageBean(1,3, new HqlHelper(Orders.class, "o").addWhereCondition("o.zhuangtai=?", 1).addOrderByProperty("o.createTime", false)).getRecordList();
		ActionContext.getContext().put("orders", orders);
		//展示商品
		List<Commodity> commodities = commodityService.getPageBean(1, 6, new HqlHelper(Commodity.class, "c").addWhereCondition("c.state=?", true).addOrderByProperty("c.date", false)).getRecordList();
		ActionContext.getContext().put("commodities", commodities);
		System.out.println("商品个数"+commodities.size());
		return "index";
	}
	
}
