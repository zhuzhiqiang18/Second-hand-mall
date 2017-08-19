<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
		<script src="${pageContext.request.contextPath}/js/Select-More.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="Manage-line line">
			<div class="tab table-bordered">
				<div class="tab-head">
					<strong><i class="fa fa-shopping-cart"></i>订单管理</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">订单信息</a></li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<div class="line">
							<form action="adminOrder_sousuo.action" method="post">
								<div class="x6">
									<strong>订单号：</strong>
									<input type="text" name="orderId" placeholder="请输入订单号" />
									<input type="submit" id="" name="" class="much-search" value="搜索" />
								</div>
							</form>
						</div>
						<div class="table-responsive-y">
							<table class="table table-hover">
								<thead>
									<tr class="current">
										<th>
											订单号
										</th>
										<th>
											商品名称
										</th>
										<th>
											卖家
										</th>
										<th>
											收货人
										</th>
										<th>
											收货地址
										</th>
										<th>
											联系方式
										</th>
										<th>
											金额（元）
										</th>
										<th>
											交易方式
										</th>
										<th>
											出售时间
										</th>
										<th>
											状态
										</th>
									</tr>
								</thead>
								<s:iterator value="recordList">
								<tbody>
									<tr>
										<td>
											<a href="adminOrder_xiangqing.action?id=${id}">${orderId}</a>
										</td>
										<td>
											${commodity.name}
										</td>
										<td>
											${commodity.user.name}
										</td>
										<td>
											${user.name}
										</td>
										<td>
											${address.diqu}${address.addressName}
										</td>
										<td>
											${address.phone}
										</td>
										<td>
											${merMoney}
										</td>
										<td>
											${zhifu}
										</td>
										<td>
											${createTime}
										</td>
										<td>
											<s:if test="%{zhuangtai==0}">未付款</s:if>
											<s:if test="%{zhuangtai==1}">已付款，未发货</s:if>
											<s:if test="%{zhuangtai==2}">已发货，未确认</s:if>
											<s:if test="%{zhuangtai==3}">订单完成</s:if>
										</td>
									</tr>
								</tbody>
								</s:iterator>
							</table>
						</div>
						<div class="line">
							<div class="x9">

							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--    *****************************     提示修改信息DIV                    *******************************************            -->
	</body>

</html>