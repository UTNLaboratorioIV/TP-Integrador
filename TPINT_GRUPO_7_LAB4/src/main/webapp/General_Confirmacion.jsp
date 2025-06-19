<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String mensaje = request.getParameter("mensaje");
    if (mensaje == null) mensaje = "¿Está seguro que desea continuar?";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmación</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .confirm-card {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="bg-white confirm-card">
        <h5><strong><%= mensaje %></strong></h5>
        <div class="mt-4 d-flex justify-content-around">
            <form action="Usuario_ProcesarCambioPassword.jsp" method="post">
                <button type="submit" class="btn btn-success"><i class="fas fa-check"></i> Confirmar</button>
            </form>
            <a href="Usuario_CambioPassword.jsp" class="btn btn-danger"><i class="fas fa-times"></i> Cancelar</a>
        </div>
    </div>
</div>

</body>
</html>
