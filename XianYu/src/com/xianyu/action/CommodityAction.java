package com.xianyu.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.xianyu.action.BaseAction;
import com.xianyu.orm.Commodity;
import com.xianyu.orm.LanMu;
import com.xianyu.orm.Orders;
import com.xianyu.orm.TuiJian;
import com.xianyu.orm.User;
import com.xianyu.service.OrderService;
import com.xianyu.util.FileOpreationUtil;
import com.xianyu.util.HqlHelper;

public class CommodityAction extends BaseAction<Commodity>{
	private Integer lanMuId;
	private String spname;
	private File[] upload;
	private String[] uploadFileName;
	private String uploadImg;
	FileOpreationUtil fileUtil;
 	public String fabupage(){
		List<LanMu> lanMus=lanMuService.getPageBean( 1, 1000, new HqlHelper(LanMu.class,"l").addWhereCondition("l.lanMu.id=null")).getRecordList();
		ActionContext.getContext().put("lanMus", lanMus);
		return "fabupage";
	}
	
	public String fabu() throws Exception{
		System.out.println("栏目ID"+lanMuId);
		System.out.println(uploadFileName.length);
		System.out.println(upload.length);
		System.out.println("BUG________"+uploadFileName[0]+"---------"+uploadFileName[1]);
		for(int i=0;i<upload.length;i++){
			uploadFileName[i] = fileUtil.modifyFileName(uploadFileName[i]);
			FileOutputStream fos = new FileOutputStream(getUploadImg()+"\\"+uploadFileName[i]);
			FileInputStream fis = new FileInputStream(upload[i]);
			byte [] a = new byte[9024];
			int length = 0;
			while((length=fis.read(a))>0){
				fos.write(a, 0, length);
			}
			fos.close();
			fis.close();
		}
		model.setImgUrl(uploadFileName[0]);
		model.setCanshuUrl(uploadFileName[1]);
		model.setState(true);
		LanMu lanMu=lanMuService.getById(lanMuId);
		model.setDate(new Date());
		model.setUser((User)ActionContext.getContext().getSession().get("loginer"));
		commodityService.save(model);
		lanMu.getCommodities().add(model);
		lanMuService.update(lanMu);
		return "fabu";
	}
	
	/**
	 * 级联 生成json
	 * @throws IOException 
	 */
	public String finderji() throws IOException{
		String id=ServletActionContext.getRequest().getParameter("id");
		List<LanMu> lanMus=lanMuService.getPageBean( 1, 1000, new HqlHelper(LanMu.class,"l").addWhereCondition("l.lanMu.id=?",Integer.parseInt(id))).getRecordList();
		String json="";
		for(int i=0;i<lanMus.size();i++){
			LanMu lanMu = lanMus.get(i);
			 String str="{\"key\":"+lanMu.getId()+",\"value\":\""+lanMu.getName()+"\"},";
			 json+=str;
		}
		String jsonstr=json.substring(0, json.length()-1);
		jsonstr="["+jsonstr+"]";
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		ServletActionContext.getResponse().getWriter().print(jsonstr);
		return null;
	}
	/**
	 * 商品详情
	 * @return
	 */
	public String xiangqing(){
		Commodity commodity=commodityService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(commodity);
		return "xiangqing";
	}
	/**
	 * 我寄售的商品
	 * @return
	 */
	public String mySp(){
		User user=(User) ActionContext.getContext().getSession().get("loginer");
		List<Orders> orders=orderService.getPageBean(1, 1000, new HqlHelper(Orders.class,"o").addWhereCondition("o.commodity.user.id=?",user.getId())).getRecordList();
		ActionContext.getContext().put("orders", orders);
		return "mySp";
	}
	/**
	 * 搜索
	 * @return
	 * @throws Exception 
	 */
	public String search() throws Exception{
		//spname=new String(spname.getBytes(),"utf-8");
		new HqlHelper(Commodity.class, "c").addWhereCondition("c.name like ?", "%"+spname+"%").addWhereCondition("c.state=?", true).preparePageBeanForStruts2(1, 1000, commodityService);
		return "search";
	}
	/**
	 * 推荐搜索
	 * @return
	 */
	public String TJsearch() throws Exception{
		TuiJian jian=tuiJianService.getById(model.getId());
		new HqlHelper(Commodity.class, "c").addWhereCondition("c.name like ?", "%"+jian.getName()+"%").addWhereCondition("c.state=?", true).preparePageBeanForStruts2(1, 1000, commodityService);
		return "search";
	}
	/**
	 * 导航搜索1
	 * @return
	 */
	public String dhSearch(){
		System.out.println(model.getId());
		new HqlHelper(Commodity.class, "c").addWhereCondition("c.lanMu.id=?",model.getId()).addWhereCondition("c.state=?", true).preparePageBeanForStruts2(1, 1000, commodityService);
		return "search";
	}
	/**
	 * 导航搜索2
	 * @return
	 */
	public String DHSearch(){
		new HqlHelper(Commodity.class, "c").addWhereCondition("c.lanMu.lanMu.id=?",model.getId()).addWhereCondition("c.state=?", true).preparePageBeanForStruts2(1, 1000, commodityService);
		return "search";
	}
	public Integer getLanMuId() {
		return lanMuId;
	}
	public void setLanMuId(Integer lanMuId) {
		this.lanMuId = lanMuId;
	}

	public String getSpname() {
		return spname;
	}

	public void setSpname(String spname) {
		this.spname = spname;
	}

	public File[] getUpload() {
		return upload;
	}

	public void setUpload(File[] upload) {
		this.upload = upload;
	}

	public String[] getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadImg() {
		return ServletActionContext.getServletContext().getRealPath(uploadImg);
	}

	public void setUploadImg(String uploadImg) {
		this.uploadImg = uploadImg;
	}
	
}
