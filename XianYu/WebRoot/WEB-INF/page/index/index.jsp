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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-p.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pintuer.js"></script>
<style type="text/css">
.navbar .container .line .navbar-form {
	margin-top: 0px;
}
</style>
</head>

<body>
	<%@include file="../common/top.jspf" %>
	<!--          *********************     ；中层导航           *********************           -->
	<div class="container">
		<div class="line">
			<div class="container-x3-l x3">
			<s:iterator value="%{#session.lanMuss}">
				<div class="line">
					<div class="x4">
						<strong><span class="fa fa-camera-retro">&nbsp;</span>${name}</strong>
					</div>
					<s:iterator value="lanMus" status="l">
					<c:if test="${l.index>3}">
					<div class="x2" hidden="hidden">
						<a href="commodity_DHSearch.action?id=${id}">${name}</a>
					</div>
					</c:if>
					<c:if test="${l.index<=2}">
					<div class="x2">
						<a href="commodity_dhSearch.action?id=${id}">${name}</a>
					</div>
					</c:if>
					</s:iterator>					
				</div>
				</s:iterator>
			</div>
			<!--          *********************     ；轮播导航           *********************           -->
			<div class="x6">
				<div class="banner">
					<div class="carousel">
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/index1.jpg" />
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/index2.jpg" />
						</div>
					</div>
				</div>
			</div>
			<div class="titile-x3 x3">
				<div class="line">
					<div class="x1"></div>
					<div class="x4">
						<i class="fa fa-desktop"></i>
					</div>
					<div class="x2">
						<i class="fa fa-exchange"></i>
					</div>
					<div class="x4">
						<i class="fa fa-rmb"></i>
					</div>
					<div class="x1"></div>
				</div>
				<div class="line">
					<div class="x1"></div>
					<div class="x10">
						<strong>微单，随时随地，想卖就卖！</strong>
					</div>
					<div class="x1"></div>
				</div>
				<div class="line">
					<div class="x1"></div>
					<div class="x10">
						<hr />
						<p>闲置换钱，快速出手</p>
					</div>
					<div class="x1"></div>
				</div>
				<div class="line">
					<div class="x1"></div>
					<div class="x10">
						<c:if test="${sessionScope.loginer!=null}">
							<button class="button bg-blue button-big button-block"
								onclick="javascript:window.location.href='commodity_fabupage.action';">
								发布闲置<i class="fa fa-caret-right"></i>
							</button>
						</c:if>

					</div>
					<div class="x1"></div>
				</div>
			</div>
		</div>
	</div>
	<!--          *********************     中部内容           *********************           -->
	<div class="container">
		<div class="line">
			<div class="x3">
				<div class="x3">
					<img src="${pageContext.request.contextPath}/img/head-img.png"
						class="head-img" />
				</div>
				<div class="x9">
					<ul>
						<c:if test="${sessionScope.loginer==null}">
							<li>Hi,请先<a href="user_loginar.action" class="a-x9">登录</a>吧！
							</li>
							<li>&nbsp;</li>
						</c:if>

						<li>这里有更多你感兴趣的！</li>
						<li>&nbsp;</li>
					</ul>
				</div>
				<ul>
					<li>
				   <s:iterator value="#tuiJians" status="l">
						<a href="commodity_TJsearch.action?id=${id}"><button class="button  button-little bg-blue-light">${name}</button></a>
					</s:iterator>
					</li>
				</ul>
			</div>
			<div class="x6">
				<div class="tab">
					<div class="tab-head">
						<strong><i class="fa fa-send"></i>最新资讯</strong> <span
							class="tab-more"><a href="commodity_search.action?spname=">更多></a></span>
						<ul class="tab-nav">
							<li class="active"><a href="#tab-start">猜你喜欢</a></li>
						</ul>
					</div>
					<div class="tab-body">
						<div class="tab-panel active" id="tab-start">
							<div class="line">
							<s:iterator value="#commodities">
							<a href="commodity_xiangqing.action?id=${id}">
								<div class="x4">
									<img src="${pageContext.request.contextPath}/uploadImg/${imgUrl}" height="150px" width="125px" />
									<h2>¥${xianjia}</h2>
									${name}
									<%-- <p>${user.name}</p> --%>
								</div></a>
								</s:iterator>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="x3">
				<h2>最新出售</h2>
				<hr />
				<s:iterator value="#orders">
				<div class="line">
				<a href="commodity_xiangqing.action?id=${commodity.id}">
					<div class="x6-img-friend x6">
						<img src="${pageContext.request.contextPath}/uploadImg/${commodity.imgUrl}" class="x6-img" />
					</div>
					<div class="x6">
						<p> ${commodity.name} </p>
						<p >${createTime}</p>
						<p >¥${merMoney}</p>
					</div></a>
				</div>
				</s:iterator>
			</div>
		</div>
	</div>
	<!--          *********************     中间内容           *********************           -->
	<%-- <div class="container">
		<div class="line">
			<h2>
				<i class="fa fa-heart"></i>热门推荐
			</h2>
			<hr />
			<div class="line">
				<div class="x3">
					<ul class="x3-a-style">
					<s:iterator value="tuiJians" status="l">
					
						<li><a href="#">${name}</a>
						</li>
						<li>&nbsp;</li>
						</s:iterator>
					</ul>
				</div>
				<div class="x6">
					<div class="line">
						<div class="x4">
							<img src="img/ear-1.jpg" />
						</div>
						<div class="x4">
							<img src="img/ear-2.jpg" />
						</div>
						<div class="x4">
							<img src="img/ear-3.jpg" />
						</div>
					</div>
					<div class="line">
						<div class="x4-x4 x4">
							<h2>¥199.99</h2>
							<a href="Item-details.html">Beats Solo2 随身视听</a>
							<p>乐好乐数码专营店</p>
						</div>
						<div class="x4-x4 x4">
							<h2>¥299.99</h2>
							<a href="Item-details.html">EARISE/雅兰仕 Q8笔记本电脑音响多</a>
							<p>乐好乐数码专营店</p>
						</div>
						<div class="x4-x4 x4">
							<h2>¥199.99</h2>
							<a href="Item-details.html">Sony/索尼 MDR-XB450AP 3.5mm
								低音炫彩流行摇滚音乐手机通话</a>
							<p>乐好乐数码专营店</p>
						</div>
					</div>
				</div>
				<div class="x3">
					<div class="x3-line-img line">
						<img src="img/x6-head.png" />
					</div>
					<div class="x3-line-img line">
						<p class="p-first">戴上耳机，倾听</p>
						<p>想要暂时告别千篇一律的生活，踏上没有目的的旅途？记得在行囊里捎上自己心爱的耳机和音乐，有了它们，一路上，不寂寞。</p>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	<!--          *********************     底部内容           *********************           -->
	<div
		class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom">
		<div class="container">
			<div class="line">
				<div class="table-responsive padding hidden-l">
					<ul class="nav nav-sitemap">
						<li><a href="#">新闻资讯</a>
							<ul>
								<li><a href="#">新闻公告</a></li>
								<li><a href="#">业界资讯</a></li>
								<li><a href="#">媒体报道</a></li>
							</ul></li>
						<li><a href="#">产品中心</a>
							<ul>
								<li><a href="#">产品分类</a></li>
								<li><a href="#">产品品牌</a></li>
								<li><a href="#">产品特色</a></li>
							</ul></li>
						<li><a href="#">技术反馈</a>
							<ul>
								<li><a href="#">售后服务</a></li>
								<li><a href="#">营销网络</a></li>
								<li><a href="#">服务支持</a></li>
							</ul></li>
						<li><a href="#">留言反馈</a></li>
						<li><a href="#">联系方式</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center">版权所有 © 郑州轻工业学院，图ICP备：541313440202</div>
	</div>
</body>

</html>