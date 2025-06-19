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




<h2>Pagar Préstamo</h2>
<br>
<form method="post" action="#" >

	
	
	<!-- Pagar prestamos -->
    <div class="mb-3">
      <label class="form-label fw-bold">Préstamos</label>
      <select class="form-select">
        <option>Seleccione préstamo...</option>
        <option>Préstamo 1</option>
        <option>Préstamo 2</option>
      </select>
    </div>
	
<label class="form-label fw-bold">Listado de cuotas pendientes: </label>
 <div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead class="table-light">
      <tr>
        <th scope="col"># Cuota Nro</th>
        <th scope="col">Monto</th>
        <th scope="col">Fecha de Vencimiento</th>
        <th scope="col">Estado</th>
        <th scope="col">Acción</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>$12.000</td>
        <td>2025-07-01</td>
        <td><span class="badge bg-warning text-dark">Pendiente</span></td>
        <td><button class="btn btn-sm btn-primary">Pagar</button></td>
      </tr>
      <tr>
        <td>2</td>
        <td>$12.000</td>
        <td>2025-08-01</td>
        <td><span class="badge bg-secondary">Futura</span></td>
        <td><button class="btn btn-sm btn-outline-secondary" disabled>Esperando</button></td>
      </tr>
    </tbody>
  </table>
</div>


	<!-- Seleccionar cuenta -->
    <div class="mb-3">
      <label class="form-label fw-bold">Seleccionar cuenta</label>
      <select class="form-select">
        <option>Seleccione cuenta...</option>
        <option>Caja de ahorro</option>
        <option>Cuenta corriente</option>
      </select>
    </div>


	
	<div class="d-flex justify-content-center mt-5" style="gap: 3rem;">
	<button type="submit" class="btn btn-danger px-4" name="BtnCancelar">Cancelar</button>
	<button type="submit" class="btn btn-success px-4" name="BtnConfirmarPago">💳 Confirmar Pago</button>
      
    </div>
</form>
</div>
	

	
</body>
</html>