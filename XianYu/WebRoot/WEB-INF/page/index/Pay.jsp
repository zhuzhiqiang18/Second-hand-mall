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
		<div class="Buy-container container">
			<div class="Buy-line line">
				<div class="step">
					<div class="step-one  step-bar active">
						<span class="step-point -check">1</span><span class="step-text"></span>1. 确认订单信息</span>
					</div>
					<div class="step-one step-bar active">
						<span class="step-point">2</span><span class="step-text">2. 银行卡付款</span>
					</div>
					<div class="step-two step-bar">
						<span class="step-point">3</span><span class="step-text">3. 确认收货</span>
					</div>
				</div>
				<div class="Orders-info line">
					<div class="Orders-info-x1 x1">
						<img src="${pageContext.request.contextPath}/uploadImg/${commodity.imgUrl}" height="150px" width="125px" />
					</div>
					<div class="Orders-info-x8 x8">
						<div class="Orders-info-First-div">
							<div class="line">
								<strong>宝贝名称：</strong> ${commodity.name}
							</div>
							<div class="Orders-info-x8-line line">
								<strong>卖家昵称：</strong> ${commodity.user.username}
							</div>
						</div>
					</div>
					<div class="Orders-info-x3 x3">
						<div class="Orders-info-x3-div">
							<strong>${merMoney}</strong>元
						</div>
					</div>
				</div>
				<div class="Orders-info-line-Two line">
					<div class="Orders-info-line-Two-First">
						<div  class="Orders-info-line-Two-First-one">
							<div class="Orders-info-line-Two-First-one-x1 x1">
								<input name="#" type="checkbox" value="#" data-type="checkbox"/>
							</div>
							<div class="Orders-info-line-Two-First-one-x3 x3">
								<div class="Orders-info-line-Two-First-one-x3-one">
									中国工商银行
								</div>

							</div>
							<div class="Orders-info-line-Two-First-one-x2 x2">
								<div class="Orders-info-line-Two-First-one-x2-one" >
									*************2121
								</div>
							</div>
							<div class="Orders-info-line-Two-First-one-x2 x2">
								<div  class="Orders-info-line-Two-First-one-x2-one">
									储蓄卡|快捷
								</div>
							</div>

							<div class="Orders-info-line-Two-First-one-x4 x4">
								<div class="Orders-info-line-Two-First-one-x4-one">
									支付<strong>${merMoney}</strong>元
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<div class="Buy-line-Two-Top line">
					<button class="button" style="color: #00AAEE;">其他付款方式</button>
				</div>
				<div class="Buy-line-Two-Top line">
					<i class="fa fa-shirtsinbulk"></i>   智能安全防护体系正在进行检测...
				</div>
				<div class="Buy-line-Two-Top line">
					<strong>支付密码：</strong>
				</div>
				<form action="order_buy_ok.action?id=${id}" method="post">
					<div class="Buy-line-Two-Top line">
						<input type="" name="" id="" value="" class="Pay-input"/>
						<a>  忘记密码？</a>
					</div>
					<div class="Buy-line-Two-Top line">
						<input type="submit" value="确认付款" class="Pay-Button" onclick="ok();"/>
					</div>
				</form>
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
<script type="text/javascript">
function ok(){
	alert("购买成功，将跳转到订单列表");
}
</script>
</html>