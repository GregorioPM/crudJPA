<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
  
<head>
<meta charset="ISO-8859-1">
<title>Nuevos Empleados</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark">
			<div>
				<a href="#" class="navbar-brand">Nuevo de Empleados </a>
			</div>
			<ul class="navbar-nav">
				<li><a  href="<%=request.getContextPath()%>/list" class="nav-link">Empleados</a></li>
			</ul>
		</nav>
	</header>
	<br>
	
	 <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Listado de Empeado</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar Nuevo Empleado</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Cedula</th>
                                <th>Nombre</th>
                                <th>Fecha Nacimiento</th>
                                <th>Fecha Ingreso</th>
                                <th>Fecha Retiro</th>
                                <th>Acciones</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="empleado" items="${listEmpleados}">

                                <tr>
                                    <td>
                                        <c:out value="${empleado.codigo}" />
                                    </td>
                                    <td>
                                        <c:out value="${empleado.cedula}" />
                                    </td>
                                    <td>
                                        <c:out value="${empleado.nombre}" />
                                    </td>
                                    <td>
                                        <c:out value="${empleado.fechanacimiento}" />
                                    </td>
                                    <td>
                                        <c:out value="${empleado.fechaingreso}" />
                                    </td>
                                    <td>
                                        <c:out value="${empleado.fecharetiro}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${empleado.codigo}' />">Editar</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${empleado.codigo}' />">Elimnar</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>


<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>