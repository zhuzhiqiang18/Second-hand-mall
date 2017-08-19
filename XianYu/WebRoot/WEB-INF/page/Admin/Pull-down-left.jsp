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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/pintuer.js"></script>
	</head>

	<body style="background-color: #F2F9FD;">
		<div class="list-link" style=" border-top: 1px solid #B5CFD9; text-align: center;">
			<!-- <a href="Main.html" target="main">开始</a> -->
			<a href="adminOrder_list.action" target="main">订单管理</a>
			<a href="admin_list.action" target="main">会员管理</a>
			<a href="lanmu_list.action" target="main">栏目管理</a>
			<a href="adminsp_list.action" target="main">商品管理</a>
			<a href="admin_adminList.action" target="main">用户管理</a>
		</div>
	</body>

</html>