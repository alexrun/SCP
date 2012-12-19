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
		<title>Lista de Clientes</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/displaytag.css">
	</head>
	<body>
		<html:form action="/showCliente">
			<h2>Listado de Clientes</h2>
				<disp:table id = "cl" name ="${clientes}">	
    				<disp:column title="Cliente Id" class="center" >${cl.id}</disp:column>
    				<disp:column title="Cliente Nombre" class="center" >${cl.nombre}</disp:column>
    				<disp:column title="Cliente Apellido" class="center" >${cl.apellido}</disp:column>
    				<disp:column title="Cliente Cedula" class="center" >${cl.cedula}</disp:column>
    				<disp:column title="Cliente Telefono" class="center" >${cl.telefonos}</disp:column>
    				<disp:column title="Cliente Ciudad" class="center" >${cl.ciudad}</disp:column>
    				<disp:column title="Categoria Direccion" class="center" >${cl.direccion}</disp:column>
    				<disp:setProperty name="basic.msg.empty_list">No se encontraron registros</disp:setProperty>
    			</disp:table>
			<html:link action="/principal.do">atras</html:link>
		</html:form>
	</body>
</html>

