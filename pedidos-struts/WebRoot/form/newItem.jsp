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
		<title>JSP for ItemForm form</title>
	</head>
	<body>
		<html:form action="/guardarItem"> 
			<h1>Nuevo Item</h1>
			Nombre : <html:text property="nombre"/><html:errors property="nombre"/><br/> 
			Descripcion : <html:text property="descripcion"/><html:errors property="descripcion"/><br/> 
			Categoria : 			
				<html:select property="categoria">
			 		<c:forEach var="cat" items="${categorias}">
                  	        <html:option value = "${cat.id}">${cat.nombre}</html:option>
                	</c:forEach>
				</html:select>
			<html:errors property="categoria"/><br/>			
			
			Precio Venta : <html:text property="precioVenta"/><html:errors property="precioVenta"/><br/> 
			Precio Compra : <html:text property="precioCompra"/><html:errors property="precioCompra"/><br/>
			Imagen : <html:text property="imagen"/><html:errors property="imagen"/><br/> 
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			<html:link action="/principal.do"><br><br>atras</html:link><br>
		</html:form>
	</body>
</html>

