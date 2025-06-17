<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container mt-4" style="max-width: 700px;">

  <!-- Nav general-->
  <ul class="nav nav-pills justify-content-end mb-4">
    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
    <li class="nav-item"><a class="nav-link" href="Usuario_Cuentas.jsp">Cuentas</a></li>
    <li class="nav-item"><a class="nav-link active" href="">Transferencias</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Préstamos</a></li>
    <li class="nav-item ms-3">
      <a class="nav-link p-0" href="#"><img src="images/avatar.png" width="40" height="40" class="rounded-circle"></a>
    </li>
  </ul>

  <!-- Form -->
  <form class="mx-auto">

    <!-- Cuenta Origen -->
    <div class="mb-3">
      <label class="form-label fw-bold">Cuenta Origen</label>
      <select class="form-select">
        <option>Seleccione cuenta...</option>
        <option>CA $ (123-4567890123-4)</option>
        <option>CC $ (321-3215467784-2)</option>
      </select>
    </div>

    <!-- Saldo -->
    <div class="mb-3">
      <label class="form-label fw-bold">Saldo</label>
      <input type="text" class="form-control form-control-sm" value="$ XXX.XXX.XXX,XX" readonly>
    </div>

    <!-- Cuenta Destino -->
    <div class="mb-3">
      <label class="form-label fw-bold">Cuenta Destino</label>

      <!-- Cuenta Propia -->
      <div class="form-check">
        <input class="form-check-input" type="radio" name="destino" id="propia" onclick="toggleDestino(true)">
        <label class="form-check-label" for="propia">Cuenta Propia</label>
        <select class="form-select mt-2" id="selectPropia" disabled>
          <option>Seleccione cuenta...</option>
          <option>CA $ (123-4567890123-4)</option>
          <option>CC $ (321-3215467784-2)</option>
        </select>
      </div>

      <!-- Otros -->
      <div class="form-check mt-3">
        <input class="form-check-input" type="radio" name="destino" id="otros" onclick="toggleDestino(false)">
        <label class="form-check-label" for="otros">Otros</label>
        <input type="text" class="form-control mt-2" id="inputCBU" placeholder="Ingrese CBU..." disabled>
      </div>
    </div>

    <!-- Monto a transferir -->
    <div class="mb-4">
      <label class="form-label fw-bold">Monto a Transferir</label>
      <input type="text" class="form-control fs-5 fw-semibold border-2 border-primary" placeholder="Ingrese monto...">
    </div>

    <!-- Botones -->
<div class="d-flex justify-content-center mt-5" style="gap: 3rem;">
      <button type="button" class="btn btn-danger px-4">Atrás</button>
      <button type="submit" class="btn btn-success px-4">Transferir</button>
    </div>

  </form>
</div>


</body>
</html>