<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Com.jsp' starting page</title>
    
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
    <%! 
    TreeSet<String> ts=new TreeSet<String>();
    public void getString(String x){
    String[] m=x.split(" ");
    for(String i:m){
    ts.add(i);
    }
    }
     %>
    <h1>输入单词为：</h1>
<%    String a=request.getParameter("str");
       if(a==null||a.equals("")){%>
       <jsp:forward page="inString2732.jsp"/>
       <% }
       
       getString(a);
       Iterator<String> it=ts.iterator();
       while(it.hasNext()){
       String n=it.next();
       out.print(n+"  ");
       }
 %>    
  </body>
</html>
