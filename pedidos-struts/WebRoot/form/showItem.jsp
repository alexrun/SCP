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
		<style>
			#items
			{
				font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
				width:100%;
				border-collapse:collapse;
			}
			table,th,td
			{
				border:1px solid green;
			}
			td
			{
				text-align:center;
				vertical-align:middle;
			}
			th
			{
				background-color:green;
				color:white;
			}
		</style>
	</head>
	
	<body>
		<h2>Listado de Items</h2>
		
		
	<c:choose>
      <c:when test="${not empty items}">
		
			<table id="items">
				
       		<tbody>
               <tr>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Id</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Categoria</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Nombre</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Descripcion</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Precio Compra</font></strong></font></td>                             
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Precio Venta</font></strong></font></td>      
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Imagen</font></strong></font></td>   
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Opcion</font></strong></font></td>             
               </tr>
               
               <c:forEach var="it" items="${items}">                
                       <tr>
                               <td align="center"> ${it.id}</td>
                               <td align="center"> ${it.categoria.nombre}</td>
                               <td align="center"> ${it.nombre}</td>
                               <td align="center"> ${it.descripcion}</td>
                               <td align="center"> ${it.precioCompra}</td>
                               <td align="center"> ${it.precioVenta}</td>
                               <td align="center"> <p><img alt="" src="${it.imagenUrl}" height="100"></p></td>
                               <td align="center">
                               		<form action="./deleteItem.do" method="post">
                               			<button type="submit">
                               				<p><img alt="" src="img/nok.png" height="25"></p>
                               			</button>
                               			<input type="hidden" value="${it.id}" name="id">
                               		</form>
                               </td>
                       </tr>
               </c:forEach>
			</tbody>
			</table>
		
		</c:when>
      <c:otherwise>
      	No se encontraron registros de Items.<br/><br/>
      </c:otherwise>
	</c:choose>   
		
    		<a href="./principal.do">Atras</a>
		
	</body>
</html>

