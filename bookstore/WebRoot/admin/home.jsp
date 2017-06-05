<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
	<title>CUG网上书店后台管理</title>
	<!-- 引入手机适配JQuerymobile框架 -->
   <link href="${pageContext.request.contextPath}/css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.5.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
    <style>
		body{
			SCROLLBAR-ARROW-COLOR: #ffffff;  SCROLLBAR-BASE-COLOR: #dee3f7;
		}
    </style>
  </head>
  
<frameset rows="103,*,43" frameborder=0 border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/admin/top.jsp" name="topFrame" scrolling="NO" noresize />
  <frameset cols="159,*" frameborder="0" border="0" framespacing="0">
		<frame src="${pageContext.request.contextPath}/admin/left.jsp" name="leftFrame" noresize scrolling="YES" />
		<frame src="${pageContext.request.contextPath}/admin/welcome.jsp" name="mainFrame" />
  </frameset>
  <frame src="${pageContext.request.contextPath}/admin/bottom.jsp" name="bottomFrame" scrolling="NO"  noresize />
</frameset>
</html>





