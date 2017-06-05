//前台的js简单的校验
function checkForm(){
	// 校验用户名
	var username = document.getElementById("username").value;
	if(username == null || username == ''){
		alert("用户名不能为空!");
		return false;
	}
	// 校验密码
	var password = document.getElementById("password").value;
	if(password == null || password == ''){
		alert("密码不能为空!");
		return false;
	}
	// 校验确认密码:
	var repassword = document.getElementById("repassword").value;
	if(repassword != password){
		alert("两次密码输入不一致!");
		return false;
	}
	//检验邮箱格式
	var email = document.getElementById("email").value;
	if(email==null||email==""){
		alert("邮箱不能为空!");
		return false;
	}else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(email)){
		alert("错误的邮箱格式!");
		return false;
	}
	//************************其它的校验
	var name = document.getElementById("name").value;
	if(name == null || name == ''){
		alert("姓名不能为空!");
		return false;
	}
	var phone = document.getElementById("phone").value;
	if(phone == null || phone == ''){
		alert("电话不能为空!");
		return false;
	}
	var addr = document.getElementById("addr").value;
	if(addr == null || addr == ''){
		alert("地址不能为空!");
		return false;
	}
	var checkcode = document.getElementById("checkcode").value;
	if(checkcode == null || checkcode == ''){
		alert("验证码不能为空!");
		return false;
	}
	return true;
}
//当失去焦点检验用户名是否存在
function checkUsername(){
	// 获得文件框值:
	var username = document.getElementById("username").value;
	var text=document.getElementById("spanUsername");
	if(username==""){
		text.innerHTML ="<font color='red'>用户名不能为空</font>";
		return;
	}
	// 1.创建异步交互对象
	var xhr = createXmlHttp();
	// 2.设置监听
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				text.innerHTML = xhr.responseText;
			}
		}
	};
	// 3.打开连接
	xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&username="+username,true);
	// 4.发送
	xhr.send(null);
}
//创建一个http对象
function createXmlHttp(){
	var xmlHttp;
	try{ 
		// Firefox, Opera 8.0+, Safari
		xmlHttp=new XMLHttpRequest();
	}
	catch (e){
		try{
			// Internet Explorer
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
//用户密码
function checkPass(){
	var pass = document.getElementById("password").value;
	var text=document.getElementById("spanPass");
	if(pass==""||pass==null){
		text.innerHTML ="<font color='red'>密码不能为空</font>";
	}else{
		text.innerHTML ="";
	}
}
function checkRepass(){
	var pass = document.getElementById("password").value;
	var repass = document.getElementById("repassword").value;
	var text=document.getElementById("spanRepass");
	if(repass==""){
		text.innerHTML ="<font color='red'>确认密码不能为空</font>";
	}else if (repass!=pass){
		text.innerHTML ="<font color='red'>两次密码不一致</font>";
	}else{
		text.innerHTML ="";
	}
}
//检验邮箱
function checkEmail(){
	var email = document.getElementById("email").value;
	var text=document.getElementById("spanEmail");
	if(email==""){
		text.innerHTML ="<font color='red'>邮箱不能为空</font>";
	}else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(email)){
		text.innerHTML ="<font color='red'>错误的邮箱格式</font>";
	}else{
		text.innerHTML ="<font color='green'>邮箱格式正确</font>";
	}
}
//更换验证码
function change(){
	var img1 = document.getElementById("checkImg");
	img1.src="${pageContext.request.contextPath}/checkImg.action?time="+new Date().getTime();
}

