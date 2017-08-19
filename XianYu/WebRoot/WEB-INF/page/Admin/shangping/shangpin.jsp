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
		<script src="${pageContext.request.contextPath}/js/Select-More.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="Manage-line line">
			<div class="tab table-bordered">
				<div class="tab-head">
					<strong><i class="fa fa-list-ul"></i>商品管理</strong> <span class="tab-more"><a href="javascript:history.go(-1)">返回上一页</a></span>
					<ul class="tab-nav">
						<li class="active"><a href="#tab-start">商品列表</a></li>
						<li><a href="#tab-end">下架商品</a></li>
					</ul>
				</div>
				<div class="tab-body">
					<div class="tab-panel active" id="tab-start">
						<%-- <div class="line">
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
						</div> --%>
						<div class="table-responsive-y">
							<table class="table table-hover">
								<thead>
									<tr class="current">
										<th>
											编号
										</th>
										<th>
											商品名
										</th>
										<th>
											发布人
										</th>
										<th>
											发布时间
										</th>
										<th>
											价格
										</th>
										<th>
											操作
										</th>
									</tr>
								</thead>
								<s:iterator value="recordList" status="l">
								<tbody>
									<tr>
										<td>
											${l.index+1}
										</td>
										<td>
										<a href="${pageContext.request.contextPath}/Member/commodity_xiangqing.action?id=${id}">${name}</a>  
										</td>
										<td>
											${user.name}
										</td>
										<td>
											${date}
										</td>
										<td>
											${xianjia}
										</td>
										<td>
											<a href="adminsp_delete.action?id=${id}">下架</a>
										</td>
									</tr>
								</tbody>
								</s:iterator>
							</table>
						</div>
					</div>
					
					<!--下架商品  -->
					
					<div class="tab-panel" id="tab-end">
						<div class="table-responsive-y">
							<table class="table table-hover">
								<thead>
									<tr class="current">
										<th>
											编号
										</th>
										<th>
											商品名
										</th>
										<th>
											发布人
										</th>
										<th>
											发布时间
										</th>
										<th>
											价格
										</th>
										<th>
											操作
										</th>
									</tr>
								</thead>
								<s:iterator value="#commodities" status="l">
								<tbody>
									<tr>
										<td>
											${l.index+1}
										</td>
										<td>
										<a href="${pageContext.request.contextPath}/Member/commodity_xiangqing.action?id=${id}">${name}</a>  
										</td>
										<td>
											${user.name}
										</td>
										<td>
											${date}
										</td>
										<td>
											${xianjia}
										</td>
										<td>
											<a href="adminsp_unDelete.action?id=${id}">上架</a>
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