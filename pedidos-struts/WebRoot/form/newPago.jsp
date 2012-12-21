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
	</head>
	<body>
		<html:form action="/guardarPago"> 
			<h1>Nuevo Pago</h1> 
			Pedido : 			
				<html:select property="pedido">
			 		<c:forEach var="ped" items="${pedidos}">
                  	        <html:option value = "${ped.id}">${ped.id} ${ped.cliente.nombre}</html:option>
                	</c:forEach>
				</html:select>
			<html:errors property="pedido"/><br/>
			Propietario : <html:text property="propietario"/><html:errors property="propietario"/><br/>  
			Fecha: <html:text property="fechaPago"/><html:errors property="fechaPago"/><br/> 	
			Monto : <html:text property="monto"/><html:errors property="monto"/><br/> 
			
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			<html:link action="/principal.do"><br><br>Atras</html:link><br>
		</html:form>
	</body>
</html>

