<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/MPStyles.css" />

</head>
<body>
	<section>
		<nav class="navbar nav-padding navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">
				<img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo" width="100" height="auto" class="d-inline-block align-text-top px-2">
				Online Banking</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Inicio</a></li>
						<%	
							/*session.setAttribute("Rol", "admin");
							/*session.setAttribute("Rol", "client");*/
							if(session.getAttribute("Rol")== "admin"){
						
						%>
						
						<%-- Aca mostramos Usuarios y Reportes solo si es administrador --%>
						
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Usuarios</a></li>
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Reportes</a></li>
						
						<% }%>
						
						
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Prestamos</a></li>
						
						<%	
							/*session.setAttribute("Rol", "admin");*/
							/*session.setAttribute("Rol", "client");*/
							if(session.getAttribute("Rol")== "client"){
						%>
						
						<%-- Aca mostramos transferencias y cuentas solo si es cliente --%>
						
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Transferencias</a></li>
							
							<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Cuentas</a></li>
							
						<% }%>
					</ul>
					<div class="dropdown d-flex align-items-center">
						<a class="d-inline-block" id="btnPerfil" href="#"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="cursor: pointer;"> <img
							src="${pageContext.request.contextPath}/img/profile-pic.jpg"
							alt="Perfil" width="40" height="40" style="border-radius: 50%;">
						</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="btnPerfil">
							<li><a class="dropdown-item" href="#">Perfil</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Cerrar Sesion</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>