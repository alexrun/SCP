<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="disp" uri="http://displaytag.sf.net" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("path",path);
%>
 
<html> 
	<head>
		<title>Nuevo Pago</title>
		
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
		<html:form action="/guardarPago"> 
			<h1>Nuevo Pago</h1> 
			Propietario : <html:text property="propietario"/><html:errors property="propietario"/><br/>  
			Fecha del Pago:<html:text  property="fechaPago" styleId="datepickerB" lang="es" /><br/>  	
			Monto : ${detalle.cantidad * detalle.precio} <html:hidden  property="monto" value="${detalle.cantidad * detalle.precio}"/><br/>			
			Banco : <input type="text" name="tbBanco"><br/> 			
			Numero de Cheque : <input type="text" name="numeroCheque"/><br/>
			Numero de Cuenta : <input type="text" name="numeroCuenta"/><br/>
			Fecha del Cheque :<input type="text" name="fechaCheque" id="datepicker" lang="es"/><br/>  
			<input type="hidden" name="idPedido"  value="${idPedido}"/>
			<input type="hidden" name="tipoPago"  value="${tipoPago}"/>
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			<html:link action="/principal.do"><br><br>Atras</html:link><br>
		</html:form>
	</body>
</html>

