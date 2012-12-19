<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Nueva Categoria</title>
	</head>
	<body>
		<html:form action="/guardarCategoria" method="post"> 
			<h1>Nueva Categoria</h1>
			Nombre : <html:text property="nombre"/><html:errors property="nombre"/><br/> 
			Descripcion : <html:text property="descripcion"/><html:errors property="descripcion"/><br/>
			<html:submit value="Guardar"/><html:cancel value="Cancelar"/><br><br>
			<html:link action="/principal.do">atras</html:link><br>
		</html:form>
	</body>
</html>

