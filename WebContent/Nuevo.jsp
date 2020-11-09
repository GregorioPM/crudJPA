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
<form class="contact_form" action="insert" id="contact_form" method="post" >
<div>
<ul>
<li> <h2>Registro de Empleados</h2> <span class="required_notification">* Datos requeridos</span> </li>
<li> <label for = "codigo">Codigo:</label> 
<input type="text" name="codigo"  value="<c:out value='${empleado.codigo}' />" required/> </li>
<li> <label for = "cedula">Cedula:</label> 
<input type="text" name="cedula"  value="<c:out value='${empleado.ceddula}' />"required/> </li>
<li> <label for = "name">Nombre:</label> 
<input type="text" name="nombre"  value="<c:out value='${empleado.nombre}' />" required/> </li>
<li> <label for = "fechanac">Fecha Nacimiento:</label> 
<input type="Date" name="fechaNacimiento"  value="<c:out value='${empleado.fechanacimiento}' />"  required/> </li>
<li> <label for = "fechaingreso">Fecha Ingreso:</label> 
<input type="Date" name="fechaIngreso"  value="<c:out value='${empleado.fechaingreso}' />" required/> </li>
<li> <label for = "fecharet">Fecha Retiro:</label> 
<input type="Date" name="fechaRetiro" value="<c:out value='${empleado.fecharetiro}' />" required/> </li>
<li> <button class="submit" type="submit">Registrar</button>


</ul>
</div>

</form>

</body>
</html>