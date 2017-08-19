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
	</head>
	<body style="background-color: #E6F2FB;">
		<div class="line">
			<img src="${pageContext.request.contextPath}/img/logo.png" style="padding: 12px;"/>
		</div>
	</body>
</html>
