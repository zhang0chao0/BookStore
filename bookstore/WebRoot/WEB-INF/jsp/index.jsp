<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>CUG网上书店</title>
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
<!-- 引入手机适配JQuerymobile框架 -->
<link href="${pageContext.request.contextPath}/css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.5.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a>
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.PNG" />
			</a>
		</div>
	</div>
	<div class="span9">
	<div class="headerAd">
		<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" />
	</div>	
	</div>
	<!-- 包含菜单 -->
	<%@ include file="menu.jsp" %>
	
</div>	
<div class="container index">
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title">
						<strong>热门图书</strong>
					</div>
						<ul class="tabContent" style="display: block;">
                            <s:iterator var="p" value="hList">
									<li>
										<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;">
										</a>
									</li>
							</s:iterator>
						</ul>
			</div>
		</div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>最新图书</strong>
						<a  target="_blank"></a>
					</div>
						 <!-- 把放在栈堆里面的数据迭代出来 -->
						 <ul class="tabContent" style="display: block;">
							<s:iterator var="p" value="nList">
									<li>
									<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"  target="_blank" >
									<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"  style="display: block;" />
									</a>
									</li>
							</s:iterator>	
						</ul>
			</div>
		</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
					<li><a>关于我们</a>|</li>
					<li><a>联系我们</a>|</li>
					<li><a>诚聘英才</a>|</li>
					<li><a>法律声明</a>|</li>
					<li><a>友情链接</a>|</li>
					<li><a>支付方式</a>|</li>
					<li><a>配送方式</a>|</li>
					<li><a>官网</a>|</li>
					<li><a>论坛</a></li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2016-2021 网上商城 版权所有</div>
	</div>
</div>
</body></html>