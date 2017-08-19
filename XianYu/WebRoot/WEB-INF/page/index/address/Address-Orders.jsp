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

	<body class="My-Oreders-body">
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

				<!--*************************                     *************************-->
				<div class="x10">
					<div class="line">
						<ul>
							<li>&nbsp;</li>
							<li><i class="fa fa-truck"></i>我的收货地址</li>
							<li>&nbsp;</li>
						</ul>
					</div>
					<hr />
					<div class="Address-Orders-line line">
						<div class="line">
							<div class="x3">
								<button class="button bg button-small dialogs" data-toggle="click" data-target="#mydialog-add" data-mask="1" data-width="40%">
									<strong>新增收货地址</strong>
								</button>
							</div>
							<div class="x9">
								您已创建1 个收货地址，最多可创建20个
							</div>
						</div>
						<!--*************************       收货地址        *************************  -->
						<s:iterator value="addresses">
						<div class="Address-line line">
							<div class="Address-Form-line line">
								<div class="line">
									<div class="x2">
										<strong>${shName}</strong>
									</div>
									<div class="x1">
										<a href="address_delete.action?id=${id}" class="dialogs" data-toggle="click" data-target="#mydialog-delect" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<div class="line">
									<div class="x1">
										<span>收货人:</span>
									</div>
									<div class="x5">
										<strong>${shName}</strong>
									</div>
								</div>
								<div class="line">
									<div class="x1">
										<span>所在地区:</span>
									</div>
									<div class="x5">
										<strong>${diqu}</strong>
									</div>
								</div>
								<div class="line">
									<div class="x1">
										<span>地址:</span>
									</div>
									<div class="x5">
										<strong>${addressName}</strong>
									</div>
									<div class="x1">
										<span>手机:</span>
									</div>
									<div class="x5">
										<strong>${phone}</strong>
									</div>
								</div>
								<div class="line">
									<div class="x1">
										<span>固定电话:</span>
									</div>
									<div class="x5">
										<strong>${guhua}</strong>
									</div>
									<div class="x1">
										<span>电子邮件:</span>
									</div>
									<div class="x5">
										<strong>${email}</strong>
									</div>
								</div>
								<div class="line">
									<div class="x11">

									</div>
									<div class="x1">
									</div>
								</div>
							</div>
						</div>
						</s:iterator>
					</div>
					<hr />
				</div>
			</div>
		</div>
		<!--          *********************   删除地址 DIV     内容           *********************           -->
		<div id="mydialog-delect">
			<div class="dialog">
				<div class="dialog-head">
					<span class="close rotate-hover"></span><strong>删除收货地址</strong>
				</div>
				<div class="dialog-body">
					<div class="line">
						<strong>删除此地址，将无法找回，您确定要删除么?</strong>
					</div>
				</div>
				<div class="dialog-foot">
					<button class="button dialog-close">
						<strong>我再考虑考虑</strong>
					</button>
					<button class="button bg-green">
						<strong>立即删除</strong>
					</button>
				</div>
			</div>
		</div>
		<!--          *********************   新增地址 DIV     内容           *********************           -->
		<div id="mydialog-add">
			<div class="dialog">
				<div class="dialog-head">
					<span class="close rotate-hover"></span><strong>新增收货地址</strong>
				</div>
				<div class="dialog-body">
					<form action="address_addAddress.action" method="post">
						<div class="line">
							<p><strong>收货人：</strong></p>
						</div>
						<div class="line">
							<div class="x4">
								<input type="text" name="shName" class="input" />
							</div>
							<div class="x8">

							</div>
						</div>
						<div class="line">
							<p><strong>所在地区：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" name="diqu" class="input" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<p><strong>详细地址：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" name="addressName" class="input" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<p><strong>手机号码：</strong></p>
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<p><strong>固定电话：</strong></p>
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<input type="text" name="phone" class="input" />
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<input type="text"  name="guHua" class="input" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<p><strong>邮箱：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" name="email" class="input" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<ul>
								<li>&nbsp;</li>
								<li>&nbsp;</li>
							</ul>
						</div>
						<div class="line">
							<div class="x4">
								<input type="submit" class="button bg-green" value="确认增加" />
							</div>
							<div class="x4">
								<input type="reset" class="button bg" value="重新填写" />
							</div>
							<div class="x4">

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--          *********************    修改地址 DIV     内容           *********************           -->

		<div id="mydialog-Change">
			<div class="dialog">
				<div class="dialog-head">
					<span class="close rotate-hover"></span><strong>修改收货地址</strong>
				</div>
				<div class="dialog-body">
					<form>
						<div class="line">
							<p><strong>收货人：</strong></p>
						</div>
						<div class="line">
							<div class="x4">
								<input type="text" class="input" value="陈柯琪" />
							</div>
							<div class="x8">

							</div>
						</div>
						<div class="line">
							<p><strong>所在地区：</strong></p>
						</div>
						<div class="line">
							<div class="x6">
								<div class="line">
									<div class="x3">
										<select class="input" name="" value="河南省">
											<option value="">北京</option>
											<option value="">上海</option>
											<option value="">郑州</option>
											<option value="">深圳</option>
										</select>
									</div>
									<div class="x1">
										<h1>--</h1>
									</div>
									<div class="x3">
										<select class="input" name="" value="郑州市">
											<option value="">北京</option>
											<option value="">上海</option>
											<option value="">郑州</option>
											<option value="">深圳</option>
										</select>
									</div>
									<div class="x1">
										<h1>--</h1>
									</div>
									<div class="x3">
										<select class="input" name="" value="高新区">
											<option value="">北京</option>
											<option value="">上海</option>
											<option value="">郑州</option>
											<option value="">深圳</option>
										</select>
									</div>
									<div class="x1">

									</div>
								</div>
							</div>
							<div class="x6">

							</div>
						</div>
						<div class="line">
							<p><strong>详细地址：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" class="input" value="科学大道166号郑州轻工业学院" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<p><strong>手机号码：</strong></p>
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<p><strong>固定电话：</strong></p>
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<input type="text" class="input" value="18037455549" />
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<input type="text" class="input" value="6957801" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<p><strong>邮箱：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" class="input" value="1054095822@qq.com" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<ul>
								<li>&nbsp;</li>
								<li>&nbsp;</li>
							</ul>
						</div>
						<div class="line">
							<div class="x4">
								<input type="submit" class="button bg-green" value="确认增加" />
							</div>
							<div class="x4">
								<input type="reset" class="button bg" value="重新填写" />
							</div>
							<div class="x4">

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--          *********************     底部内容           *********************           -->
		<div class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom ">
			<div class="container ">
				<div class="line ">
					<div class="table-responsive padding hidden-l ">
						<ul class="nav nav-sitemap ">
							<li><a href="# ">新闻资讯</a>
								<ul>
									<li><a href="# ">新闻公告</a> </li>
									<li><a href="# ">业界资讯</a> </li>
									<li><a href="# ">媒体报道</a> </li>
								</ul>
							</li>
							<li><a href="# ">产品中心</a>
								<ul>
									<li><a href="# ">产品分类</a> </li>
									<li><a href="# ">产品品牌</a> </li>
									<li><a href="# ">产品特色</a> </li>
								</ul>
							</li>
							<li><a href="# ">技术反馈</a>
								<ul>
									<li><a href="# ">售后服务</a> </li>
									<li><a href="# ">营销网络</a> </li>
									<li><a href="# ">服务支持</a> </li>
								</ul>
							</li>
							<li><a href="# ">留言反馈</a> </li>
							<li><a href="# ">联系方式</a> </li>
						</ul>
					</div>
				</div>
			</div>
			<div class="text-center ">
				版权所有 © 郑州轻工业学院，图ICP备：541313440202
			</div>
		</div>
	</body>

</html>