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
    <html:base />
    
    <title>Lista de Pagos</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
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
    <h2>Listado de Pagos</h2>
    
      <c:choose>
      <c:when test="${not empty pagos}">
      
      	<table id="pagos">
			<tbody>
               <tr>                       
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Id</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Propietario</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Fecha</font></strong></font></td>
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Monto</font></strong></font></td>                             
                       <td align="center" bgColor="#57b031"><font size="4"><strong><font color="#ffffff">Opcion</font></strong></font></td>             
               </tr>
               
               <c:forEach var="pa" items="${pagos}">                
                       <tr>
                               <td align="center"> ${pa.id}</td>
                               <td align="center"> ${pa.propietario}</td>
                               <td align="center"> ${pa.fechaPago}</td>
                               <td align="center"> ${pa.monto}</td>                               
                               <td align="center">
                               		<form action="${path}/deletePago.do" method="post">
                               			<button type="submit">
                               				<p><img alt="" src="${path}/img/nok.png" height="25"></p>
                               			</button>
                               			<input type="hidden" value="${pa.id}" name="id">
                               		</form>
                               </td>
                       </tr>
               </c:forEach>
			</tbody>
		</table><br/>
      	
      </c:when>
      <c:otherwise>
      	No se encontraron registros de Pagos.<br/><br/>
      </c:otherwise>
	</c:choose>   
		
	<a href="${path}/principal.do">Atras</a>
    
  </body>
</html>
