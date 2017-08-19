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
</head>

<body class="My-Oreders-body">
	<!--        *****************  首栏    ---------------------              -->
	<%@include file="../../common/top.jspf" %>

	<!--          *********************     我的订单-------内容           *********************           -->
	<div class="My-Oreders-container container">
		<div class="My-Oreders line">
			<div class="x2">
				<strong>订单中心</strong>
				<ul>
					<li><a href="order_list.action">我的订单</a></li>
				</ul>
				<strong>出售中心</strong>
				<ul>
					<li><a href="commodity_mySp.action">我的出售</a></li>
				</ul>
				<strong>个人设置</strong>
				<ul>
					<li><a href="address_list.action">收货地址</a></li>
				</ul>
			</div>
			<div class="x10">
				<div class="line">
					<ul>
						<li>&nbsp;</li>
						<li><strong><i class="fa fa-shopping-bag"></i>我的出售</strong></li>
						<li>&nbsp;</li>
					</ul>
				</div>
				<div class="x10-line line">
					<div class="x4">
						<div class="line">
							<div class="x3">
								<ul>
									<li>&nbsp;</li>
									<li><strong class="li-strong">全部订单</strong></li>
									<li>&nbsp;</li>
								</ul>
							</div>
							<!-- <div class="x3">
								<ul>
									<li>&nbsp;</li>
									<li><a>未售出</a></li>
									<li>&nbsp;</li>
								</ul>
							</div>
							<div class="x3">
								<ul>
									<li>&nbsp;</li>
									<li><a>已售出</a></li>
									<li>&nbsp;</li>
								</ul>
							</div>
							<div class="x3">
								<ul>
									<li>&nbsp;</li>
									<li><a>已退货</a></li>
									<li>&nbsp;</li>
								</ul>
							</div> -->
						</div>
					</div>
					<div class="x4"></div>
					<div class="x4">
						<form action="order_sscs.action" method="post">
							<ul>
								<li>&nbsp;</li>
								<li><input type="text" id="" name="orderIdOrName" placeholder="商品名称/编号/订单号" />
									<input type="submit" id="" class="My-Oreders-search"
									value="搜索" /></li>
								<li>&nbsp;</li>
							</ul>
						</form>
					</div>
				</div>
				<div class="orders-line line">
					<div class="x6">
						<div class="line">
							<div class="x6">
								<ul>
									<li></li>
								</ul>
							</div>
							<div class="x6">
								<p>订单详情</p>
							</div>
						</div>
					</div>
					<div class="x6">
						<div class="line">
							<div class="x3">
								<p>收货人</p>
							</div>
							<div class="x3">
								<p>金额</p>
							</div>
							<%-- <div class="x3">
								<ul>
									<li><select>
											<option value="" selected>全部状态</option>
											<option value="">未售出</option>
											<option value="">已售出</option>
											<option value="">已退货</option>
											<option value="">已取消</option>
									</select></li>
								</ul>
							</div>
							<div class="x3">
								<p>操作</p>
							</div> --%>
						</div>
					</div>
				</div>
				<hr />
				<!--**************************        全部订单详情          ************************ -->
				<s:iterator value="#orders">
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>${createTime}</p>
									</div>
									<div class="x6">
										<p>订单号：${orderId}</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="${pageContext.request.contextPath}/uploadImg/${commodity.imgUrl}" height="100px" width="100px" />
									</div>
									<div class="x6">
										<a href="commodity_xiangqing.action?id=${commodity.id}">${commodity.name}</a>
									</div>
									<div class="x2">x1</div>
									<div class="x2">
										<!-- <a href="">返修/退换货</a> -->
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>&nbsp&nbsp&nbsp&nbsp</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click"
											data-target="#mydialog-delect-orders" data-mask="1"
											data-width="25%"> <i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>${address.shName}</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥${merMoney}</p>
										<p style="text-align: center;">
											<!-- 货到付款 -->
										</p>
									</div>
									<div class="x3">
										<p>
											<span class="fa fa-check-square-o"></span>
											<s:if test="%{zhuangtai==0}">未付款</s:if>
											<s:if test="%{zhuangtai==1}">已付款，未发货</s:if>
											<s:if test="%{zhuangtai==2}">已发货，未确认</s:if>
											<s:if test="%{zhuangtai==3}">订单完成</s:if>
										</p>
										<a href="order_orderInfo.action?id=${id}"
											style="text-align: center;">订单详情</a>
									</div>
									<s:if test="%{zhuangtai==1}">
										<div class="x3">
											<a href="order_fahuoar.action?id=${id}"><button class="button bg-green button-little">确认发货</button></a>
											
										</div>
									</s:if>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>

	<!--          *********************     删除提示信息DIV           *********************           -->
	<div id="mydialog-delect-orders">
		<div class="dialog">
			<div class="dialog-head">
				<span class="close rotate-hover"></span><strong>删除商品？</strong>
			</div>
			<div class="dialog-body">
				<div class="line">您确定要删除此商品么，删除后，将无法恢复，请谨慎操作！</div>
			</div>
			<div class="dialog-foot">
				<button class="button dialog-close">
					<strong>我再考虑考虑</strong>
				</button>
				<button class="button bg-green">
					<strong>去意已决</strong>
				</button>
			</div>
		</div>
	</div>
	<!--          *********************     底部内容           *********************           -->
	<div
		class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom ">
		<div class="container ">
			<div class="line ">
				<div class="table-responsive padding hidden-l ">
					<ul class="nav nav-sitemap ">
						<li><a href="# ">新闻资讯</a>
							<ul>
								<li><a href="# ">新闻公告</a></li>
								<li><a href="# ">业界资讯</a></li>
								<li><a href="# ">媒体报道</a></li>
							</ul></li>
						<li><a href="# ">产品中心</a>
							<ul>
								<li><a href="# ">产品分类</a></li>
								<li><a href="# ">产品品牌</a></li>
								<li><a href="# ">产品特色</a></li>
							</ul></li>
						<li><a href="# ">技术反馈</a>
							<ul>
								<li><a href="# ">售后服务</a></li>
								<li><a href="# ">营销网络</a></li>
								<li><a href="# ">服务支持</a></li>
							</ul></li>
						<li><a href="# ">留言反馈</a></li>
						<li><a href="# ">联系方式</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center ">版权所有 © 郑州轻工业学院，图ICP备：541313440202</div>
	</div>
</body>

</html>