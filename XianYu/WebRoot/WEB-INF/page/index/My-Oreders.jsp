<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<%@include file="../common/top.jspf" %>
		<!--          *********************     我的订单-------内容           *********************           -->
		<div class="My-Oreders-container container">
			<div class="My-Oreders line">
				<div class="x2">
					<strong>订单中心</strong>
					<ul>
						<li><a href="My-Oreders.html">我的订单</a></li>
					</ul>
					<strong>出售中心</strong>
					<ul>
						<li><a href="My-Solds.html">我的出售</a></li>
					</ul>
					<strong>个人设置</strong>
					<ul>
						<li><a href="Address-Orders.html">收货地址</a></li>
					</ul>
				</div>
				<div class="x10">
					<div class="line">
						<ul>
							<li>&nbsp;</li>
							<li><strong><i class="fa fa-money"></i>我的订单</strong></li>
							<li>&nbsp;</li>
						</ul>
					</div>
					<div class="x10-line line">
						<div class="x4">
							<div class="line">
								<div class="x3">
									<ul>
										<li>&nbsp;</li>
										<li><strong class="li-strong">全部订单</strong></li>
										<li>&nbsp;</li>
									</ul>
								</div>
								<div class="x3">
									<ul>
										<li>&nbsp;</li>
										<li><a>待付款</a></li>
										<li>&nbsp;</li>
									</ul>
								</div>
								<div class="x3">
									<ul>
										<li>&nbsp;</li>
										<li><a>待收货</a></li>
										<li>&nbsp;</li>
									</ul>
								</div>
								<div class="x3">
									<ul>
										<li>&nbsp;</li>
										<li><a>待评价</a></li>
										<li>&nbsp;</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="x4">

						</div>
						<div class="x4">
							<form>
								<ul>
									<li>&nbsp;</li>
									<li>
										<input type="text" id="" placeholder="商品名称/编号/订单号" />
										<input type="submit" id="" name="" class="My-Oreders-search" value="搜索" />
									</li>
									<li>&nbsp;</li>
								</ul>
							</form>
						</div>
					</div>
					<div class="orders-line line">
						<div class="x6">
							<div class="line">
								<div class="x6">
									<ul>
										<li>
											<select>
												<option value="" selected>近三个月订单</option>
												<option value="">今年内订单</option>
												<option value="">2015年内订单</option>
												<option value="">2014年内订单</option>
												<option value="">2013年内订单</option>
											</select>
										</li>
									</ul>
								</div>
								<div class="x6">
									<p>订单详情</p>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="line">
								<div class="x3">
									<p>收货人</p>
								</div>
								<div class="x3">
									<p>金额</p>
								</div>
								<div class="x3">
									<ul>
										<li>
											<select>
												<option value="" selected>全部状态</option>
												<option value="">等待付款</option>
												<option value="">等待收货</option>
												<option value="">已完成</option>
												<option value="">已取消</option>
											</select>
										</li>
									</ul>
								</div>
								<div class="x3">
									<p>操作</p>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!--**************************        全部订单详情          ************************ -->
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>2016-3-25-15:08</p>
									</div>
									<div class="x6">
										<p>订单号：115656534</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="img/iPad.jpg" />
									</div>
									<div class="x6">
										<a href="Item-details.html">平板电脑全新未激活apple ipad mini3 64G国行</a>
									</div>
									<div class="x2">
										x1
									</div>
									<div class="x2">
										<a href="">返修/退换货</a>
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>***购物商城</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click" data-target="#mydialog-delect-orders" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>陈柯琪</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥3999.00</p>
										<p style="text-align: center;">货到付款</p>
									</div>
									<div class="x3">
										<p><span class="fa fa-check-square-o"></span>订单完成</p>
										<a href="#" style="text-align: center;">订单详情</a>
									</div>
									<div class="x3">
										<a href="#" style="text-align: center;">晒图评价</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!--**************************        全部订单详情          ************************ -->
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>2016-3-25-15:08</p>
									</div>
									<div class="x6">
										<p>订单号：115656535</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="img/iPhone.jpg" />
									</div>
									<div class="x6">
										<a href="Item-details.html">Apple/苹果 iPhone6s 移动版4G手机智能国行正品</a>
									</div>
									<div class="x2">
										x1
									</div>
									<div class="x2">
										<a href="">返修/退换货</a>
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>***购物商城</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click" data-target="#mydialog-delect-orders" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>陈柯琪</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥4488.00</p>
										<p style="text-align: center;">货到付款</p>
									</div>
									<div class="x3">
										<p><span class="fa fa-check-square-o"></span>订单完成</p>
										<a href="#" style="text-align: center;">订单详情</a>
									</div>
									<div class="x3">
										<a href="#" style="text-align: center;">晒图评价</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!--**************************        全部订单详情          ************************ -->
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>2016-3-25-15:08</p>
									</div>
									<div class="x6">
										<p>订单号：115656534</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="img/music-1.jpg" />
									</div>
									<div class="x6">
										<a href="Item-details.html">EARISE/雅兰仕 Q8笔记本电脑音响多</a>
									</div>
									<div class="x2">
										x1
									</div>
									<div class="x2">
										<a href="">返修/退换货</a>
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>***购物商城</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click" data-target="#mydialog-delect-orders" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>陈柯琪</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥120.00</p>
										<p style="text-align: center;">货到付款</p>
									</div>
									<div class="x3">
										<p><span class="fa fa-check-square-o"></span>订单完成</p>
										<a href="#" style="text-align: center;">订单详情</a>
									</div>
									<div class="x3">
										<a href="#" style="text-align: center;">晒图评价</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!--**************************        全部订单详情          ************************ -->
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>2016-3-25-15:08</p>
									</div>
									<div class="x6">
										<p>订单号：115656534</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="img/ear-2.jpg" />
									</div>
									<div class="x6">
										<a href="Item-details.html">Beats Solo2 随身视听</a>
									</div>
									<div class="x2">
										x1
									</div>
									<div class="x2">
										<a href="">返修/退换货</a>
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>***购物商城</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click" data-target="#mydialog-delect-orders" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>陈柯琪</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥99.00</p>
										<p style="text-align: center;">货到付款</p>
									</div>
									<div class="x3">
										<p><span class="fa fa-check-square-o"></span>订单完成</p>
										<a href="#" style="text-align: center;">订单详情</a>
									</div>
									<div class="x3">
										<a href="#" style="text-align: center;">晒图评价</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!--**************************        全部订单详情          ************************ -->
					<div class="My-orders-Shopping line">
						<div class="My-orders-class">
							<div class="My-orders-class-First-x6 x6">
								<div class="line">
									<div class="x6">
										<p>2016-3-25-15:08</p>
									</div>
									<div class="x6">
										<p>订单号：115656534</p>
									</div>
								</div>
								<hr />
								<div class="First-line line">
									<div class="x2">
										<img src="img/ear-3.jpg" />
									</div>
									<div class="x6">
										<a href="Item-details.html">Sony/索尼 MDR-XB450AP 3.5mm 低音炫彩流行摇滚音乐手机通话</a>
									</div>
									<div class="x2">
										x1
									</div>
									<div class="x2">
										<a href="">返修/退换货</a>
									</div>
								</div>
							</div>
							<div class="My-orders-class-Two-x6 x6">
								<div class="line">
									<div class="x11">
										<p>***购物商城</p>
									</div>
									<div class="x1">
										<a href="#" class="dialogs" data-toggle="click" data-target="#mydialog-delect-orders" data-mask="1" data-width="25%">
											<i class="fa fa-trash"></i>
										</a>
									</div>
								</div>
								<hr />
								<div class="Order-details-line line">
									<div class="x3">
										<p>陈柯琪</p>
									</div>
									<div class="x3">
										<p class="price-orders">总额：¥199.00</p>
										<p style="text-align: center;">货到付款</p>
									</div>
									<div class="x3">
										<p><span class="fa fa-check-square-o"></span>订单完成</p>
										<a href="#" style="text-align: center;">订单详情</a>
									</div>
									<div class="x3">
										<a href="#" style="text-align: center;">晒图评价</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
				</div>
			</div>
		</div>

		<!--          *********************     删除提示信息DIV           *********************           -->
		<div id="mydialog-delect-orders">
			<div class="dialog">
				<div class="dialog-head">
					<span class="close rotate-hover"></span><strong>删除商品？</strong>
				</div>
				<div class="dialog-body">
					<div class="line">
						您确定要删除此商品么，删除后，将无法恢复，请谨慎操作！
					</div>
				</div>
				<div class="dialog-foot">
					<button class="button dialog-close">
						<strong>我再考虑考虑</strong>
					</button>
					<button class="button bg-green">
						<strong>去意已决</strong>
					</button>
				</div>
			</div>
		</div>
		<!--          *********************     底部内容           *********************           -->
		<div class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom ">
			<div class="container ">
				<div class="line ">
					<div class="table-responsive padding hidden-l ">
						<ul class="nav nav-sitemap ">
							<li><a href="# ">新闻资讯</a>
								<ul>
									<li><a href="# ">新闻公告</a> </li>
									<li><a href="# ">业界资讯</a> </li>
									<li><a href="# ">媒体报道</a> </li>
								</ul>
							</li>
							<li><a href="# ">产品中心</a>
								<ul>
									<li><a href="# ">产品分类</a> </li>
									<li><a href="# ">产品品牌</a> </li>
									<li><a href="# ">产品特色</a> </li>
								</ul>
							</li>
							<li><a href="# ">技术反馈</a>
								<ul>
									<li><a href="# ">售后服务</a> </li>
									<li><a href="# ">营销网络</a> </li>
									<li><a href="# ">服务支持</a> </li>
								</ul>
							</li>
							<li><a href="# ">留言反馈</a> </li>
							<li><a href="# ">联系方式</a> </li>
						</ul>
					</div>
				</div>
			</div>
			<div class="text-center ">
				版权所有 © 郑州轻工业学院，图ICP备：541313440202
			</div>
		</div>
	</body>

</html>