<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/MPStyles.css" />



</head>
<body>

	<%
		session.setAttribute("Rol", "client");
		/*session.setAttribute("Rol", "client");*/
	%>

	<jsp:include page="Header.jsp" />
	
	

	<section class="d-flex justify-content-center align-items-center"
		style="height: 80vh;">
		
		
		<%--Aca mostramos lo que ve solo el cliente --%>
		
		<%
			if(session.getAttribute("Rol")=="client")
			{
		%>
		<div
			class="container d-flex flex-column justify-content-center align-items-center">
			<h1 class="text-left mb-4">¡Hola nombre!</h1>
			<div class="card w-100" style="max-width: 450px;">
				<div class="card-body">
					<h5 class="card-title">Tu cuenta:</h5>
					<div class="d-flex justify-content-between">
						<p class="card-text">Caja de ahorro N° 456-654</p>
						<p class="card-text">$250.000</p>
					</div>
					<div class="d-flex justify-content-between">
						<p class="card-text">Cuenta Corriente N° 456-999</p>
						<p class="card-text">$0.00</p>
					</div>
				</div>
			</div>

			<div class="card w-100 mt-3" style="max-width: 450px;">
				<div class="card-body">
					<h5 class="card-title">¡Tenes cuotas pendientes de tu credito!</h5>
					<div class="d-flex justify-content-between">
						<p class="card-text">Prestamo: N°</p>
						<p class="card-text">12345678</p>
					</div>
					<div class="d-flex justify-content-between">
						<p class="card-text">Cuota N°:</p>
						<p class="card-text">5/12</p>
					</div>
					<div class="d-flex justify-content-between">
						<p class="card-text">Saldo pendiente:</p>
						<p class="card-text">$150.000</p>
					</div>
				</div>
			</div>
	
		</div>
		<% } %>
		
		<%--Aca mostramos lo que ve solo el admin --%>
		
		<%
			if(session.getAttribute("Rol")=="admin")
			{
		%>
		
		<div class="card w-100 mt-3" style="max-width: 450px;">
				<div class="card-body">
					<h5 class="card-title">¡Tenes prestamos pendientes por aprobar!</h5>
					<div class="d-flex justify-content-between">
						<p class="card-text">Cantidad de prestamos: </p>
						<p class="card-text">99</p>
					</div>
				</div>
			</div>
		
		<% } %>
		
	</section>



	<jsp:include page="Footer.jsp" />
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>