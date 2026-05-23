<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Show2732</title>
 
</head>
<body bgcolor=yellow>

    <h1>字母表显示</h1>

    
        <hr>
        <p>大写字母表：</p>
        <%
            for (char c = 'A'; c <= 'Z'; c++) {
                out.print(c + " ");
            }
        %>

        <hr>
        <p>小写字母表：</p>
        <%
            for (char c = 'a'; c <= 'z'; c++) {
                out.print(c + " ");
            }
        %>

        <hr>
        <p>希腊字母表：</p>
        <%
            String[] greek = {
                "Α", "Β", "Γ", "Δ", "Ε", "Ζ", "Η", "Θ", "Ι", "Κ", "Λ", "Μ",
                "Ν", "Ξ", "Ο", "Π", "Ρ", "Σ", "Τ", "Υ", "Φ", "Χ", "Ψ", "Ω"
            };
            for (int i = 0; i < greek.length; i++) {
                out.print(greek[i] + " ");
            }
        %>
        <hr>


</body>
</html>