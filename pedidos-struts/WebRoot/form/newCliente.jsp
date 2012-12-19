<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Nuevo Cliente</title>
	</head>
	<body>
		<html:form action="/guardarCliente" method="post">
			<h1>Nuevo Cliente</h1> 
			Nombre : <html:text property="nombre"/><html:errors property="nombre"/><br/>
			Apellido : <html:text property="apellido"/><html:errors property="apellido"/><br/>		
			Cedula : <html:text property="cedula"/><html:errors property="cedula"/><br/>	
			Direccion : <html:text property="direccion"/><html:errors property="direccion"/><br/>
			Ciudad : <html:text property="ciudad"/><html:errors property="ciudad"/><br/>
			Telefono : <html:text property="telefono"/><html:errors property="telefono"/><br/>			
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/><br><br>
			<html:link action="/principal.do">atras</html:link><br><br>
		</html:form>
	</body>
</html>

