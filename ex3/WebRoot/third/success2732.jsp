<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜对了</title>
</head>
<body bgcolor=blue>
    <h2 style="color: green;">恭喜你，猜对了！</h2>
    
    <h3>你一共猜测了： <span style="color:red;"><%= session.getAttribute("guessCount") %></span> 次。</h3>

    <%
        // 游戏结束，清空 session 中的游戏数据，这样刷新或者重新访问就能开启新一轮游戏
        session.removeAttribute("targetNumber");
        session.removeAttribute("guessCount");
    %>
    
    <br>
    <a href="guessNumber2732.jsp">再玩一次</a>
</body>
</html>