<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="disp" uri="http://displaytag.sf.net" %>
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
    <h1>BIENVENIDO AL SISTEMAS DE GESTION DE PEDIDOS</h1><h3>Seleccione una Opci&oacute;n:</h3>
    <div align="center">
    CATEGORIA<br>
  	<a href="./newCategoria.do">Nueva</a><br>  	
    <a href="./showCategoria.do">Todas</a><br><br>
    
    ITEM<br>    
    <a href="./newItem.do">Nuevo</a><br>
    <a href="./showItem.do">Todos</a><br>
    <form action="./showItem.do" method="post"> 
  		Categoria :
  		<select name="cbCategoria">
			 <c:forEach var="cat" items="${categorias}">
             	<option value = "${cat.id}">${cat.nombre}</option>
             </c:forEach>
		</select>
  		<button type="submit">
               <p><img alt="" src="img/ok.png" height="15"></p>
        </button> 
	</form>
        
    <br>CLIENTE<br>      
    <a href="./newCliente.do">Nuevo</a><br>
    <a href="./showCliente.do">Todos</a><br>
    <form action="./showCliente.do" method="post"> 
  		Cedula :
  		<select name="cbCedula">
			 <c:forEach var="cli" items="${clientes}">
             	<option value = "${cli.id}">${cli.cedula}</option>
             </c:forEach>
		</select>
  		<button type="submit">
               <p><img alt="" src="img/ok.png" height="15"></p>
        </button> 
	</form>
    <form action="./showCliente.do" method="post"> 
  		Ciudad :
  		<select name="cbCiudad">
			 <c:forEach var="cli" items="${clientes}">
             	<option value = "${cli.id}">${cli.ciudad}</option>
             </c:forEach>
		</select>
  		<button type="submit">
               <p><img alt="" src="img/ok.png" height="15"></p>
        </button> 
	</form><br>
     
     
    <a href="./newPedido.do">PEDIDO</a><br>
    <a href="./showPedido.do">TODOS</a><br>
     
     <br>PAGOS 
     <br>TODOS</div>
  </body>
</html>
