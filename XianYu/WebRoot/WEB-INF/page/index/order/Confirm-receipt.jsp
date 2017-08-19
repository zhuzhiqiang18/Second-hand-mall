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
	<%@include file="../../common/top.jspf" %>
		<!--          *********************     我的订单-------内容           *********************           -->
		<div class="Buy-container container">
			<div class="Buy-line line">
				<div class="step">
					<div class="step-one step-bar active">
						<span class="step-point -check">1</span><span class="step-text"></span>1. 确认订单信息</span>
					</div>
					<div class="step-one step-bar active">
						<span class="step-point">2</span><span class="step-text">2. 银行卡付款</span>
					</div>
					<div class="step-one step-bar active">
						<span class="step-point">3</span><span class="step-text">3. 确认收货</span>
					</div>
				</div>
				<div class="Orders-info line">
					<strong class="Confirm-text">我已收到货，同意付款</strong>
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
					<a href="commodity_xiangqing.action?id=${commodity.id}">
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
										</a>
										<div class="x1">
											<h5>${peisong}</h5>
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
						<div class="line">
							<div class="x1">
								<strong>订单号：</strong>
							</div>
							<div class="x11">
								<h5>${orderId}</h5>
							</div>
						</div>
						<div class="line">
							<%-- <div class="x1">
								<strong>交易号：</strong>
							</div>
							<div class="x5">
								<h5>541313452662</h5>
							</div> --%>
							<div class="x1">
								<strong>卖家昵称：</strong>
							</div>
							<div class="x5">
								<h5>${user.username}</h5>
							</div>
						</div>
						<div class="line">
							<div class="x1">
								<strong>收货地址：</strong>
							</div>
							<div class="x5">
								<h5>${address.diqu}${address.addressName}</h5>
							</div>
							<div class="x1">
								<strong>成交时间：</strong>
							</div>
							<div class="x5">
								<h5>${createTime}</h5>
							</div>
						</div>
					</div>
					<div class="Confirm-div-pay line">
						<strong>请收到货后，再确认收货！否则您可能钱货两空！</strong>
						<div class="line">
							<div class="Buy-line-Two-Top line">
								<i class="fa fa-shirtsinbulk"></i> 智能安全防护体系正在进行检测...
							</div>
							<div class="Buy-line-Two-Top line">
								<h4>支付密码：</h4>
							</div>
							<form action="order_shouhuo.action?id=${id}" method="post">
								<div class="Buy-line-Two-Top line">
									<input type="" name="" id="" value="" class="Pay-input" />
									<a>忘记密码？</a>
								</div>
								<div class="Buy-line-Two-Top line">
									<input type="submit" id="" name="" value="确认收货" class="Pay-Button" />
								</div>
							</form>
						</div>
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