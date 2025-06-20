<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("usuario_logueado");
    if (username == null) username = "Usuario";
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cambio de Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        .form-card {
            max-width: 500px;
            margin: 80px auto;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
        }
        .btn-cancel {
            background-color: #dc3545;
            color: white;
        }
        .btn-next {
            background-color: #28a745;
            color: white;
        }
    </style>
    <script>
        function validarPasswords() {
            const nueva = document.getElementById("nuevoPassword").value;
            const confirmar = document.getElementById("confirmarPassword").value;

            if (nueva !== confirmar) {
                alert("Las contraseñas no coinciden.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <div class="card form-card">
        <div class="card-header">
            <h4><i class="fas fa-key"></i> Cambio de Password</h4>
        </div>
        <div class="card-body">
            <form action="Usuario_GuardarPasswordEnSesion.jsp" method="post" onsubmit="return validarPasswords()">
                <div class="mb-3">
                    <label class="form-label">Usuario:</label>
                    <input type="text" class="form-control" value="<%= username %>" disabled>
                </div>
                <div class="mb-3">
                    <label for="nuevoPassword" class="form-label">Nuevo Password:</label>
                    <input type="password" name="nuevoPassword" id="nuevoPassword" class="form-control" required>
                </div>
                <div class="mb-4">
                    <label for="confirmarPassword" class="form-label">Confirmar Password:</label>
                    <input type="password" name="confirmarPassword" id="confirmarPassword" class="form-control" required>
                </div>
                <div class="d-flex justify-content-between">
                    <a href="javascript:history.back()" class="btn btn-cancel">
                        <i class="fas fa-times"></i> Cancelar
                    </a>
                    <button type="submit" class="btn btn-next">
                        <i class="fas fa-arrow-right"></i> Siguiente
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
