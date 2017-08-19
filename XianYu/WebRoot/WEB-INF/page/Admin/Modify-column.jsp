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
		<link rel="stylesheet" href="../css/pintuer.css" />
		<link rel="stylesheet" href="../css/web.css" />
		<link rel="stylesheet" href="../js/font-awesome-4.5.0/css/font-awesome.min.css" />
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/pintuer.js"></script>
		<script src="../js/Select-More.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="Manage-line line">
			<div class="tab table-bordered">
				<div class="tab-head">
					<strong><i class="fa fa-list-ul"></i>栏目管理</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">修改栏目</a></li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<form>
							<div class="line">
								<div class="x2">
									<strong>栏目名：</strong>
								</div>
								<div class="x3">
									<input type="text" class="input" id="" value="******"/>
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">
									<strong>发布人：</strong>
								</div>
								<div class="x3">
									<input type="text" class="input" id="" value="******"/>
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">

								</div>
								<div class="x3">
									<input type="submit" class="button bg-yellow button-block" id="" value="确认增加" />
								</div>
								<div class="x7">

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</body>

</html>