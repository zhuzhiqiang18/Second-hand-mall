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

<body>
	<%@include file="../common/top.jspf"%>
	<!--          *********************     商品详情内容           *********************           -->
	<div class="container">
		<div class="shopping-line  line">
			<div class="x6">
				<div class="line">
					<div class="x4 ">
						<div class="line">
							<div class="x6 ">
								<img src="${pageContext.request.contextPath}/img/head-img.png" />
							</div>
							<div class="x6 ">
								<p>${user.username}</p>
							</div>
						</div>
					</div>
					<!-- <div class="x4 ">
							<h6>浏览次数</h6>
							<p>150</p>
						</div> -->
					<div class="x4 ">
						<h6>最新编辑</h6>
						<p>${date}</p>
					</div>
				</div>
			</div>
			<div class="x6 "></div>
		</div>
	</div>
	<!--          *********************     商品图片轮播与价格等等.....           *********************           -->
	<div class="container">
		<div class="shopping-img line">
			<!--          *********************     商品图片轮播         *********************           -->
			<div class="x7">
				<div class="banner" data-pointer="0">
					<div class="carousel">
						<div class="item">
							<img src="${pageContext.request.contextPath}/uploadImg/${imgUrl}"
								height="350px" width="320px" />
						</div>
						<div class="item">
							<img
								src="${pageContext.request.contextPath}/uploadImg/${canshuUrl}"
								height="350px" width="320px" />
						</div>
					</div>
				</div>
			</div>
			<!--          *********************     商品价格等等.....           *********************           -->
			<div class="x5">
				<div class="line">
					<h1>${name}</h1>
				</div>
				<div class="line">
					<div class="x3">
						<p class="price-p">转卖价：</p>
					</div>
					<div class="x9">
						<h3>¥${xianjia}</h3>
					</div>
				</div>
				<div class="line">
					<div class="x3">
						<p>原价：</p>
					</div>
					<div class="x9">
						<p>¥${yuanjia}</p>
					</div>
				</div>
				<hr />
				<!-- <div class="line">
						<div class="x3">
							<p>成色：</p>
						</div>
						<div class="x9">
							<p>非成色</p>
						</div>
					</div> -->
				<div class="line">
					<div class="x3">
						<p>所在地：</p>
					</div>
					<div class="x9">
						<p>${address}</p>
					</div>
				</div>
				<div class="line">
					<div class="x3">
						<p>交易方式：</p>
					</div>
					<div class="x9">
						<p>
							<select onchange="buy(this);">
								<option selected>-- 交易方式 --</option>
								<option value="1">在线交易</option>
								<option value="2">线下交易</option>
							</select>
						</p>
					</div>
				</div>
				<div class="button-line line">
					<c:if test="${state==true}">
						<a id="buy"><button class="button bg-yellow button-small">立即购买</button></a>
					</c:if>
					<c:if test="${state==false}">
						<h1>该商品已下架</h1>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!--          *********************     商品详情与评论  ----   内容           *********************           -->
	<div class="container ">
		<div class="line ">
			<div class="x7 ">
				<div class="tab">
					<div class="tab-head">
						<strong>认识一下吧！</strong>
						<ul class="tab-nav">
							<li class="active"><a href="#tab-start">宝贝介绍</a></li>
							<li><a href="#tab-norm">参数规格</a></li>
						</ul>
					</div>
					<div class="tab-body">
						<div class="tab-panel active" id="tab-start">
							<p class="strong-title">宝贝介绍</p>
							<div class="line">
								<div class="x6">
									<img
										src="${pageContext.request.contextPath}/uploadImg/${imgUrl}"
										height="350px" width="320px" />
								</div>
								<div class="x6">
									<strong>${miaoshu}</strong>
								</div>
							</div>
						</div>
						<div class="tab-panel" id="tab-norm">
							<div class="line">
								<div class="x8">
									<img
										src="${pageContext.request.contextPath}/uploadImg/${canshuUrl}" />
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
			<div class="x5"></div>
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
	<script type="text/javascript">
		function buy(obj) {
			//javascript:window.location.href='order_buy.action?id=${id}
			var id = obj.value;
			if (id == "1") {
				$("#buy").attr("href", "order_buy.action?id=${id}");
			} else if (id == "2") {
				$("#buy").attr("href", "order_xianjiaBuy.action?id=${id}");
				//$("#buy").click="window.location.href='order_xianjiaBuy.action?id=${id}";
			}
		}
	</script>
</body>

</html>