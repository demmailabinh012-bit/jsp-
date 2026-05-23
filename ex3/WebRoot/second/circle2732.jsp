<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    double r = Double.parseDouble(request.getParameter("r"));
    double area = Math.PI * r * r;
%>

<p>圆的面积</p>
<p>半径 r = <%= r %></p>
<p>面积 = <%= area %></p>
