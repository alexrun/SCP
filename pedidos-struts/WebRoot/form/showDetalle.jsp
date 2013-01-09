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
		<title>Lista de Detalles</title>
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
    
    <h2>Listado de Detalles</h2>
 
    
    <c:choose>
      <c:when test="${not empty detalles}">
      
      	<table id="detalles">
			<tbody>
               <tr>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Id</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Item</font></strong></font></td>                                             
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Imagen</font></strong></font></td> 
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Cantidad</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Precio Unidad</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Total</font></strong></font></td>              
               </tr>
               
               <c:forEach var="de" items="${detalles}">                
                       <tr>
                               <td align="center"> ${de.id}</td>
                               <td align="center"> ${de.item.nombre}</td>
                               <td align="center"> <p><img alt="" src="${de.item.imagenUrl}" height="100"></p></td>
                               <td align="center"> ${de.cantidad}</td>
                               <td align="center"> ${de.precio}</td>                      
                              <td align="center"> ${de.precio * de.cantidad}</td>
                       </tr>
               </c:forEach>
			</tbody>
		</table><br/>
      	
      </c:when>
      <c:otherwise>
      	No se encontraron registros de Pedidos.<br/><br/>
      </c:otherwise>
	</c:choose>   
		
	<a href="${path}/showPedido.do">Atras</a>
    
  </body>
</html>
