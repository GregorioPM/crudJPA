<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestionar Empleados</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark mb-5" style="background-color:#00bcd4;">
			<div class="d-flex justify-content-center">
				<a href="/CrudJPA" class="navbar-brand" style="color:white;">Inicio </a>
			</div>
			
		</nav>
	</header>

	<div class="container" style="margin-top: 30px;">
		<a href="Buscar.jsp" class="btn btn-primary btn-lg active"
			role="button" aria-pressed="true">Buscar Empleado</a>
		<a href="<%=request.getContextPath()%>/new" class="btn btn-secondary btn-lg active"
			role="button" aria-pressed="true">Registrar Empleado</a>
			<a href="<%=request.getContextPath()%>/list" class="btn btn-primary btn-lg active"
			role="button" aria-pressed="true">Listado Empleado</a>
	</div>
</body>
</html>