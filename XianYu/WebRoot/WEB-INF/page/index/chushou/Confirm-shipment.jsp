<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
		<script src="${pageContext.request.contextPath}/js/Select-More.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
	<div class="First-container container">
	<%@include file="../../common/top.jspf" %>
	
		<!--          *********************     我的订单-------内容           *********************           -->
		<div class="Buy-container container">
			<div class="Buy-line line">
				<div class="Orders-info line">
					<strong class="Confirm-text">我已收到付款，同意发货</strong>
				</div>
				<div class="Confirm-div line">
					<div class="Confirm-title">
						<strong>订单详情</strong>
					</div>
				<div class="Confirm-line line">
										<div class="x4">
											<strong>宝贝</strong>
										</div>
										<div class="x1">
											<strong>状态</strong>
										</div>
										<div class="x2">
											<strong>单价（元）</strong>
										</div>
										<div class="x1">
											<strong>数量</strong>
										</div>
										<div class="x2">
											<strong>商品总价（元）</strong>
										</div>
										<div class="x2">
											<strong>运费（元）</strong>
										</div>
									</div>
									<div class="Confirm-line-Info line">
										<div class="x4">
											<div class="Confirm-line-img line">
												<div class="x3">
													<img src="${pageContext.request.contextPath}/uploadImg/${commodity.imgUrl}" height="100px" width="100px" />
												</div>
												<div class="x9">
													<a href="Item-details.html">${commodity.name}</a>
												</div>
											</div>
										</div>
										<div class="x1">
											<h5>
											<s:if test="%{zhuangtai==0}">未付款</s:if>
											<s:if test="%{zhuangtai==1}">已付款,未发货</s:if>
											<s:if test="%{zhuangtai==2}">已发货,未确认</s:if>
											<s:if test="%{zhuangtai==3}">订单完成</s:if>
											</h5>
										</div>
										<div class="x2">
											<h5>${commodity.yuanjia}</h5>
										</div>
										<div class="x1">
											<h5>1</h5>
										</div>
										<div class="x2">
											<h5>${merMoney}</h5>
										</div>
										<div class="x2">
											<h5>快递：${commodity.yunfei}</h5>
										</div>
									</div>
					<div class="Confirm-Solds-Info">
						<h4>买家信息</h4>
						<div class="line">
							<div class="x1">
								<strong>买家姓名：</strong>
							</div>
							<div class="x5">
								<h5>${user.name}</h5>
							</div>
							<div class="x1">
								<strong>卖家昵称：</strong>
							</div>
							<div class="x5">
								<h5>${user.username}</h5>
							</div>
						</div>
						<div class="line">
							<div class="x1">
								<strong>联系方式：</strong>
							</div>
							<div class="x5">
								<h5>${user.phone}</h5>
							</div>
							<div class="x1">
								<strong>付款时间：</strong>
							</div>
							<div class="x5">
								<h5>${createTime}</h5>
							</div>
						</div>
						<div class="line">
							<div class="x1">
								<strong>收货地址：</strong>
							</div>
							<div class="x11">
								<h5>${address.diqu}${address.addressName}</h5>
							</div>
						</div>
						<div class="line">
							<div class="x1">
								<strong>买家留言：</strong>
							</div>
							<div class="x11">
								<h5>${beizhu}</h5>
							</div>
						</div>
					</div>
					<div class="logistics-info-line line">
						<h4>物流信息</h4>
						<form action="order_fahuo.action?id=${id}" method="post">
							<div class="logistics-line line">
								<div class="line">
									<div class="x1">
										<strong>快递公司：</strong>
									</div>
									<div class="x2">
										<input type="text" name="kuaidi"  />
									</div>
									<div class="x1">
										<strong>订单号：</strong>
									</div>
									<div class="x2">
										<input type="text" name="kuaididanhao" value="" />
									</div>
									<div class="x6">
										<input type="submit" class="navbar-form-submit" name="" id="" value="确认信息" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!--          *********************     底部内容           *********************           -->
		<div class="container-layout container">
			<div class="border-top padding-top">
				<div class="text-center">
					<ul class="nav nav-inline">
						<li class="active"><a href="#">网站首页</a> </li>
						<li><a href="#">新闻资讯</a> </li>
						<li><a href="#">产品中心</a> </li>
						<li><a href="#">技术反馈</a> </li>
						<li><a href="#">留言反馈</a> </li>
						<li><a href="#">联系方式</a> </li>
					</ul>
				</div>
				<div class="text-center height-big">
					版权所有 © Pintuer.com All Rights Reserved，图ICP备：380959609</div>
			</div>
		</div>
	</body>

</html>