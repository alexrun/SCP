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
	<meta name="author" content="Alexander Casta�eda">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
         
	<script type="text/javascript" src="${path}/js/funciones.js"></script>
	
	   	
    	<style>
    		.toggler { width: 500px; height: 200px; }
    		#button { padding: .5em 1em; text-decoration: none; }
    		#effect { width: 240px; height: 135px; padding: 0.4em; position: relative; }
    		#effect h3 { margin: 0; padding: 0.4em; text-align: center; }
    	</style>

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
  			<select name="cbCiudad" id="cbCiudad">
			 	<c:forEach var="c" items="${ciudades}">
             		<option value = "${c}">${c}</option>
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
        	<select name="cbEstatus" id="cbEstatus">
				<c:forEach var="e" items="${estatus}">
             		<option value = "${e}">${e}</option>
             	</c:forEach>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	</form>
        	
        	<form action="./showPedido.do" method="post">
        	Buscar Pedidos por Tipo de Pago :
        	<select name="cbPago" id="cbPago">
             		<option selected value="tarjeta">Tarjeta de Credito</option>
					<option value="cheque">Cheque</option>
			</select>
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	</form>
        	
        	
        	<form action="./showPedido.do" method="post"> 
        	Buscar Pedidos por Rango de Fecha y Ciudad :<br>&nbsp;
        	Ciudad:<select name="cbCiudad" id=""cbCiudad"">
				<c:forEach var="c" items="${ciudades}">
             		<option value = "${c}">${c}</option>
             	</c:forEach>         	
			</select> 
			 
			<br>Fecha Inicial: <input type="text" name="fechaIni" id="datepicker" lang="es">
			 
			<br>Fecha Final: <input type="text" name="fechaFin" id="datepickerB" lang="es">
			
  			<button type="submit">
               	<p><img alt="" src="img/ok.png" height="20"></p>
        	</button> 
        	</form>
        	
    	</div>
    	</div>
    	<div class="group">
    	<h3>Pago</h3>
    	<div>       	
        	
        		
        		
        		<form action="./newPago.do" method="get">
        			Agregar Nuevo Pago :
        				<select name="cbPedidos" id="cbPedidos">
							<c:forEach var="ped" items="${pedidosActivos}">
             					<option value = "${ped.id}">${ped.id}, ${ped.cliente.nombre} ${ped.cliente.apellido}</option>
             				</c:forEach>
						</select>
						Tipo Pago : 
						<select name="cbTipoPago" id="cbTipoPago">
							<option selected value="tarjeta">Tarjeta de Credito</option>
							<option value="cheque">Cheque</option>
						</select>
  						<button type="submit">
               				<p><img alt="" src="img/ok.png" height="20"></p>
        				</button> 
        		</form>
        		
        	<p>	
    			<a href="./showPago.do">Mostrar Todos los Pagos</a><br><br>
        	</p> 
    	</div>
    	</div>
	</div>
     
     
     <script type="text/javascript">
     
     var found = [];
	$("cbCiudad").each(
		function() {
  			if($.inArray(this.value, found) != -1){
  				$(this).remove();
  			}
  			found.push(this.value);
		}		
	);
	
     </script>
     
     
  </body>
</html>
