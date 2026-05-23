<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'readFile2732.jsp' starting page</title>
    
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
<% String a=request.getParameter("dir");
String realpath = application.getRealPath("/") + a;
File file = new File(realpath);
if(file.exists()&&file.isFile()){
try{
FileReader fr=new FileReader(file);
BufferedReader br=new BufferedReader(fr);
String line;

while((line=br.readLine())!=null){
out.print(line+"<br>");
}
 }catch(IOException e){
 System.out.println(1);
 %>
 <jsp:forward page="error2732.jsp">
<jsp:param value="no file" name="s1"/>
 </jsp:forward>
<%
}}else{ 
out.print("你输入的：" + a + "<br>");
out.print("真实路径：" + realpath + "<br>");
System.out.println(2);
 %>
 <jsp:forward page="error2732.jsp">
 <jsp:param value="no file" name="s1"/>
 </jsp:forward>
 <%} %>
  </body>
</html>
