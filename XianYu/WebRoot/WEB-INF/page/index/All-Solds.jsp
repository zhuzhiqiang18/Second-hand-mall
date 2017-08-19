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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
	</head>

	<body class="My-Oreders-body">
		<%@include file="../common/top.jspf" %>
		<!--   ****************************   中路信息栏        *****************************      -->
		<div class="All-Solds-container container">
			<div class="line">
				<ul class="bread">
					<li><strong>个人闲置：</strong></li>
					<li><a href="#" class="icon-home"><strong>全部</strong></a> </li>
					<li><strong class="fa fa-chevron-right"></strong></li>
					<li>闲置数码</li>
					<li><strong class="fa fa-chevron-right"></strong></li>
					<li>手机</li>
				</ul>
			</div>
			<div class="Select-line line alert box-shadow-none">
				<div class="x3">
					<a href="">配件（36.1万）</a>
				</div>
				<div class="x3">
					<a href="">手机（6.1万）</a>
				</div>
				<div class="x3">

				</div>
				<div class="x3">

				</div>
			</div>
			<div class="Select-price-line line">
				<div class="x3">

				</div>
				<div class="x9">
					<form>
						<div class="line">
							<div class="x4">

							</div>
							<div class="x3">
								<a href="">最新发布</a>
								<strong>价格排序：</strong>
								<select>
									<option value="" selected size="5">高</option>
									<option value="">低</option>
								</select>
							</div>
							<div class="x5">
								<input type="text" id="" value="" size="4" />
								<strong class="fa fa-arrows-h"></strong>
								<input type="text" id="" value="" size="4" />
								<strong>元</strong>
								<input type="text" id="" placeholder="商品名称/编号/订单号" />
								<input type="submit" id="" name="" class="My-Oreders-search" value="搜索" />
							</div>
						</div>
					</form>
				</div>
			</div>
			<!--          *********************    物品信息 内容           *********************           -->
			<div class="solding-line line">
				<div class="x3">
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
				</div>
				<div class="x3">
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
				</div>
				<div class="x3">
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
				</div>
				<div class="x3">
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
					<div class="solds-div">
						<div class="solds-head-line line">
							<div class="x1">
							</div>
							<div class="x3">
								<img src="img/head-img.png" />
							</div>
							<div class="x8">
								<strong>源源不断</strong>
							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<img src="img/iPhone.jpg" />
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
										<strong>¥</strong><i>3999.00</i>
									</div>
									<div class="x4">

									</div>
									<div class="x4">
										<strong>河南</strong><strong>郑州</strong>
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
									<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
								</p>
							</div>
							<div class="x1">

							</div>
						</div>
						<div class="line">
							<div class="x1">
							</div>
							<div class="x10">
								<div class="line">
									<div class="x6">
										<strong>18小时前</strong>
									</div>
									<div class="x6">
										<strong>来自****平台</strong>
									</div>
								</div>
							</div>
							<div class="x1">

							</div>
						</div>
					</div>
				</div>
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