<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>****二手管理与服务平台</title>
	</head>
	<frameset rows="95px,*" border="0" >
		<frameset cols="160px,*">
			<frame src="${pageContext.request.contextPath}/manager/index_head.action"/>
			<frame src="${pageContext.request.contextPath}/manager/index_top.action">
		</frameset>
		<frameset cols="160px,*">
			<frame src="${pageContext.request.contextPath}/manager/index_left.action"/>
			<frame src="${pageContext.request.contextPath}/manager/index_main.action" name="main">
		</frameset>
	</frameset>
</html>
