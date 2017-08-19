<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
					<strong><i class="fa fa-users"></i>会员管理</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">会员成员</a></li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<%-- <div class="line">
							<form>
								<div class="x6">
									<strong>会员账号：</strong>
									<input type="text" id="" placeholder="请输入会员账号" />
									<input type="submit" id="" name="" class="much-search" value="搜索" />
								</div>
							</form>
							<div class="x6">
								<button class="Member-modify dialogs">未知按钮</button>
							</div>
						</div> --%>
						<div class="table-responsive-y">
							<table class="table table-hover">
								<thead>
									<tr class="current">
										<th>
											会员账号
										</th>
										<th>
											姓名
										</th>
										<th>
											注册时间
										</th>
										<th>
											操作
										</th>
									</tr>
								</thead>
								<s:iterator value="recordList">
								<tbody>
									<tr>
										<td>
											<a href="admin_info.action?id=${id}">${username}</a>
										</td>
										<td>
											${name}
										</td>
										<td>
											${createTime}
										</td>
										<td>
											<a href="admin_delete.action?id=${id}"><button class="modify-button" >删除</button></a>
										</td>
									</tr>
								</tbody>
								</s:iterator>
							</table>
						</div>
						
					</div>
				</div>
			</div>
		</div>

		<!--    *****************************     提示修改信息DIV                    *******************************************            -->
	</body>

</html>