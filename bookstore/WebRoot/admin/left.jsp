<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>CUG网上书店后台管理</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
<!-- 引入手机适配JQuerymobile框架 -->
<link href="${pageContext.request.contextPath}/css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.5.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">
	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
		//<!--
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		d.add('0101','01','用户管理','','','mainFrame');
		d.add('010101','0101','用户管理','${pageContext.request.contextPath}/userAdmin_findAll.action?page=1','','mainFrame');
		d.add('0102','01','一级分类管理','','','mainFrame');
		d.add('010201','0102','一级分类管理','${pageContext.request.contextPath}/adminCategory_findAll.action','','mainFrame');
		d.add('0103','01','二级分类管理');
		d.add('010301','0103','二级分类管理','${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1','','mainFrame');
		d.add('0104','01','图书管理');
		d.add('010401','0104','图书管理','${pageContext.request.contextPath}/adminProduct_findAll.action?page=1','','mainFrame');
		d.add('0105','01','订单管理');
		d.add('010501','0105','订单管理','${pageContext.request.contextPath}/adminOrder_findAll.action?page=1','','mainFrame');
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>



