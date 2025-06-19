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

  <!-- Nav general -->
  <ul class="nav nav-pills justify-content-end mb-4">
    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Cuentas</a></li>
    <li class="nav-item"><a class="nav-link" href="Usuario_Transferencia.jsp">Transferencias</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Préstamos</a></li>
    <li class="nav-item ms-3">
      <a class="nav-link p-0" href="#"><img src="Images/perfilAvatar.png" width="40" height="40" class="rounded-circle"></a>
    </li>
  </ul>

  <h2 class="mb-4">Perfil del Usuario</h2>

  <form action="#" method="post" class="row g-3">

    <div class="col-md-6">
      <label for="nombre" class="form-label">Nombre:</label>
      <input type="text" id="nombre" name="nombre" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="apellido" class="form-label">Apellido:</label>
      <input type="text" id="apellido" name="apellido" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento:</label>
      <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="dni" class="form-label">DNI:</label>
      <input type="number" id="dni" name="dni" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="sexo" class="form-label">Sexo:</label>
      <select name="cuotas" class="form-select" required>
        <option value="">Seleccionar</option>
        <option value="masculino">Masculino</option>
        <option value="femenino">Femenino</option>
        <option value="otro">Otro</option>
      </select>
    </div>

    <div class="col-md-6">
      <label for="Nacionalidad" class="form-label">Nacionalidad:</label>
      <input type="text" id="Nacionalidad" name="nacionalidad" class="form-control" required>
    </div>

    <h2 class="mt-4">Datos de contacto</h2>

    <div class="col-md-12">
      <label for="domicilio" class="form-label">Domicilio:</label>
      <input type="text" id="domicilio" name="domicilio" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="codigoPostal" class="form-label">Código Postal:</label>
      <input type="text" id="codigoPostal" name="codigoPostal" class="form-control" required>
    </div>

    <div class="col-md-6">
      <label for="NroTel" class="form-label">Número de Teléfono:</label>
      <input type="number" id="NroTel" name="nroTel" class="form-control" required>
    </div>

    <div class="col-md-12">
      <label for="email" class="form-label">Email:</label>
      <input type="email" id="email" name="email" class="form-control" required>
    </div>

    <div class="col-md-12 text-center mt-4">
      <button type="submit" name="BtnGuardarPerfil" class="btn btn-primary">Guardar Perfil</button>
    </div>
  </form>
</div>


</body>
</html>