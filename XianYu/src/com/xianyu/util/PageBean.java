package com.xianyu.util;

import java.util.List;

public class PageBean {
	//传递的参数
	private int currentPage;//当前页
	private int pageSize;//每页的容量
	//从数据库中取出
	private int recordCount;//总记录数
	private List recordList;//当前页的数据
	
	//设计计算；
	private int pageCount;//总页数
	private int beginPageIndex;//页码开始
	private int endPageIndex;//页码结束
	/**
	 * 开始计算
	 * @param currentPage
	 * @param pageSize
	 * @param recordCount
	 * @param recordList
	 */
	public PageBean(int currentPage, int pageSize, int recordCount,
			List recordList) {
		
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordCount = recordCount;
		this.recordList = recordList;
		pageCount = (recordCount + pageSize - 1) / pageSize;

		// 计算beginPageIndex与endPageIndex
		// >> 不大于10页，就全部显示
		if (pageCount <= 10) {
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}
		// >> 大于10页，就显示 当前附近的共10个页码
		else {
			// 当前附近的共10个页码（前4页 + 当前页 + 后5页）
			beginPageIndex = currentPage - 4;
			endPageIndex = currentPage + 5;
			// 当前面不足4页时，就显示前10页
			if (beginPageIndex < 1) {
				beginPageIndex = 1;
				endPageIndex = 10;
			}
			// 当后面不足5页时，就显示后10页
			else if (endPageIndex > pageCount) {
				endPageIndex = pageCount;
				beginPageIndex = pageCount - 10 + 1; // 显示时会包含结束的边界
			}
		}
	}
	//----------封装的属性
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public List getRecordList() {
		return recordList;
	}
	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getBeginPageIndex() {
		return beginPageIndex;
	}
	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}
	public int getEndPageIndex() {
		return endPageIndex;
	}
	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}
	
	
	
	
}
