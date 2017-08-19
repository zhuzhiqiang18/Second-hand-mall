package com.xianyu.action;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xianyu.service.AddressService;
import com.xianyu.service.CommodityService;
import com.xianyu.service.LanMuService;
import com.xianyu.service.MessageService;
import com.xianyu.service.OrderService;
import com.xianyu.service.TuiJianService;
import com.xianyu.service.UserService;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	//获取模型驱动
	public T getModel(){
		return model;
	}
	/**
	 * 注入所有的service
	 */
	//-----会员======//
	@Resource
	protected UserService userService;
	@Resource
	protected AddressService addressService;
	@Resource
	protected CommodityService commodityService;
	@Resource
	protected LanMuService lanMuService;
	@Resource
	protected MessageService messageService;
	@Resource
	protected OrderService orderService;
	@Resource
	protected TuiJianService tuiJianService; 
}
