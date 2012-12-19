<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("path",path);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SGP</title>
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
    <h1>BIENVENIDO AL SISTEMAS DE GESTION DE PEDIDOS</h1><br>Seleccione una Opci&oacute;n:<br>
    <br><div align="center">
    <br>
    <a href="./newCategoria.do">CATEGORIA</a>&nbsp; 
    <br>
    <a href="./showCategoria.do">TODAS</a> <br>&nbsp;<br>
    <a href="./newItem.do">ITEM</a>
     <br><a href="./showItem.do">TODOS</a>
     <br><br> 
     <a href="./newCliente.do">CLIENTE</a><br>
     <a href="./showCliente.do">TODOS</a><br><br>PEDIDO <br>TODOS</div>
  </body>
</html>
