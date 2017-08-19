package com.xianyu.util;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.xianyu.dao.BaseDao;
public class HqlHelper {

	private String fromClause; // From子句
	private String whereClause = ""; // Where子句
	private String orderByClause = ""; // OrderBy子句

	private List<Object> parameterList = new ArrayList<Object>(); // 参数值列表

	/**
	 * 生成From子句
	 * 
	 * @param clazz
	 *            实体类型
	 * @param alias
	 *            别名
	 */
	public HqlHelper(Class clazz, String alias) {
		fromClause = "FROM " + clazz.getSimpleName() + " " + alias;
	}

	/**
	 * 拼接Where子句，一次添加一个条件
	 * 
	 * @param condition
	 *            表达式
	 * @param params
	 *            表达式中的参数值
	 */
	public HqlHelper addWhereCondition(String condition, Object... params) {
		// 拼接Where子句
		if (whereClause.length() == 0) {
			whereClause = " WHERE " + condition;
		} else {
			whereClause += " AND " + condition;
		}

		// 保存参数
		if (params != null && params.length > 0) {
			for (Object param : params) {
				parameterList.add(param);
			}
		}

		return this;
	}

	/**
	 * 
	 * 如果第一个参数值为true，则拼接Where子句，一次添加一个条件
	 * 
	 * @param append
	 *            表达式
	 * @param condition
	 *            表达式
	 * @param params
	 *            表达式中的参数值
	 */
	public HqlHelper addWhereCondition(boolean append, String condition, Object... params) {
		if (append) {
			addWhereCondition(condition, params);
		}
		return this;
	}

	/**
	 * 拼接OrderBy子句，一次添加一个排序的条件
	 * 
	 * @param propertyName
	 *            排序用的属性
	 * @param asc
	 *            升序或降序（true是升序 ）
	 */
	public HqlHelper addOrderByProperty(String propertyName, boolean asc) {
		if (orderByClause.length() == 0) {
			orderByClause = " ORDER BY " + propertyName + (asc ? " ASC" : " DESC");
		} else {
			orderByClause += ", " + propertyName + (asc ? " ASC" : " DESC");
		}
		return this;
	}

	/**
	 * 如果第一个参数值为true，则拼接OrderBy子句，一次添加一个排序的条件
	 * 
	 * @param append
	 * @param propertyName
	 * @param asc
	 */
	public HqlHelper addOrderByProperty(boolean append, String propertyName, boolean asc) {
		if (append) {
			addOrderByProperty(propertyName, asc);
		}
		return this;
	}

	/**
	 * 获取查询数据列表的HQL语句
	 * 
	 * @return
	 */
	public String getQueryListHql() {
		return fromClause + whereClause + orderByClause;
	}

	/**
	 * 获取查询总记录数的HQL语句
	 * 
	 * @return
	 */
	public String getQueryCountHql() {
		return "SELECT COUNT(*) " + fromClause + whereClause;
	}

	/**
	 * 获取参数值列表，其顺序与HQL中的'?'一一对应
	 * 
	 * @return
	 */
	public List<Object> getParameterList() {
		return parameterList;
	}

	/**
	 * 准备PageBean对象并放到栈顶（在Struts2中才有效）
	 * 
	 * @param pageNum
	 * @param service
	 */
	public void preparePageBeanForStruts2(int pageNum,int size, BaseDao service) {
		PageBean pageBean = service.getPageBean(pageNum,size, this);
		ActionContext.getContext().getValueStack().push(pageBean);
	}
	
}
