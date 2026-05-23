<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//utf-8">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



  </head>
  
  <body> 
  <h2>用户登录</h2>
  用户名：<input type="text" id="username"><br><br>
     密码:<input type="password" id="password"><br><br>
  <button onclick="checklogin()">登录</button>
  
  <P id="msg"> </P>
  
  
  <script>
   function checklogin(){
   var username=document.getElementById("username").value;
   var password=document.getElementById("password").value;
   
   var msg=document.getElementById("msg");
    
    if(username=="" || password==""){
    msg.innerHTML="登录失败！用户名和密码不能为空";
    msg.style.color="red";
   }
  else if(username=="zrt"&&password=="123456"){
   msg.innerHTML="登录成功";
   msg.style.color="green";
   }
   
   }

</script>
  </body>
</html>
