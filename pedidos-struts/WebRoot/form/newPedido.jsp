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

List<String> listaIt = new ArrayList<String>();
%>
 
<html> 
	<head>
		<title>Nuevo Pedido</title>  
    	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    	<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    	<link rel="stylesheet" href="/resources/demos/style.css" />
    	<script type="text/javascript" src="${path}/js/funciones.js"></script>
    	
    	
    	<script>
    		function listbox_selectall(listID, isSelect) {
        		var listbox = document.getElementById(listID);
        		for(var count=0; count < listbox.options.length; count++) {
            		listbox.options[count].selected = isSelect;
    			}
			}
    	
    		function submit() {
     			listbox_selectall('listaItems', true);
     			return true;
			}
    	</script>
    	<style>
    		.toggler { width: 500px; height: 200px; }
    		#button { padding: .5em 1em; text-decoration: none; }
    		#effect { width: 240px; height: 135px; padding: 0.4em; position: relative; }
    		#effect h3 { margin: 0; padding: 0.4em; text-align: center; }
    	</style>
    	
	</head>
	<body>
	</br>
	<table width="50%" height="" align="center"  >
		<tbody>
		
		<html:form action="/guardarPedido" onsubmit="return submit()">
		<tr>
				<td align="center">Cliente : </td>
			<td align="center">
				<html:select property="cliente" >
					<c:forEach var="cli" items="${clientes}">
                  	     <html:option  value = "${cli.id}">${cli.nombre} ${cli.apellido}</html:option>
                	</c:forEach>
				</html:select>
						<html:errors property="cliente"/>
			</td>
		</tr>
		<tr>
			<td align="center">Fecha :</td>
			<td align="center"><html:text  property="fecha" styleId="datepicker" lang="es" /></td>
		</tr>
		<tr>
			<td align="center">Estatus :</td> 
			<td align="center">Activo<html:hidden  property="estatus" value="Activo"/><html:errors property="estatus"/></td> 
		</tr>	
	
			<tr>
			<td colspan="2">
			<table width="100%" height="100%" align="center">
				<tbody>
					<tr>
						<td align="center" width="250">
							Inventario Disponible<br>
							<select multiple="multiple" size="5" name="listIt">
								<c:forEach var="it" items="${items}">
                  	        		<option value = "${it.id}">${it.nombre}</option>
                				</c:forEach>
							</select>
						</td>
						<td align="center" width="100">
														
				
							
							<button type="button" onClick="move(this.form.listIt,this.form.listaItems)">
                            	<p><img alt="" src="img/Arrow Right.png" height="20"></p>
                            </button><br>
                            <button type="button" onClick="move(this.form.listaItems,this.form.listIt)">
                            	<p><img alt="" src="img/Arrow Left.png" height="20"></p>
                            </button><br>			
							
						</td >
						<td align="center" width="250">
							Inventario Pedido<br>
														
							<html:select multiple="true" property="listaItems" size="5" name="pedidoForm" styleId="listaItems" >
							</html:select><br></td><td align="center" valign="middle">Cantidad<br>
<br>
<div><input type="text" size="5" value="1" name="tbCantidad"></div></td>					
					</tr>
				</tbody>
			</table>
			</td>
		</tr>

			
		<tr>
			<td colspan="2" align="center">
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			</td>
		</tr>
		</html:form>
		
	</tbody>
</table>
		
		
		
			<a href="./principal.do">Atras</a>
		
	</body>
</html>

