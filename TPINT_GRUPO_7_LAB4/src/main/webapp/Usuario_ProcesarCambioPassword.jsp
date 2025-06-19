<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String usuario = (String) session.getAttribute("usuario_logueado");
    String nuevoPassword = (String) session.getAttribute("nuevo_password");

    if (usuario != null && nuevoPassword != null) {

        session.removeAttribute("nuevo_password");

        request.setAttribute("resultado", "Contraseña actualizada correctamente para " + usuario);
    } else {
        request.setAttribute("resultado", "No se pudo procesar el cambio de contraseña.");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="alert alert-info">
        <p><%= request.getAttribute("resultado") %></p>
        <a href="UsuariosABM.jsp" class="btn btn-primary">Volver</a>
    </div>
</div>
</body>
</html>
