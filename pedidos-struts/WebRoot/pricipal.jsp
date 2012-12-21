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
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
         
	<script type="text/javascript" src="${path}/js/funciones.js"></script>
	
  </head>
  
  <body> 
  
  	<div align="center"><h1>BIENVENIDO AL SISTEMAS DE GESTION DE PEDIDOS</h1></div>
    
         
     <div id="accordion" align="center">
     	<div class="group">
    	<h3>Categoria</h3>
    	<div>
       		<p>
        	<a href="./newCategoria.do">Agregar Nueva Categoria</a><br><br>  	
    		<a href="./showCategoria.do">Ver Todas las Categorias</a><br><br>
        	</p>
    	</div>
    	</div>
    	<div class="group">
    	<h3>Item</h3>
    	<div>
        	<p>
        	<a href="./newItem.do">Agregar Nuevo Item</a><br><br>
    		<a href="./showItem.do">Ver Todos los Items</a><br><br>
    		</p>
    		<form action="./showItem.do" method="post"> 
  				Buscar Items por Categoria :
  				<select name="cbCategoria">
			 		<c:forEach var="cat" items="${categorias}">
             			<option value = "${cat.id}">${cat.nombre}</option>
             		</c:forEach>
				</select>
  				<button type="submit">
               		<p><img alt="" src="img/ok.png" height="20"></p>
        		</button> 
			</form>
    		
        	
    	</div>
    	</div>
    	<div class="group">
    	<h3>Cliente</h3>
    	<div>
        	<p>
        		<a href="./newCliente.do">Agregar Nuevo Cliente</a><br><br>
    			<a href="./showCliente.do">Mostrar Todos los Clientes</a><br><br>
        	</p>
        	
        	<form action="./showCliente.do" method="post">
        	
        	Buscar Cliente por Cedula :
        	<select name="cbCedula">
				<c:forEach var="cli" items="${clientes}">
             		<option value = "${cli.cedula}">${cli.cedula}</option>
             	</c:forEach>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	
			</form>
    		<form action="./showCliente.do" method="post"> 
  			Buscar Cliente por Ciudad :
  			<select name="cbCiudad">
			 	<c:forEach var="cli" items="${clientes}">
             		<option value = "${cli.ciudad}">${cli.ciudad}</option>
             	</c:forEach>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
			</form>
    	</div>
    	</div>
    	<div class="group">
    	<h3>Pedido</h3>
    	<div>
        	<p>
        		<a href="./newPedido.do">Agregar Nuevo Pedido</a><br><br>
    			<a href="./showPedido.do">Mostrar Todos los Pedidos</a><br><br>
        	</p>        	
        	<form action="./showPedido.do" method="post">
        	Buscar Pedidos por Cliente :
        	<select name="cbCliente">
				<c:forEach var="cli" items="${clientes}">
             		<option value = "${cli.id}">${cli.nombre} ${cli.apellido}</option>
             	</c:forEach>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	</form>
        	<form action="./showPedido.do" method="post">
        	Buscar Pedidos por Estatus :
        	<select name="cbEstatus">
				<c:forEach var="ped" items="${pedidos}">
             		<option value = "${ped.estatus}">${ped.estatus}</option>
             	</c:forEach>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	</form>
    	</div>
    	</div>
    	<div class="group">
    	<h3>Pago</h3>
    	<div>       	
        	<p>
        		<a href="./newPago.do">Agregar Nuevo Pago</a><br><br>
    			<a href="./showPago.do">Mostrar Todos los Pagos</a><br><br>
        	</p> 
    	</div>
    	</div>
	</div>
     
     
     
     
     
  </body>
</html>
