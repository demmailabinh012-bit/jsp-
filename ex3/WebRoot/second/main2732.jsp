<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>main学号后四位</title>

</head>
<body  bgcolor=yellow>

<h1>图形面积计算</h1>


    <hr>
      <h1>圆的面积</h1>
    <!-- 传递参数给 circle.jsp -->
    <jsp:include page="circle2732.jsp">
        <jsp:param name="r" value="5"/>
    </jsp:include>

    <hr>

    <!-- 传递参数给 ladder.jsp -->
    <h1>梯形面积</h1>
    <jsp:include page="ladder2732.jsp">
        <jsp:param name="a" value="6"/>
        <jsp:param name="b" value="10"/>
        <jsp:param name="h" value="4"/>
    </jsp:include>

    <hr>

</body>
</html>