<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    double a = Double.parseDouble(request.getParameter("a"));
    double b = Double.parseDouble(request.getParameter("b"));
    double h = Double.parseDouble(request.getParameter("h"));
    double area = (a + b) * h / 2;
%>

<p>梯形面积</p>
<p>上底 a = <%= a %></p>
<p>下底 b = <%= b %></p>
<p>高 h = <%= h %></p>
<p>面积 = <%= area %></p>