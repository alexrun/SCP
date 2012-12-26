<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="disp" uri="http://displaytag.sf.net" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("path",path);
%>

<html>
  
  <head>
		<title>Lista de Pedidos</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/displaytag.css">
		<style>
			#pedidos
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
    
    <h2>Listado de Pedidos</h2>
 
    
    <c:choose>
      <c:when test="${not empty pedidos}">
      
      	<table id="pedidos">
			<tbody>
               <tr>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Id</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Cliente</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Fecha</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Estatus</font></strong></font></td>            
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Detalle</font></strong></font></td>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Opcion</font></strong></font></td>             
               </tr>
               
               <c:forEach var="pe" items="${pedidos}">                
                       <tr>
                               <td align="center"> ${pe.id}</td>
                               <td align="center"> ${pe.cliente.nombre}</td>
                               <td align="center"> ${pe.fecha}</td>
                               <td align="center"> ${pe.estatus}</td>       
                               <td align="center"> Ver</td>                           
                               <td align="center">
                               		<form action="${path}/deletePedido.do" method="post">
                               			<button type="submit">
                               				<p><img alt="" src="img/nok.png" height="25"></p>
                               			</button>
                               			<input type="hidden" value="${pe.id}" name="id">
                               		</form>
                               </td>
                       </tr>
               </c:forEach>
			</tbody>
		</table><br/>
      	
      </c:when>
      <c:otherwise>
      	No se encontraron registros de Pedidos.<br/><br/>
      </c:otherwise>
	</c:choose>   
		
	<a href="${path}/principal.do">Atras</a>
    
  </body>
</html>
