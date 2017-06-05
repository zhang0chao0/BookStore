/**
 * 异步访问服务器查询订单状态
 * @param oid
 */
function showDetail(oid){
	var but = document.getElementById("but"+oid);
	var div1 = document.getElementById("div"+oid);
	if(but.value == "订单详情"){
		//1.创建异步对象
		var xhr = createXmlHttp();
		//2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					div1.innerHTML = xhr.responseText;
				}
			}
		}
		//3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/adminOrder_findOrderItem.action?oid="+oid+"&time="+new Date().getTime(),true);
		//4.发送
		xhr.send(null);
		but.value = "关闭";
	}else{
		div1.innerHTML = "";
		but.value="订单详情";
	}
}
function createXmlHttp(){
	var xmlHttp;
	try{ //Firefox, Opera 8.0+, Safari
		xmlHttp=new XMLHttpRequest();
	}
	catch (e){
		try{//Internet Explorer
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e){
			try{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e){}
		}
	}
	return xmlHttp;
}







