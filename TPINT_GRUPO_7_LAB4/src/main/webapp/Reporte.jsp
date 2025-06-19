<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reportes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

    <h2 class="mb-4">Reportes</h2>

    <!-- Botones de selección de reporte -->
    <div class="mb-3">
        <button class="btn btn-outline-primary" onclick="mostrarFormulario('formPagos')">Estadísticas de pagos de crédito</button>
        <button class="btn btn-outline-secondary" onclick="mostrarFormulario('formOtro')">Análisis de transferencias</button>
        <button class="btn btn-outline-info" onclick="mostrarFormulario('formDiversificacion')">Diversificación de cuentas por cliente</button>
    </div>

    <!-- Formularios de filtros (placeholde) -->
    <div id="formPagos" class="card p-3 mb-4 d-none">
        <label for="anio" class="form-label">Año:</label>
        <input type="number" class="form-control mb-3" name="anio" placeholder="Ej: 2024">
        <button class="btn btn-success" onclick="mostrarTabla('tablaPagos')">Generar Reporte</button>
    </div>


    <!-- Tablas (placeholder) -->
    <div id="tablaPagos" class="mt-4 d-none">
        <h5>Estadísticas de pagos de crédito</h5>
        <table class="table table-bordered mt-3">
            <thead class="table-light">
                <tr>
                    <th>Mes</th>
                    <th>Cantidad Pagos</th>
                    <th>Total Pagado</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>Enero</td><td>125</td><td>$1.250.000</td></tr>
                <tr><td>Febrero</td><td>98</td><td>$980.000</td></tr>
                <tr><td>Marzo</td><td>143</td><td>$1.430.000</td></tr>
            </tbody>
        </table>
    </div>

    <!-- JS -->
    <script>
        function mostrarFormulario(id) {
            document.querySelectorAll('.card').forEach(f => f.classList.add('d-none'));
            document.querySelectorAll('[id^="tabla"]').forEach(t => t.classList.add('d-none'));
            document.getElementById(id).classList.remove('d-none');
        }

        function mostrarTabla(idTabla) {
            document.querySelectorAll('[id^="tabla"]').forEach(t => t.classList.add('d-none'));
            document.getElementById(idTabla).classList.remove('d-none');
        }
    </script>

</body>
</html>
