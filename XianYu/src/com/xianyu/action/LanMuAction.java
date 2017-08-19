package com.xianyu.action;

import java.util.List;

import com.xianyu.orm.LanMu;
import com.xianyu.util.HqlHelper;

public class LanMuAction extends BaseAction<LanMu> {
	// 网站首页导航
	public String indexlist() {
		List<LanMu> lanMus=lanMuService.getPageBean(
				1,
				5,
				new HqlHelper(LanMu.class, "l").addWhereCondition(
						"l.lanMu.id=null").addOrderByProperty("l.date", true))
				.getRecordList();
		return "indexlist";
	}
}
