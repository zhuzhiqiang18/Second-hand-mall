package com.xianyu.orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.print.attribute.HashAttributeSet;

/**
 * 商品表
 * @author 
 *
 */
public class Commodity implements java.io.Serializable{
	private Integer id;
	private String name;
	private String imgUrl;//宝贝照片
	private String canshuUrl;//参数照片
	private float yuanjia;
	private float xianjia;
	private String miaoshu;
	private LanMu lanMu;
	private User user;
	private String address;
	private String zhenshiname;
	private String phone;
	private float yunfei;
	private boolean oldOrNew;
	private Date date;
	private Set<Message> messages = new HashSet<Message>();
	private boolean state=true;//状态  true上架
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
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public float getYuanjia() {
		return yuanjia;
	}
	public void setYuanjia(float yuanjia) {
		this.yuanjia = yuanjia;
	}
	public float getXianjia() {
		return xianjia;
	}
	public void setXianjia(float xianjia) {
		this.xianjia = xianjia;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public LanMu getLanMu() {
		return lanMu;
	}
	public void setLanMu(LanMu lanMu) {
		this.lanMu = lanMu;
	}
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZhenshiname() {
		return zhenshiname;
	}
	public void setZhenshiname(String zhenshiname) {
		this.zhenshiname = zhenshiname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public float getYunfei() {
		return yunfei;
	}
	public void setYunfei(float yunfei) {
		this.yunfei = yunfei;
	}
	public boolean isOldOrNew() {
		return oldOrNew;
	}
	public void setOldOrNew(boolean oldOrNew) {
		this.oldOrNew = oldOrNew;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getCanshuUrl() {
		return canshuUrl;
	}
	public void setCanshuUrl(String canshuUrl) {
		this.canshuUrl = canshuUrl;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	
}
