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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
	</head>

	<body>
		<!--********************************          首栏              ***********************************-->
		<div class="register-head-div">
			<div class="register-head-container container">
				<div class="register-line line">
					<div class="x2">
						<img src="${pageContext.request.contextPath}/img/fish.png" />
					</div>
					<div class="x7">
						<h1>欢迎注册</h1>
					</div>
					<div class="x3">
						<ul class="bread">
							<li>&nbsp;</li>
							<li><strong>已有帐号，</strong><a href="user_loginar.action">请登录</a></li>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--********************************          中部注册              ***********************************-->
		<div class="register-body-container container">
			<div class="line">
				<div class="x2">

				</div>
				<div class="x5">
					<form action="user_reg.action" method="post">
						<div class="register-body-first-line line">
							<div class="user-div">
								<div class="x3">
									<p>用&nbsp;户&nbsp;名</p>
								</div>
								<div class="x9">
									<input type="text" name="username" id="" placeholder="您的帐户名/登录名" maxlength="15"/>
								</div>
							</div>
						</div>
						<div class="line">
							<div class="other-div">
								<div class="x3">
									<p>姓名</p>
								</div>
								<div class="x9">
									<input type="text" name="name" id="" placeholder="请输入真实姓名" maxlength="15"/>
								</div>
							</div>
						</div>
						<div class="line">
							<div class="other-div">
								<div class="x3">
									<p>联系方式</p>
								</div>
								<div class="x9">
									<input type="text" name="phone" id="" placeholder="请输入手机号" maxlength="15"/>
								</div>
							</div>
						</div>
						<div class="line">
							<div class="other-div">
								<div class="x3">
									<p>设置密码</p>
								</div>
								<div class="x9">
									<input type="password" name="password" placeholder="建议至少使用两种字符组合" maxlength="15"/>
								</div>
							</div>
						</div>
						<div class="line">
							<div class="other-div">
								<div class="x3">
									<p>确认密码</p>
								</div>
								<div class="x9">
									<input type="password" id="" placeholder="请再次输入密码" maxlength="15"/>
								</div>
							</div>
						</div>
						<div class="line">
							<div class="other-div">
								<div class="x3">
									<p>验&nbsp;证&nbsp;码</p>
								</div>
								<div class="x6">
									<input type="text" id="code" placeholder="请输入验证码" maxlength="4"/ onblur="yanzheng();">
								</div>
								<div class="x3">
									<img src="${pageContext.request.contextPath}/AuthImg" id="authCode"  onclick="changeImg()"/>
								</div>
							</div>
						</div>
						<div class="line">
							<input type="submit" class="submit-button" value="立即注册" id="submit-button"/>
						</div>
					</form>
				</div>
				<div class="register-body-x1 x1">

				</div>
				<div class="x1">

				</div>
				<div class="x3">
					<div class="img-line line">
						<img src="${pageContext.request.contextPath}/img/head-im.png" />
					</div>
					<div class="word-line line">
						<div class="x8">
							<ul>
								<li>&nbsp;</li>
								<li>
									<p><strong>1.</strong>有中国国籍</p>
								</li>
								<li>
									<p><strong>2.</strong>18-55周岁</p>
								</li>
								<li>
									<p><strong>3.</strong>无不良诚信记录</p>
								</li>
								<li>
									<p><strong>4.</strong>持有各行信用卡/储蓄卡</p>
								</li>
								<li>&nbsp;</li>
							</ul>
						</div>
						<div class="x4">

						</div>
					</div>
				</div>
			</div>
			<div class="register-body-last-line line">

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
//alert("${authCode}");
function changeImg(){    
    $("#authCode").attr("src","${pageContext.request.contextPath}/AuthImg?d="+new Date().getTime());    
}  
function yanzheng(){
	var url="user_yanzhengma.action";
	$.post(url,function(code){		
	if($("#code").val()==code){
		$("submit-button").disabled=false;
		return true;
	}else{
		alert("验证码错误，请重试！");
		$("submit-button").disabled=true;
		return false;
	}
	});
	function tijiao(){
		
	}
}
</script>
</html>