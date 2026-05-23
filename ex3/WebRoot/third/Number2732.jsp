<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Number2732.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=yellow>
    <center><h1>四则运算</h1></center><hr>
    </hr>
    
    <%
    // 获取表单提交的参数
    String f1 = request.getParameter("e1");
    String f2 = request.getParameter("e2");
    String op = request.getParameter("op");
    String resultStr = "";

    // 判断是否是表单提交（参数不为空）
    if (f1 != null && f2 != null ) {
        try {
            // 将字符串转换为双精度浮点数（截图显示 2+4=6.0，说明用了浮点数）
            double a1 = Double.parseDouble(f1);
            double a2 = Double.parseDouble(f2);
            double result = 0;

            // 根据操作符进行计算
            switch (op.charAt(0)) {
                case '+':
                    result = a1 + a2;
                    break;
                case '-':
                    result = a1 - a2;
                    break;
                case '*':
                    result = a1 * a2;
                    break;
                case '/':
                    if (a2 != 0) {
                        result = a1 / a2;
                    } else {
                        resultStr = "除数不能为0";
                    }
                    break;
            }
            
            // 如果没有发生除以0的错误，则将计算结果转为字符串
            if (resultStr.isEmpty()) {
                resultStr = String.valueOf(result);
            }

        } catch (NumberFormatException e) {
            // 处理输入为空或非数字的情况
            resultStr = "输入无效";
        }
    } else {
        // 首次访问页面时，初始化为空和默认加号
        f1 = "";
        f2 = "";
        op = "+";
    }
%>
    
    <form action="" method="post">
        <input type="text" name="e1" value=<%= f1%>>
         <select name="op">
         <option value="+" <%if(op.equals("+")) out.print("selected='selected'"); %>>+</option>
         <option value="-" <%if(op.equals("-")) out.print("selected='selected'"); %>>-</option>
         <option value="*" <%if(op.equals("*")) out.print("selected='selected'"); %>>*</option>
         <option value="/" <%if(op.equals("/")) out.print("selected='selected'"); %>>/</option>
         </select>
    <input type="text" name="e2" size=10 value=<%=f2 %>>=
    <input type="text" name="result" value="<%= resultStr%>" readonly>
    <input type="submit" value="计算">
    </form>
    
    
    
    
    
  </body>
</html>
