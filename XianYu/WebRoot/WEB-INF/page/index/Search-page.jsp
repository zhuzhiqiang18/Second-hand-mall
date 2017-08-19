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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
		<script src="${pageContext.request.contextPath}/js/Select-More.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body class="My-Oreders-body">
		<%@include file="../common/top.jspf" %>
		<!--   ****************************   中路信息栏        *****************************      -->
		<div class="All-Solds-container container">
			<div class="line">
				<ul class="bread">
					<li><a href="#" class="icon-home"><strong>全部</strong></a> </li>
					<li><strong class="fa fa-chevron-right"></strong></li>
					<li>搜索结果</li>
				</ul>
			</div>
			<div class="Select-line line alert box-shadow-none">
				<div class="x3">
					结果：找到<label>${spname}</label>相关的结果<label>${recordCount}</label>个
				</div>
				<div class="x9">
					<form>
						<div class="line">
							<div class="x5">

							</div>
						</div>
					</form>
				</div>
			</div>
			<!--          *********************    物品信息 内容           *********************           -->
			<div class="solding-line line">
					<s:iterator value="recordList">
					<a href="commodity_xiangqing.action?id=${id}">
				<div class="x3">
					<!--          *********************    物品详情 内容           *********************           -->
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="${pageContext.request.contextPath}/img/head-img.png" />
							</div>
							<div class="x8">
								<strong>${user.username}</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="${pageContext.request.contextPath}/uploadImg/${imgUrl}" width="242px" height="182px"/>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x4">
										<strong>¥</strong><i>${xianjia}</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										${address}
									</div>
								</div>
								<hr/>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<p>
									${name}
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
				</div></a>
				</s:iterator>
			</div>
			<hr />
		</div>

		<!--          *********************     底部内容           *********************           -->
		<div class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom">
			<div class="container">
				<div class="line">
					<div class="table-responsive padding hidden-l">
						<ul class="nav nav-sitemap">
							<li><a href="#">新闻资讯</a>
								<ul>
									<li><a href="#">新闻公告</a> </li>
									<li><a href="#">业界资讯</a> </li>
									<li><a href="#">媒体报道</a> </li>
								</ul>
							</li>
							<li><a href="#">产品中心</a>
								<ul>
									<li><a href="#">产品分类</a> </li>
									<li><a href="#">产品品牌</a> </li>
									<li><a href="#">产品特色</a> </li>
								</ul>
							</li>
							<li><a href="#">技术反馈</a>
								<ul>
									<li><a href="#">售后服务</a> </li>
									<li><a href="#">营销网络</a> </li>
									<li><a href="#">服务支持</a> </li>
								</ul>
							</li>
							<li><a href="#">留言反馈</a> </li>
							<li><a href="#">联系方式</a> </li>
						</ul>
					</div>
				</div>
			</div>
			<div class="text-center">
				版权所有 © 郑州轻工业学院，图ICP备：541313440202
			</div>
		</div>
	</body>

</html>