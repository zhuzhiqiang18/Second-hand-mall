<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pintuer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/web.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/font-awesome-4.5.0/css/font-awesome.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pintuer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/Select-More.js"></script>

</head>

<body>
	<%@include file="../common/top.jspf" %>

	<!--********************************          发布宝贝信息               ***********************************-->
	<form action="commodity_fabu.action" method="post" enctype="multipart/form-data">
		<div class="register-body-container container">
			<div class="line">

				<div class="x2"></div>
				<div class="x5">
					<div class="register-body-first-line line">
						<div class="user-div">
							<div class="x3">
								<p>宝贝名称</p>
							</div>
							<div class="x9">
								<input type="text" name="name" placeholder="您的宝贝名称" maxlength="15" />
							</div>
						</div>
					</div>
					<div class="line">
						<div class="other-div">
							<div class="x3">
								<p>类目</p>
							</div>
							<div class="x3">
								<s:select list="lanMus" listKey="id" listValue="name"
									onchange="finderji(this);" headerKey="" headerValue="--请选择--">
								</s:select>
							</div>
							<div class="x3">
								<select id="selectId" name="lanMuId">

								</select>
							</div>
						</div>
					</div>
					<div class="line">
						<div class="other-div">
							<div class="x3">
								<p>宝贝价格</p>
							</div>
							<div class="x3">
								<input type="text" id="" name="xianjia" placeholder="卖出价格" maxlength="8" />
							</div>
							<div class="x2">
								<p>原价</p>
							</div>
							<div class="x3">
								<input type="text" id="" name="yuanjia" placeholder="购买原价" maxlength="8" />
							</div>
							<div class="x1">
								<p>元</p>
							</div>
						</div>
					</div>
					<div class="line">
						<div class="other-div">
							<div class="x3">
								<p>运费</p>
							</div>
							<div class="x2">
								<input type="text" name="yunfei" id="" placeholder="本地价格" maxlength="4" />
							</div>
							<div class="x1">
								<p>元</p>
							</div>
							<%-- <div class="x2">
								<p>新旧</p>
							</div>
							<div class="x3">
								<select name="oldOrNew">
									<option value="false" selected>非全新</option>
									<option value="true">全新</option>
								</select>
							</div> --%>
							<div class="x1"></div>
						</div>
					</div>
					<div class="line">
						<div class="other-div">
							<div class="x3">
								<p>联系方式</p>
							</div>
							<div class="x3">
								<input type="text" id="" name="phone" placeholder="本人手机号" maxlength="13" />
							</div>
							<div class="x2">
								<p>姓名</p>
							</div>
							<div class="x3">
								<input type="text" id=""  name="zhenshiname" placeholder="真实姓名" maxlength="8" />
							</div>
							<div class="x1"></div>
						</div>
					</div>
					<div class="line">
						<div class="other-div">
							<div class="x3">
								<p>所在地</p>
							</div>
							<div class="x3">
								<input type="text" id="" name="address" placeholder="填写详细地址" />
							</div>
						</div>
					</div>
					<div class="line">
						<div class="baby-info-div">
							<div class="x3">
								<p>宝贝简介</p>
							</div>
							<div class="x9">
								<textarea rows="5" class="input" name="miaoshu" >
								
								</textarea>
							</div>
						</div>
					</div>
					<div class="line">
						<div class="agree-lie">
							<input name="pintuer" type="checkbox">我已阅读并同意《*****用户发布协议》
						</div>
					</div>
					<div class="line">
						<input type="submit" class="submit-button" value="立即发布" />
					</div>

				</div>
				<div class="x1"></div>
				<div class="x4">
					<div class="titile-div">
							<strong>宝贝参数--预览</strong>
						</div>
						<div class="Big-img">
							<img id="portrait" src="${pageContext.request.contextPath}/img/iPad.jpg" height="350px" width="320px"/>
						</div>
						<div class="Input-img">
							<a class="button input-file" href="javascript:void(0);">点此，上传宝贝图片<input size="100" type="file" name="upload" onchange="showPreview(this)"/></a>
						</div>
						
						<div class="titile-div">
							<strong>宝贝图片--预览</strong>
						</div>
						<div class="Big-img">
							<img id="portrait1" src="${pageContext.request.contextPath}/img/iPad.jpg" height="350px" width="320px"/>
						</div>
						<div class="Input-img">
							<a class="button input-file" href="javascript:void(0);">点此，上传宝贝图片<input size="100" type="file" name="upload" onchange="showPreview1(this)"/></a>
						</div>
					</div>
					
				</div>
				</div>
		<div class="line"></div>
	</form>
	<!--          *********************     底部内容           *********************           -->
	<div
		class="container-layout bg-blue bg-inverse padding-big-top padding-big-bottom">
		<div class="container">
			<div class="line">
				<div class="table-responsive padding hidden-l">
					<ul class="nav nav-sitemap">
						<li><a href="#">新闻资讯</a>
							<ul>
								<li><a href="#">新闻公告</a></li>
								<li><a href="#">业界资讯</a></li>
								<li><a href="#">媒体报道</a></li>
							</ul></li>
						<li><a href="#">产品中心</a>
							<ul>
								<li><a href="#">产品分类</a></li>
								<li><a href="#">产品品牌</a></li>
								<li><a href="#">产品特色</a></li>
							</ul></li>
						<li><a href="#">技术反馈</a>
							<ul>
								<li><a href="#">售后服务</a></li>
								<li><a href="#">营销网络</a></li>
								<li><a href="#">服务支持</a></li>
							</ul></li>
						<li><a href="#">留言反馈</a></li>
						<li><a href="#">联系方式</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center">版权所有 © 郑州轻工业学院，图ICP备：541313440202</div>
	</div>
</body>
<script type="text/javascript" charset="UTF-8">
	function finderji(obj) {
		var id = obj.value;
		var url = "commodity_finderji.action";
		var date = {
			"id" : id
		};
		$.post(url, date, function(reslut) {
			document.getElementById("selectId").options.length = 0;
			var json = eval(reslut);
			for (var i = 0; i < json.length; i++) {
				document.getElementById("selectId").options.add(new Option(
						json[i].value, json[i].key));
			}
		});
	}
    function showPreview(source) {
        var file = source.files[0];
        if (window.FileReader) {
            var fr = new FileReader();
            fr.onloadend = function(e) {
                document.getElementById("portrait").src = e.target.result;
            };
            fr.readAsDataURL(file);
        }
    }
    function showPreview1(source) {
        var file = source.files[0];
        if (window.FileReader) {
            var fr = new FileReader();
            fr.onloadend = function(e) {
                document.getElementById("portrait1").src = e.target.result;
            };
            fr.readAsDataURL(file);
        }
    }
</script>
</html>