<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
		<%@include file="../common/top.jspf" %>
		<!--          *********************     我的订单-------内容           *********************           -->
		<form action="order_buy_order.action?id=${id}" method="post">
		<div class="Buy-container container">
			<div class="Buy-line line">
				<div class="step">
					<div class="step-one step-bar active">
						<span class="step-point -check">1</span><span class="step-text"></span>1. 确认订单信息</span>
					</div>
					<div class="step-two step-bar ">
						<span class="step-point">2</span><span class="step-text">2. 银行卡付款</span>
					</div>
					<div class="step-two  step-bar">
						<span class="step-point">3</span><span class="step-text">3. 确认收货</span>
					</div>
				</div>
			</div>
			<div class="Buy-Solds-line line">
				<div class="Buy-x3 x3">
					<div class="Buy-Solds-little line">
						<strong>宝贝信息</strong>
					</div>
					<a href="commodity_xiangqing.action?id=${id}">
					<div class="Buy-First-line line">
						<img src="${pageContext.request.contextPath}/uploadImg/${imgUrl}" height="150px" width="125px" />
					</div>
					<div class="Buy-Two-line line">
						<div class="Buy-Two-line-x4 x4">
							<strong>宝贝名称：</strong>
						</div>
						<div class="x8">
							<a href="commodity_xiangqing.action?id=${id}">${name}
						</div>
					</div>
					</a>
					<div class="Buy-Two-line line">
						<div class="Buy-Two-line-x4 x4">
							<strong>所在地：</strong>
						</div>
						<div class="x8">
							${address}
						</div>
					</div>
					<div class="Buy-Two-line line">
						<div class="Buy-Two-line-x4 x4">
							<strong>卖家：</strong>
						</div>
						<div class="x8">
							${user.username}
						</div>
					</div>
				</div>

				<div class="Buy-x9 x9">
					<div class="Select-Address">
						<div class="Select-Address-line line">
							<div class="Select-Address-x6 x6" >
								<strong>确认收货地址</strong>
							</div>
							<div class="Select-Address-x6-one x6">
								<a href="address_list.action">管理我的收货地址</a>
							</div>
						</div>
						<div class="Buy-x9-line line">
							<div class="Add-Address">
								<table class="table table-hover">
								<s:iterator value="addresses">
									<tr>
										<td>
											<input name="addressId" type="radio" data-type="checkbox" value="${id}"/>
										</td>
										<td>
											${shName}
										</td>
										<td>
											${diqu}${addressName}
										</td>
									</tr>
									</s:iterator>
								</table>
							</div>
						</div>
						<div class="Buy-x9-line-one line">
							<div class="Buy-tittle">
								<strong>确认购买信息</strong>
							</div>
							<div class="Add-Address line">
								<div class="Add-Address-x2 x2">
									购买数量：
								</div>
								<div class="x10">
									1件
								</div>
							</div>
							<div class="Add-Address line">
								<div class="Add-Address-x2 x2">
									给卖家留言：
								</div>
								<div class="x10">
									<textarea rows="5" name="beizhu" class="input" placeholder="选填，可以告诉卖家您对商品的特殊要求，如：颜色，尺寸"></textarea>
								</div>
							</div>
						</div>
						<div class="Buy-x9-line-Two line">
							<div class="Buy-tittle-one">
								<strong>确认提交订单</strong>
							</div>
							<div class="no-myname-line line">
								<%-- <div class="no-myname">
									<input name="#" type="checkbox" value="#" data-type="checkbox" />
									<strong>匿名购买</strong>（选择后，您对该宝贝的出价、留言和评价都将匿名。）
								</div> --%>
								<div class="no-myname">
									<div class="no-myname-x9 x9">
										实付款(含运费)：
										<strong>${xianjia+yunfei}</strong>元
									</div>
									<div class="no-myname-x3 x3">
										<strong><input type="submit" value="去结算" /></strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
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