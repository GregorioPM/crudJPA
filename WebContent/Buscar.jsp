  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	<h1>Buscar empleado</h1>

<form action="buscar">
  <label for="gsearch">Codigo empleado:</label>
  <input type="search" id="gsearch" name="codigo">
  <button class="submit" type="submit">Buscar</button>
</form>
</body>
</html>