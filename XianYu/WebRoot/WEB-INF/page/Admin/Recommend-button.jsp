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
					<strong><i class="fa fa-list-ul"></i>栏目管理>推荐按钮</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">导航分类</a></li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<div class="line">
							<form>
								<div class="x6">
									<strong>栏目名：</strong>
									<input type="text" id="" placeholder="请输入栏目名称" />
									<input type="submit" id="" name="" class="much-search" value="搜索" />
								</div>
							</form>
							<div class="x6">
								<button class="Member-modify dialogs" onclick="Addcolumn()">添加栏目</button>
							</div>
						</div>
						<div class="table-responsive-y">
							<table class="table table-hover">
								<thead>
									<tr class="current">
										<th>
											编号
										</th>
										<th>
											栏目名
										</th>
										<th>
											发布人
										</th>
										<th>
											发布时间
										</th>
										<th>
											操作
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											1
										</td>
										<td>
											<a href="Recommend-button-L1.html">兴趣栏目</a>
										</td>
										<td>
											陈柯琪
										</td>
										<td>
											2015-11-11
										</td>
										<td>
											<button class="modify-button" onclick="modify()">修改</button>
										</td>
									</tr>
								</tbody>
								<tbody>
									<tr>
										<td>
											2
										</td>
										<td>
											<a href="#">最新上市栏目</a>
										</td>
										<td>
											陈柯琪
										</td>
										<td>
											2015-11-11
										</td>
										<td>
											<button class="modify-button" onclick="modify()">修改</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--    *****************************     提示修改信息DIV                    *******************************************            -->
	</body>

</html>