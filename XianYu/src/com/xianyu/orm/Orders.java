package com.xianyu.orm;

import java.util.Date;

/**
 * 订单表
 * @author 
 *
 */
public class Orders implements java.io.Serializable{
	private Integer id;
	private String orderId;//订单ID
	private float merMoney;//金额
	private int zhuangtai;//1未付款  2已付款 3完成交易
	private String zhifu;//支付方式
	private String peisong;// 
	private User user;//购买人
	private Commodity commodity;//商品
	private Address address;
	private Date createTime;
	private String beizhu;
	private String kuaidi;
	private String kuaididanhao;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public float getMerMoney() {
		return merMoney;
	}
	public void setMerMoney(float merMoney) {
		this.merMoney = merMoney;
	}
	public int getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(int zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public String getZhifu() {
		return zhifu;
	}
	public void setZhifu(String zhifu) {
		this.zhifu = zhifu;
	}
	public String getPeisong() {
		return peisong;
	}
	public void setPeisong(String peisong) {
		this.peisong = peisong;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getKuaidi() {
		return kuaidi;
	}
	public void setKuaidi(String kuaidi) {
		this.kuaidi = kuaidi;
	}
	public String getKuaididanhao() {
		return kuaididanhao;
	}
	public void setKuaididanhao(String kuaididanhao) {
		this.kuaididanhao = kuaididanhao;
	}
	
}
