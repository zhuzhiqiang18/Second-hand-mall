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

	<body>
		<div class="Manage-line line">
			<div class="tab table-bordered">
				<div class="tab-head">
					<strong><i class="fa fa-user"></i>用户管理</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">个人信息</a> </li>
						<li><a href="#tab-css">增加管理员</a> </li>
						<li><a href="#tab-units">修改密码</a> </li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<div class="line">
							<div class="x9">

							</div>
							<div class="x3">
								<button class="modify dialogs" data-toggle="click" data-target="#Admin-Info-modify" data-mask="1" data-width="40%">修改信息</button>
							</div>
						</div>
						<table class="table table-striped">
							<tr>
								<th>
									姓名
								</th>
								<th>
									账号
								</th>
								<th>
									手机
								</th>
								<th>
									注册时间
								</th>
							</tr>
							<tr>
								<td>
									${sessionScope.adminLoginer.name}
								</td>
								<td>
									${sessionScope.adminLoginer.username}
								</td>
								<td>
									${sessionScope.adminLoginer.phone}
								</td>
								<td>
									${sessionScope.adminLoginer.createTime}
								</td>
							</tr>
						</table>
					</div>
					<div class="tab-panel" id="tab-css">
						<form action="admin_addAdmin.action" method="post">
							<div class="line">
								<div class="x2">
									<strong>账号：</strong>
								</div>
								<div class="x3">
									<input type="text" class="input" name="username" />
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">
									<strong>姓名：</strong>
								</div>
								<div class="x3">
									<input type="text" class="input" id="" name="name" />
								</div>
								<div class="x7">

								</div>
							</div>
							
							<div class="line">
								<div class="x2">
									<strong>联系方式：</strong>
								</div>
								<div class="x3">
									<input type="text" class="input" name="phone" id=""  />
								</div>
								<div class="x7">

								</div>
							</div>
							
							
							<div class="line">
								<div class="x2">
									<strong>登录密码：</strong>
								</div>
								<div class="x3">
									<input type="password" class="input" id="" name="password" />
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">

								</div>
								<div class="x3">
									<input type="submit" class="button bg-yellow button-block" id="" value="提交信息" />
								</div>
								<div class="x7">

								</div>
							</div>
						</form>
					</div>
					<div class="tab-panel" id="tab-units">
						<form>
							<div class="line">
								<div class="x2">
									<strong>旧密码：</strong>
								</div>
								<div class="x3">
									<input type="password" class="input" id="oldpas" name="oldpas" value="" required="required" />
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">
									<strong>新密码：</strong>
								</div>
								<div class="x3">
									<input type="password" class="input" id="newpas"  name="newpas" required="required"/>
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">
									<strong>确认密码：</strong>
								</div>
								<div class="x3">
									<input type="password" class="input" id="pas" name="pas" required="required"/>
								</div>
								<div class="x7">

								</div>
							</div>
							<div class="line">
								<div class="x2">

								</div>
								<div class="x3">
									<input type="submit" class="button bg-yellow button-block" id="" value="修改密码" onclick="uppas();" />
								</div>
								<div class="x7">

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--    *****************************     提示修改信息DIV                    *******************************************            -->
		<div id="Admin-Info-modify">
			<div class="dialog">
				<div class="dialog-head">
					<span class="close rotate-hover"></span><strong>修改信息</strong>
				</div>
				<div class="dialog-body">
					<form action="admin_update.action" method="post">
						<div class="line">
							<div class="x3">
								<p><strong>账号：</strong></p>
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<p><strong>姓名：</strong></p>
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<input type="text" class="input" value="${sessionScope.adminLoginer.username}" readonly="readonly"/>
							</div>
							<div class="x2">

							</div>
							<div class="x3">
								<input type="text" class="input" name="name" value="${sessionScope.adminLoginer.name}" />
							</div>
							<div class="x4">

							</div>
						</div>
						
						<div class="line">
							<p><strong>联系方式：</strong></p>
						</div>
						<div class="line">
							<div class="x8">
								<input type="text" class="input" name="phone" value="${sessionScope.adminLoginer.phone}" />
							</div>
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<p><strong>入职年份：</strong></p>
							</div>
							<div class="x2">

							</div>
							
							<div class="x4">

							</div>
						</div>
						<div class="line">
							<div class="x3">
								<input type="text" class="input" value="${sessionScope.adminLoginer.createTime}" readonly="readonly"/>
							</div>
							<div class="x2">

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
								<input type="submit" class="button bg-green" value="确认修改" onclick="update();"/>
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
	</body>
<script type="text/javascript">
function update(){
	alert("修改成功后，重新登录生效！");
}
function uppas(){
	if($("#newpas").val()!=$("#pas").val()){
		alert("两次输入的密码不一致！");
	}else{
	var url="admin_updatepas.action";
	var date={"oldpas":$("#oldpas").val(),"newpas":$("#newpas").val()};
	$.post(url,date,function(reslut){
		alert(reslut);
	});
	}
}
</script>
</html>