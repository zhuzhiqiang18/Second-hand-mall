package com.xianyu.orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
/**
 * 栏目表
 * @author 
 *
 */
public class LanMu implements java.io.Serializable{
	private Integer id;
	private String name;//栏目名称
	private String yijilm;//上级栏目名称
	private String shangJiLanMu;//上级栏目名称
	private int index;//索引值
	private String adminName;//操作员
	private Set<Commodity> commodities = new HashSet<Commodity>();//商品
	private LanMu lanMu;//上级栏目
	private Set<LanMu> lanMus = new HashSet<LanMu>(); 
	private Date date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShangJiLanMu() {
		return shangJiLanMu;
	}
	public void setShangJiLanMu(String shangJiLanMu) {
		this.shangJiLanMu = shangJiLanMu;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public Set<Commodity> getCommodities() {
		return commodities;
	}
	public void setCommodities(Set<Commodity> commodities) {
		this.commodities = commodities;
	}
	public Set<LanMu> getLanMus() {
		return lanMus;
	}
	public void setLanMus(Set<LanMu> lanMus) {
		this.lanMus = lanMus;
	}
	public String getYijilm() {
		return yijilm;
	}
	public void setYijilm(String yijilm) {
		this.yijilm = yijilm;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public LanMu getLanMu() {
		return lanMu;
	}
	public void setLanMu(LanMu lanMu) {
		this.lanMu = lanMu;
	}
	
}
