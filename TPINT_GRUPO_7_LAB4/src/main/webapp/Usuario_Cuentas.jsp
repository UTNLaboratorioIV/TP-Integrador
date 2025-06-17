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

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Cuentas</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4" style="max-width: 700px;">

  <!-- Nav general-->
  <ul class="nav nav-pills justify-content-end mb-4">
    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
    <li class="nav-item"><a class="nav-link active" href="#">Cuentas</a></li>
    <li class="nav-item"><a class="nav-link" href="Usuario_Transferencia.jsp">Transferencias</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Préstamos</a></li>
    <li class="nav-item ms-3">
      <a class="nav-link p-0" href="#"><img src="images/avatar.png" width="40" height="40" class="rounded-circle"></a>
    </li>
  </ul>

  <!-- Cuenta 1 -->
  <div class="p-3 mb-4 border rounded bg-light">
    <div class="d-flex justify-content-between align-items-center">
      <div>
        <h5 class="mb-1">Caja de ahorro 123-4567890123-4</h5>
        <p class="mb-1 fw-semibold">Saldo $3999.99</p>
      </div>
      <div class="d-flex flex-column gap-2">
        <button class="btn btn-primary btn-sm" onclick="toggleDatos('datos1')">CBU y datos de Cuenta</button>
        <button class="btn btn-secondary btn-sm" onclick="toggleDatos('movimientos1')">Últimos movimientos</button>
      </div>
    </div>
    <div id="datos1" class="mt-3 d-none">
      <p><strong>Tipo de cuenta:</strong> Caja de ahorro</p>
      <p><strong>Número:</strong> 123-4567890123-4</p>
      <p><strong>CBU:</strong> 1234567890123456789012</p>
      <p><strong>Alias:</strong> alias.cuenta.ahorro</p>
      <p><strong>Sucursal:</strong> 001</p>
      <p><strong>Productos asociados:</strong> Tarjeta Débito</p>
      <p><strong>Titular:</strong> Cirilo Pérez</p>
      <p><strong>DNI:</strong> 30.123.456</p>
    </div>
    <div id="movimientos1" class="mt-3 d-none">
      <ul class="list-group">
        <li class="list-group-item">Compra Supermercado $250</li><!-- acá tendría que ir descontando o sumando, lo que corresponda -->
        <li class="list-group-item">Depósito $1.000</li>
        <li class="list-group-item">Transferencia recibida $500</li>
      </ul>
    </div>
  </div>

  <!-- Cuenta 2 -->
  <div class="p-3 mb-4 border rounded bg-light">
    <div class="d-flex justify-content-between align-items-center">
      <div>
        <h5 class="mb-1">Cuenta corriente 321-3215467784-2</h5>
        <p class="mb-1 fw-semibold">Saldo $23129.22</p>
      </div>
      <div class="d-flex flex-column gap-2">
        <button class="btn btn-primary btn-sm" onclick="toggleDatos('datos2')">CBU y datos de Cuenta</button>
        <button class="btn btn-secondary btn-sm" onclick="toggleDatos('movimientos2')">Últimos movimientos</button>
      </div>
    </div>
    <div id="datos2" class="mt-3 d-none">
      <p><strong>Tipo de cuenta:</strong> Cuenta corriente</p>
      <p><strong>Número:</strong> 321-3215467784-2</p>
      <p><strong>CBU:</strong> 9876543210987654321098</p>
      <p><strong>Alias:</strong> alias.cuenta.corriente</p>
      <p><strong>Sucursal:</strong> 002</p>
      <p><strong>Productos asociados:</strong> Tarjeta Crédito</p>
      <p><strong>Titular:</strong> Cirilo Pérez</p>
      <p><strong>DNI:</strong> 30.123.456</p>
    </div>
    <div id="movimientos2" class="mt-3 d-none">
      <ul class="list-group">
        <li class="list-group-item">Pago Tarjeta $3.000</li><!-- acá tendría que ir descontando o sumando, lo que corresponda -->
        <li class="list-group-item">Transferencia enviada $1.200</li>
        <li class="list-group-item">Cobro cheque $2.000</li>
      </ul>
    </div>
  </div>

</div>

<!-- Script para mostrar/ocultar -->
<script>
  function toggleDatos(id) {
    const elem = document.getElementById(id);
    elem.classList.toggle('d-none');
  }
</script>

</body>
</html>