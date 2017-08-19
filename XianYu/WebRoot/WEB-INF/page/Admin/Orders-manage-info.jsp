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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pintuer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/web.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pintuer.js"></script>
<script src="${pageContext.request.contextPath}/js/Select-More.js"
	type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<!--          *********************     交易详情=======内容           *********************           -->
	<div class="Solds-info-container container">
		<div class="Solds-info-line">
			<div class="line">
				<ul class="bread">
					<li><strong>当前位置：</strong></li>
					<li><a href="#" class="icon-home"><strong><a
								href="">订单管理</a></strong> </a></li>
					<li><strong class="fa fa-chevron-right"></strong></li>
					<li>订单详情</li>
				</ul>
			</div>
			<div class="Solds-info-line-alert alert box-shadow-none">
				<div class="Solds-info-Solds">
					<div class="Solds-info-Solds-title">
						<h3>
							当前订单状态：
							<s:if test="%{zhuangtai==0}">未付款</s:if>
							<s:if test="%{zhuangtai==1}">已付款，未发货</s:if>
							<s:if test="%{zhuangtai==2}">已发货，未确认</s:if>
							<s:if test="%{zhuangtai==3}">订单完成</s:if>
						</h3>
					</div>
				</div>
			</div>
			<div class="Solds-info-tab">
				<div class="tab" data-toggle="hover">
					<div class="tab-head">
						<strong></strong> <span class="tab-more"><a href="#"></a></span>
						<ul class="tab-nav">
							<li class="active"><a href="#tab-start">&nbsp;&nbsp;订单详情&nbsp;&nbsp;</a>
							</li>
						</ul>
					</div>
					<div class="tab-body tab-body-bordered">
						<div class="tab-panel active" id="tab-start">
							<div class="Solds-info-tab-title">
								<div class="tab-title">
									<strong>买家信息</strong>
								</div>
								<div class="tab-info-start">
									<div class="x6">
										<div class="line">
											<div class="x3">
												<h5>昵称：</h5>
											</div>
											<div class="x9">${user.username}</div>
										</div>
									</div>
									<div class="x6">
										<div class="line">
											<div class="x3">
												<h5>真实姓名：</h5>
											</div>
											<div class="x9">${user.name}</div>
										</div>
									</div>
									<div class="line">
										<div class="x6">
											<div class="line">
												<div class="x3">
													<h5>联系电话：</h5>
												</div>
												<div class="x9">${user.phone}</div>
											</div>
										</div>
										<div class="x6">
											<div class="line">
												<div class="x3">
													<h5>城市：</h5>
												</div>
												<div class="x9">${address.diqu}${address.addressName}
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="line">
									<div class="tab-title">
										<strong>订单信息</strong>
									</div>
									<div class="tab-info-start">
										<div class="x6">
											<div class="line">
												<div class="x3">
													<h5>订单编号：</h5>
												</div>
												<div class="x9">${orderId}</div>
											</div>
										</div>
										<!-- <div class="x6">
												<div class="line">
													<div class="x3">
														<h5>交易号：</h5>
													</div>
													<div class="x9">
														545464684687878
													</div>
												</div>
											</div> -->
										<div class="line">
											<%-- <div class="x6">
													<div class="line">
														<div class="x3">
															<h5>成交时间：</h5>
														</div>
														<div class="x9">
															${}
														</div>
													</div>
												</div> --%>
											<div class="x6">
												<div class="line">
													<div class="x3">
														<h5>确认时间：</h5>
													</div>
													<div class="x9">${createTime}</div>
												</div>
											</div>
										</div>
									</div>
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
												<img
													src="${pageContext.request.contextPath}/uploadImg/${commodity.imgUrl}"
													/>
											</div>
											<div class="x9">
												${commodity.name}
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
								<div class="price-text">
									<div class="line">
										<div class="x9"></div>
										<div class="x3">
											<h3>
												实付款：<strong>${merMoney}</strong>元
											</h3>
										</div>
									</div>
								</div>
								<table class="table table-condensed">
									<tr>
										<th>物流信息</th>
									</tr>
									<tr>
										<td>收货地址：</td>
										<td>${address.shName} ，${address.phone}
											，${address.diqu}${address.addressName}</td>
									</tr>
									<tr>
										<td>支付方式：</td>
										<td>${zhifu}</td>
									</tr>
									<tr>
										<td>物流公司：</td>
										<td>${kuaidi}</td>
									</tr>
									<tr>
										<td>运单号：</td>
										<td>${kuaididanhao}</td>
									</tr>
									<tr>
										<td>买家留言：</td>
										<td>${beizhu}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>

</html>