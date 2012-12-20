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
		<style>
			#clientes
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
		<h2>Listado de Clientes</h2>
			
	<c:choose>
      <c:when test="${not empty clientes}">
			
			<table id="clientes">
       		<tbody>
               <tr>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Id</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Nombre</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Apellido</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Cedula</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Telefono</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Ciudad</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Direccion</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Opcion</font></strong></font></td>
               </tr>
               
               <c:forEach var="cl" items="${clientes}">                
                       <tr>
                               <td align="center"> ${cl.id}</td>
                               <td align="center"> ${cl.nombre}</td>
                               <td align="center"> ${cl.apellido}</td>
                               <td align="center"> ${cl.cedula}</td>
                               <td align="center"> ${cl.telefonos}</td>
                               <td align="center"> ${cl.ciudad}</td>
                               <td align="center"> ${cl.direccion}</td>
                               <td align="center">
                               		<form action="./deleteCliente.do" method="post">
                               			<button type="submit">
                              				<p><img alt="" src="img/nok.png" height="25"></p>
                               			</button>
                               			<input type="hidden" value="${cl.id}" name="id">
                               		</form>
                               </td>
                       </tr>
               </c:forEach>
			</tbody>
			</table>
			
			</c:when>
      <c:otherwise>
      	No se encontraron registros de Clientes.<br/><br/>
      </c:otherwise>
	</c:choose> 
		
    			<a href="./principal.do">Atras</a>
		
	</body>
</html>

