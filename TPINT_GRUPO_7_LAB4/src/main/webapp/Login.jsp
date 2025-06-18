<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Banking UTN-FRGP</title>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>




	<section class="d-flex justify-content-center align-items-center"
		style="height: 100vh;">

		<%-- Columna Izquierda --%>
		<div class="bg-light p-3" style="width: 10%; height: 100vh;"></div>

		<div
			class="container d-flex flex-column align-items-center justify-content-center"
			style="width: 80%;">
			
			<%-- Logo --%>
			<div class="text-center mb-3">
				<img src="${pageContext.request.contextPath}/img/logo.png"
					alt="Logo" width="150" style="height: auto;">
				<h4 class="mt-2">
					<b>Online Banking</b>
				</h4>
			</div>
			
			<%-- Card del login --%>

			<div class="container d-flex justify-content-center align-items-center">
				<div class="card" style="max-width: 600px;">
					<div class="cardbody m-3">
						<h1 class="text-left mb-4">Inicio de sesión</h1>
						<form class="row g-3 needs-validation" novalidate>
							<div class="col-12">
								<label for="idUser" class="form-label mt-1"> <b>
										Usuario: </b>
								</label> <input type="text" class="form-control" name="userId" id="idUser"
									placeholder="Nombre usuario" required> <label
									for="idPass" class="form-label mt-1"> <b>
										Contraseña: </b>
								</label> <input type="password" class="form-control" name="userPass"
									id="idPass" placeholder="•••••••••••" required>
							</div>
							<div class="col-12">
								<button class="btn btn-dark" id="btnIngresar" type="submit">Ingresar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<%-- Columna derecha --%>
		
		<div class="bg-light p-3" style="width: 10%; height: 100vh;"></div>
		
	</section>

</body>
</html>