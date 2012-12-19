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
		<title>Lista de Categorias</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/displaytag.css">
	</head>
	<body>
		<html:form action="/showCategoria">
			<h2>Listado de Categorias</h2>
				<disp:table id = "ca" name ="${categorias}">	
    				<disp:column title="Categoria Id" class="center" >${ca.id}</disp:column>
    				<disp:column title="Categoria Nombre" class="center" >${ca.nombre}</disp:column>
    				<disp:column title="Categoria Descripcion" class="center" >${ca.descripcion}</disp:column>
    				<disp:setProperty name="basic.msg.empty_list">No se encontraron registros</disp:setProperty>
    			</disp:table>
			<html:link action="/principal.do">atras</html:link>
		</html:form>
	</body>
</html>

