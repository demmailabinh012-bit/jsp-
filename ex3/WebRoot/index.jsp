<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>web实验报告</title>

    <style>
        body{
            margin:0;
            font-family:"Microsoft YaHei";
        }

        /* 顶部 */
        .header{
            height:60px;
            background:#2c3e50;
            color:#fff;
            line-height:60px;
            padding-left:20px;
            font-size:20px;
        }

        /* 左侧 */
        .sidebar{
            width:220px;
            height:calc(100vh - 60px);
            background:#34495e;
            float:left;
        }

        .menu-title{
            padding:15px;
            color:#fff;
            cursor:pointer;
            background:#2c3e50;
        }

        .menu-title:hover{
            background:#1abc9c;
        }

        .submenu{
            display:none;
        }

        .submenu a{
            display:block;
            padding:12px 30px;
            color:#ecf0f1;
            text-decoration:none;
        }

        .submenu a:hover{
            background:#16a085;
        }

        /* 右侧 */
        .main{
            margin-left:220px;
            height:calc(100vh - 60px);
        }

        iframe{
            width:100%;
            height:100%;
            border:none;
        }
        .footer{
    position: fixed;
    bottom: 0;
    left: 220px;
    width: calc(100% - 220px);
    background: #ecf0f1;
    text-align: center;
    font-size: 12px;
    padding: 10px;
    color: #555;
    border-top: 1px solid #ccc;
}
    </style>

    <script>
        function toggleMenu(id){
            var menu = document.getElementById(id);
            if(menu.style.display === "block"){
                menu.style.display = "none";
            }else{
                menu.style.display = "block";
            }
        }
    </script>

</head>

<body>

<!-- 顶部 -->
<div class="header">
    <img src="https://www.shxy.edu.cn/images/logo.png" width="40" style="vertical-align:middle;">
   Web实验报告
</div>

<!-- 左侧菜单 -->
<div class="sidebar">

    <!-- 实验一 -->
    <div class="menu-title" onclick="toggleMenu('exp1')"> 实验一</div>
    <div class="submenu" id="exp1">
        <a href="first/number.jsp" target="mainFrame">求1000以内的完数</a>
        <a href="first/login.jsp" target="mainFrame">登录页面</a>
    </div>

    <!-- 实验二 -->
    <div class="menu-title" onclick="toggleMenu('exp2')">实验二</div>
    <div class="submenu" id="exp2">
        <a href="second/show2732.jsp" target="mainFrame">字母显示</a>
        <a href="second/main2732.jsp" target="mainFrame">形状的面积</a>
        <a href="second/inString2732.jsp" target="mainFrame">单词排序</a>
        <a href="second/giveFileName2732.jsp" target="mainFrame">读文件</a>
    </div>

    <!-- 实验三 -->
    <div class="menu-title" onclick="toggleMenu('exp3')"> 实验三</div>
    <div class="submenu" id="exp3">
        <a href="third/Number2732.jsp" target="mainFrame">四则运算</a>
        <a href="third/inputRadius2732.jsp" target="mainFrame">画圆</a>
        <a href="third/guessNumber2732.jsp" target="mainFrame">猜数字</a>
    </div>
      
        
</div>

<!-- 右侧内容 -->
<div class="main">
    <iframe name="mainFrame" src="welcome.html"></iframe>
</div>

<div class="footer">
    版权所有 CopyRight: 绥化学院 |
    地址: 绥化市北林区黄河南路150号 |
    邮编：152061 <br>
    网站开发:周荣涛
</div>
</body>
</html>