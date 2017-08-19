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

	<body class="My-Oreders-body">
		<div class="Main-line line">
			<div class="x3">
				<div class="panel border bg-white">
					<div class="panel-body text-center">
						<%-- <img src="${pageContext.request.contextPath}/img/face.jpg" width="120px" class="radius-circle" />
						<br /> admin --%>
					</div>
					<div class="panel-foot bg-back border-back">您好，${sessionScope.adminLoginer.name}</div>
				</div>
			</div>
			<div class="x4">

			</div>
		</div>
		

	</body>

</html>