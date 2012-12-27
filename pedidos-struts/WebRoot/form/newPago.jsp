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
		<title>Nuevo Pago</title>
		
		<script type="text/javascript">
		
		function dimePropiedades(){ 
   	var texto; 
   	texto = "El numero de opciones del select: " + document.formul.cbTipoPago.length ;
   	var indice = document.formul.cbTipoPago.selectedIndex ;
   	texto += "nIndice de la opcion escogida: " + indice ;
   	var valor = document.formul.cbTipoPago.options[indice].value ;
   	texto += "nValor de la opcion escogida: " + valor ;
   	var textoEscogido = document.formul.cbTipoPago.options[indice].text ;
   	texto += "nTexto de la opcion escogida: " + textoEscogido ;
   	alert(texto) ;}
		
		
		</script>
	</head>
	<body>
		<html:form action="/guardarPago"> 
			<h1>Nuevo Pago</h1> 
			Pedido : 			
				<html:select property="pedido">
			 		<c:forEach var="ped" items="${pedidos}">
                  	        <html:option value = "${ped.id}">${ped.id} ${ped.cliente.nombre}</html:option>
                	</c:forEach>
				</html:select>
			<html:errors property="pedido"/><br/>
			Propietario : <html:text property="propietario"/><html:errors property="propietario"/><br/>  
			Fecha: <html:text property="fechaPago"/><html:errors property="fechaPago"/><br/> 	
			Monto : <html:text property="monto"/><br><html:errors property="monto"/><br/>
			
			Tipo Pago : <select name="cbTipoPago">
							<option selected value="1">Tarjeta de Credito</option>
							<option value="2">Cheque</option>
						</select>
			<br/><br/>
			
			Banco : <input type="text" name="tbBanco"><br/> <br/>
			
			
			<input type=button value="Dime propiedades" onclick="dimePropiedades()">
			
			
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/>
			<html:link action="/principal.do"><br><br>Atras</html:link><br>
		</html:form>
	</body>
</html>

