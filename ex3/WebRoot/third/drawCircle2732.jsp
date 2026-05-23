<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.awt.geom.Ellipse2D" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGCodec" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGImageEncoder" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'drawCircle2732.jsp' starting page</title>
    
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
    <%
    String a1=request.getParameter("radius");
    try{
    if(a1!=null&&!a1.equals("")){
    double number=Double.parseDouble(a1);
    if(number>0&&number<=1000)
    {
    response.setContentType("image/jpeg");
    int width=1000;
    int height=1000;
    BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);
    Graphics g=image.createGraphics();
    g.setColor(Color.white);
    g.fillOval(0,0,width,height);
    Graphics2D g_2d = (Graphics2D)g;
    Ellipse2D circle=new Ellipse2D.Double(0,0,number,number);
    g_2d.setColor(Color.blue);
    g_2d.fill(circle);
    g.dispose();
    OutputStream c=response.getOutputStream();
    JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(c);
    encoder.encode(image);
    }
    else if(number<=0||number>1000){
    response.setContentType("text/plain");
    out.print(a1+"作为圆的半径不合理");
    } }    
   }catch(Exception e){
    response.sendRedirect("inputRadius2732.jsp");
    }
   %>
  </body>
</html>
