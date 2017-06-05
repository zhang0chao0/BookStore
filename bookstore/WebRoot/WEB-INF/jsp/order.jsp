<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>CUG网上书店</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
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
	<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
</div>	
</div>
	
	<%@ include file="menu.jsp" %>
	
</div>	

<div class="container cart">
		<div class="span24">
			<div class="step step1">
				<ul>		
					<li  class="current"></li>
					<li  >生成订单成功</li>
				</ul>
			</div>
				<table>
					<tbody>
					<tr>
						<th colspan="5">订单编号:<s:property value="model.oid"/>&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<s:iterator var="orderItem" value="model.orderItems">
						<tr>
							<td width="60">
								<img src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"/>
							</td>
							<td>
								<s:property value="#orderItem.product.pname"/>
							</td>
							<td>
								<s:property value="#orderItem.product.shop_price"/>
							</td>
							<td class="quantity" width="60">
								<s:property value="#orderItem.count"/>
							</td>
							<td width="140">
								<span class="subtotal">￥<s:property value="#orderItem.subtotal"/></span>
							</td>				
						</tr>
						</s:iterator>
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥<s:property value="model.total"/>元</strong>
				</div>
			<form id="orderForm" action="" >
				<input type="hidden" name="oid" value="<s:property value="model.oid"/>"/>
				<div class="span24">
					<p>
							收货地址：<input name="addr" type="text" value="<s:property value="model.user.addr"/>" style="width:350px" />
								<br />
							收货人&nbsp;&nbsp;&nbsp;：<input name="name" type="text" value="<s:property value="model.user.name"/>" style="width:150px" />
								<br /> 
							联系方式：<input name="phone" type="text"value="<s:property value="model.user.phone"/>" style="width:150px" />
						</p>
						<hr />
						<hr />
						<p style="text-align:right">
							<a href="javascript:document.getElementById('orderForm').submit();">
								<img src="${pageContext.request.contextPath}/images/finalbutton.gif" width="204" height="51" border="0" />
							</a>
						</p>
				</div>
			</form>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
		      <img src="image\r___________renleipic_01/footer.jpg" height="52" width="950" />
        </div>
</div>
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
</body>
</html>




