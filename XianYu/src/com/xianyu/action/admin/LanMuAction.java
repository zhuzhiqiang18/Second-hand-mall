package com.xianyu.action.admin;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.action.BaseAction;
import com.xianyu.orm.LanMu;
import com.xianyu.util.HqlHelper;

public class LanMuAction extends BaseAction<LanMu>{
	public String list(){
		return "list";
	}
	public String addlmar(){
		new HqlHelper(LanMu.class, "l").addWhereCondition("l.lanMu.id=null").preparePageBeanForStruts2(1, 1000, lanMuService);
		return "addlmar";
	}
	
	public String addyijilmar() throws UnsupportedEncodingException{
		LanMu lanMu=lanMuService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(lanMu);
		return "addyijilmar";
	}
	
	public String adderjilmar(){
		return "adderjilmar";
	}
	/**
	 * 顶级LanMu
	 * @return
	 */
	public String addlm(){
		model.setDate(new Date());
		lanMuService.save(model);
		return "addlm";	
	}
	/**
	 * 一级LanMu
	 * @return
	 */
	public String addyijilm(){
		LanMu lanMu=lanMuService.getById(model.getId());
		model.setDate(new Date());
		lanMuService.save(model);
		lanMu.getLanMus().add(model);
		lanMuService.update(lanMu);
		System.out.println("一级栏目------------");
		return "addyijilm";
	}
	/**
	 * 顶层栏目
	 * @return
	 */
	public String addlmpage(){
		/*LanMu lanMu=lanMuService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(lanMu);*/
		return "addlmpage";	
	}
	/**
	 * 一级栏目
	 * @return
	 */
	public String addyjlmpage(){
		LanMu lanMu=lanMuService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(lanMu);
		return "addyjlmpage";	
	}
	/**
	 * 二级栏目
	 * @return
	 */
	public String addrjlmpage(){
		LanMu lanMu=lanMuService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(lanMu);
		return "addrjlmpage";	
	}
	
	public String updatear(){
		LanMu lanMu=lanMuService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(lanMu);
		return "updatear";
	}
	public String update(){
		LanMu lanMu=lanMuService.getById(model.getId());
		lanMu.setAdminName(model.getAdminName());
		lanMu.setName(model.getName());
		lanMuService.update(lanMu);
		return "update";
		
	}
}
