<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pintuer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/web.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pintuer.js"></script>
<script src="${pageContext.request.contextPath}/js/Select-More.js"
	type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div class="Manage-line line">
		<div class="tab table-bordered">
			<div class="tab-head">
				<strong><i class="fa fa-users"></i>会员管理>会员信息</strong> <span
					class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
				<ul class="tab-nav">
					<li class="active"><a href="#tab-start">会员详情</a></li>
				</ul>
			</div>
			<div class="tab-body">
				<div class="tab-panel active" id="tab-start">
					<table class="table table-striped">
						<tr>
							<th>会员帐号</th>
							<th>姓名</th>
							<th>联系方式</th>
						</tr>
						<tr>
							<td>${username}</td>
							<td>${name}</td>
							<td>${phone}</td>
						</tr>
					</table>
					<p style="font-size: large; margin-top: 13px; color: #00AAEE;">交易记录：</p>
					<table class="table table-hover">
						<thead>
							<tr class="current">
								<th>订单号</th>
								<th>商品名称</th>
								<th>卖家</th>
								<th>收货人</th>
								<th>收货地址</th>
								<th>金额（元）</th>
								<th>交易方式</th>
								<th>交易时间</th>
								<th>状态</th>
							</tr>
						</thead>
						<s:iterator value="orders">
							<tbody>
								<tr>
									<td><a href="adminOrder_xiangqing.action?id=${id}">${orderId}</a></td>
									<td>${orderId}</td>
									<td>${commodity.name}</td>
									<td>${address.shName}</td>
									<td>${address.diqu}${address.addressName}</td>
									<td>${merMoney}</td>
									<td>${zhifu}</td>
									<td>${createTime}</td>
									<td><s:if test="%{zhuangtai==0}">未付款</s:if> <s:if
											test="%{zhuangtai==1}">已付款，未发货</s:if> <s:if
											test="%{zhuangtai==2}">已发货，未确认</s:if> <s:if
											test="%{zhuangtai==3}">订单完成</s:if></td>
								</tr>
							</tbody>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!--    *****************************     提示修改信息DIV                    *******************************************            -->
</body>

</html>