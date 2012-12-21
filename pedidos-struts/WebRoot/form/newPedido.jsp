<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page contentType="text/html" import="java.util.*" %>
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
		<title>Nuevo Pedido</title>  
    	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    	<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    	<link rel="stylesheet" href="/resources/demos/style.css" />
    	<script type="text/javascript" src="${path}/js/funciones.js"></script>
    	
	</head>
	<body>
		<html:form action="/guardarPedido">
			Cliente : <html:select property="cliente" >
							<c:forEach var="cli" items="${clientes}">
                  	        	<html:option value = "${cli.id}">${cli.nombre} ${cli.apellido}</html:option>
                			</c:forEach>
						</html:select>
						<html:errors property="cliente"/><br/>
			Fecha : <input type="text" id="datepicker" lang="es"/><br/>
			Estatus : <html:text property="estatus" value="Activo"/><html:errors property="estatus"/><br/>
			
			Fecha : <html:text property="fecha" name="fecha" value="20/12/2012"></html:text><html:errors property="fecha"/><br>
			
			
			<table>
				<tbody>
					<tr>
						<td align="center" width="500">
							Inventario Disponible<br>
							<select multiple="multiple" size="5" name="listIt">
								<c:forEach var="it" items="${items}">
                  	        		<option value = "${it.id}">${it.nombre}</option>
                				</c:forEach>
							</select>
						</td>
						<td align="center" width="300">
														
				
							
							<button type="button" onClick="move(this.form.listIt,this.form.listSe)">
                            	<p><img alt="" src="img/Arrow Right.png" height="20"></p>
                            </button><br>
                            <button type="button" onClick="move(this.form.listSe,this.form.listIt)">
                            	<p><img alt="" src="img/Arrow Left.png" height="20"></p>
                            </button><br>			
							
						</td >
						<td align="center" width="500">
							Inventario Pedido<br>
							<select multiple="multiple" size="5" name="listSe" >
							</select>
						</td>					
					</tr>
				</tbody>
			</table>

			<br>		
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			
		</html:form>
			<a href="./principal.do">Atras</a>
		
	</body>
</html>

