<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
	</head>

	<body>
		<!--********************************          首栏              ***********************************-->
		<div class="container">
			<div class="login-line line">
				<div class="x3">
					<img src="${pageContext.request.contextPath}/img/fish.png" />
				</div>
				<div class="x6">

				</div>
				<div class="x3">
					<ul class="bread">
						<li><a href="index.html"><i class="fa fa-home"></i>首页</a> </li>
						<li><a href="#" class="win-favorite"><i class="fa fa-star"></i>加入收藏</a></li>
						<li><a href="#" class="win-print"><i class="fa fa-file-word-o"></i>打印页面</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--********************************          中部登录              ***********************************-->
		<div class="bg-blue ">
			<div class="container">
				<div class="line-login line">
					<div class="x7">
						<div class="line">
							<div class="x6">
								<img src="${pageContext.request.contextPath}/img/surper.png" />
							</div>
							<div class="x6">
								<strong>欢乐GO，新品登场!</strong>
								<h2>优惠多多，福利多多</h2>
							</div>
						</div>

					</div>
					<div class="x5">
						<div class="login-x5">
							<form method="post" class="form-inline" action="user_login.action">
								<div class="form-group">
									<div class="field">
										<div class="input-group">
											<h3>账户登录</h3>
											<hr />
										</div>
									</div>
									<div class="field">
										<div class="input-group">
											<span class="addon fa fa-user"></span>
											<input type="text" class="input" size="27" name="username" placeholder="账号/手机号" />
										</div>
									</div>
									<div class="field">
										<div class="input-group">
											<span class="addon fa fa-lock"></span>
											<input type="password" class="input" size="27" name="password" placeholder="密码" />
										</div>
									</div>
									<div class="field">
										<div class="input-group">
											<span class="addon fa fa-photo"></span>
											<input type="hidden" id="hd" value="${authCode}"/>
											<input type="text" class="input" id="verify-input" size="10" placeholder="输入验证码" maxlength="4" onblur="yanzheng();"/>
											<img src="${pageContext.request.contextPath}/AuthImg" id="authCode"  onclick="changeImg()"/>
										</div>
									</div>
									<div class="field">
										<div class="input-group">
											<input type="submit" id="tj" class="button bg-yellow button-small button-block" value="登录" onclick="return yanzheng();"/>
										</div>
									</div>
									<div class="line">
										<div class="x6">
											<a>忘记密码</a>
										</div>
										<div class="x6-2 x6">
											<a href="user_regar.action">立即注册</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--********************************          底部导航              ***********************************-->
		<div class="container-layout">
			<div class="padding-top">
				<div class="text-center">
					<ul class="nav nav-inline">
						<li><a href="#">关于我们</a></li>
						<li><a href="#">新闻资讯</a> </li>
						<li><a href="#">产品中心</a> </li>
						<li><a href="#">技术反馈</a> </li>
						<li><a href="#">留言反馈</a> </li>
						<li><a href="#">联系方式</a> </li>
					</ul>
				</div>
				<div class="text-center height-big">
					版权所有 © 郑州轻工业学院，图ICP备：541313440202
				</div>
			</div>
		</div>
	</body>
<script type="text/javascript">
alert("密码错误");
window.location.href="user_loginar.action";
</script>
</html>