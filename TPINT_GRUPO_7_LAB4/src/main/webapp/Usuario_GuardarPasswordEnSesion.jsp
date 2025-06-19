<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String nuevoPassword = request.getParameter("nuevoPassword");

    if (nuevoPassword != null && !nuevoPassword.trim().isEmpty()) {
        session.setAttribute("nuevo_password", nuevoPassword);
        response.sendRedirect("General_Confirmacion.jsp?mensaje=¿Desea confirmar el cambio de contraseña?");
    } else {
        response.sendRedirect("Usuario_CambioPassword.jsp?error=1");
    }
%>
