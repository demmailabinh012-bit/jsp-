<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String guessStr = request.getParameter("guess");
    
    // 确保用户输入了内容并且游戏已经初始化
    if (guessStr != null && session.getAttribute("targetNumber") != null) {
        try {
            int guess = Integer.parseInt(guessStr);
            int target = (Integer) session.getAttribute("targetNumber");
            int count = (Integer) session.getAttribute("guessCount");
            
            // 猜测次数 +1 并存回 session
            count++;
            session.setAttribute("guessCount", count);
            
            // 根据比较结果进行页面跳转
            if (guess > target) {
                response.sendRedirect("Large2732.jsp");
            } else if (guess < target) {
                response.sendRedirect("Small2732.jsp");
            } else {
                response.sendRedirect("success2732.jsp");
            }
            
        } catch (NumberFormatException e) {
            // 防止用户输入英文字母导致报错，如果输入错误直接跳回首页
            response.sendRedirect("guessNumber2732.jsp");
        }
    } else {
        response.sendRedirect("guessNumber2732.jsp");
    }
%>









