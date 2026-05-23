<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字游戏</title>
</head>
<body bgcolor=yellow>
<%
    // 如果 session 中没有目标数字，说明是新游戏，进行初始化
    if (session.getAttribute("targetNumber") == null) {
        // 生成 1-100 的随机数作为默认数据
        int target = (int)(Math.random() * 100) + 1; 
        session.setAttribute("targetNumber", target);
        // 初始化猜测次数为 0
        session.setAttribute("guessCount", 0);
    }
%>

<h2><center>猜数字游戏 (1-100)</center></h2>
<form action="Calculate2732.jsp" method="post">
    请输入你猜测的数：<input type="text" name="guess" >
    <input type="submit" value="提交">
</form>

</body>
</html>




