<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
  </head>
<body>
	<div class="container mt-4" style="max-width: 700px;">

	<!-- Nav general-->
  <ul class="nav nav-pills justify-content-end mb-4">
    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Cuentas</a></li>
    <li class="nav-item"><a class="nav-link" href="Usuario_Transferencia.jsp">Transferencias</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Préstamos</a></li>
    <li class="nav-item ms-3">
      <a class="nav-link p-0" href="#"><img src="Images/perfilAvatar.png" width="40" height="40" class="rounded-circle" ></a>
    </li>
  </ul>


	<h2>Solicitud de Préstamo</h2>
	<br>
	<!-- INGRESAR MONTO SOLICITADO -->
	<form action="#" method="post" >
	<label>Monto solicitado ($): </label>
	<input type="number" name= "monto" min=0 placeholder= "Ingresar monto">
	<br>
	

	
	<!-- Elegir cuotas -->
    <div class="mb-3">
		<label class="form-label fw-bold">Cantidad de cuotas: </label>
		<select name="cuotas" class="form-select">
	    <option value="3">3 cuotas</option>
	    <option value="6">6 cuotas</option>
	    <option value="12">12 cuotas</option>
	    <option value="24">24 cuotas</option>
		</select><br>
      
    </div>
	
	<!-- Seleccionar cuenta -->
    <div class="mb-3">
      <label class="form-label fw-bold">Seleccionar cuenta:</label>
      <select class="form-select">
        <option>Seleccione cuenta...</option>
        <option value= "1">Caja ahorro</option>
		<option value= "2">Cta Cte</option>
      </select>
    </div>
	
	
		<!-- BOTONES -->
	<div class="d-flex justify-content-center mt-5" style="gap: 3rem;">
	<button type="submit" class="btn btn-danger px-4" name="BtnCancelar">Cancelar</button>
	<button type="submit" class="btn btn-success px-4" name="BtnConfirmarPago">Solicitar</button>
	</div>
	
	<br>
	
	</form>
	</div>
	
	
</body>
</html>