<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
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

<c:if test="${empleado != null}">
   <form class="contact_form" action="update" id="contact_form" method="post" >
</c:if>
<c:if test="${empleado == null}">
	<form class="contact_form" action="insert" id="contact_form" method="post" >
</c:if>
<div class="container">
<div class="row justify-content-center align-items-center">
<ul class="list-group ml-5 mr-5">
<li class="list-group-item"> <h2>
<c:if test="${empleado != null}">
  Editar Empleado
</c:if>
<c:if test="${empleado == null}">
   Agregar Nuevo Empleado
</c:if>

</h2> <span class="required_notification">* Datos requeridos</span> </li>
<li class="list-group-item"> <label for = "codigo">Codigo:</label> 
<input type="text" name="codigo"  value="<c:out value='${empleado.codigo}' />" required/> </li>
<li class="list-group-item">  <label for = "cedula">Cedula:</label> 
<input type="text" name="cedula"  value="<c:out value='${empleado.cedula}' />"required/> </li>
<li class="list-group-item"> <label for = "name">Nombre:</label> 
<input type="text" name="nombre"  value="<c:out value='${empleado.nombre}' />" required/> </li>
<li class="list-group-item"> <label for = "fechanac">Fecha Nacimiento:</label> 
<input type="Date" name="fechaNacimiento"  value="<c:out value='${empleado.fechanacimiento}' />"  required/> </li>
<li class="list-group-item"> <label for = "fechaingreso">Fecha Ingreso:</label> 
<input type="Date" name="fechaIngreso"  value="<c:out value='${empleado.fechaingreso}' />" required/> </li>
<li class="list-group-item"> <label for = "fecharet">Fecha Retiro:</label> 
<input type="Date" name="fechaRetiro" value="<c:out value='${empleado.fecharetiro}' />" required/> </li>
<li class="list-group-item"> <button class="submit" type="submit">
<c:if test="${empleado != null}">
 Actualizar
</c:if>
<c:if test="${empleado == null}">
   Registrar
</c:if>

</button>


</ul>
</div>
</div>
</form>

</body>
</html>