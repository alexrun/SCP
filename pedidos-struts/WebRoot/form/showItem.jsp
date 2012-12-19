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
		<title>Lista de Items</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/displaytag.css">
	</head>
	
	<head>
		<title>Lista de Items</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/displaytag.css">
	</head>
	<body>
		<html:form action="/showItem">
			<h2>Listado de Items</h2>
				<disp:table id = "it" name ="${items}">	
    				<disp:column title="Categoria Id" class="center" >${it.id}</disp:column>
    				<disp:column title="Categoria Nombre" class="center" >${it.nombre}</disp:column>
    				<disp:column title="Categoria Descripcion" class="center" >${it.descripcion}</disp:column>
    				<disp:column title="Categoria Descripcion" class="center" >${it.precioCompra}</disp:column>
    				<disp:column title="Categoria Descripcion" class="center" >${it.precioVenta}</disp:column>    				
    				<disp:column title="Categoria Descripcion" class="center" >IMAGEN</disp:column>
    				<disp:setProperty name="basic.msg.empty_list">No se encontraron registros</disp:setProperty>
    			</disp:table>
    		<html:link action="/principal.do">atras</html:link>
		</html:form>
	</body>
</html>

