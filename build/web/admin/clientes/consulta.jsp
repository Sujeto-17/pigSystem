<%-- 
    Document   : consulta
    Created on : 8/02/2023, 02:31:58 PM
    Author     : julia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession logeado = request.getSession();
    if (logeado.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    } else {
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes | Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            conexion con = new conexion();
            ResultSet rs;
            String rfc = request.getParameter("rfc");

            rs = con.Buscar("SELECT * FROM clientes WHERE rfc='" + rfc + "'");
            while (rs.next()) {
        %>
        
        <div class="container-fluid text-center">
            <h2 class="fw-bold">Datos del Cliente</h2> <br>

            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">RFC o CURP:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(1)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Tipo de Persona:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(2)%>">
                </div>
            </div> <br>

            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Nombre:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(3)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Apellido Paterno:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(4)%>">
                </div>
            </div><br>

            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Apellido Materno:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(5)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Fecha de Nacimiento:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(6)%>">
                </div>
            </div><br>

            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Género:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(7)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Teléfono:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(8)%>">
                </div>
            </div><br>
                
            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Correo Electrónico:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(9)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Entidad Federativa:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(10)%>">
                </div>
            </div><br>
            
            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Municipio:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(11)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Dirección:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(12)%>">
                </div>
            </div><br>
            
            <div class="row">
                <div class="col-2">
                    <p class="fw-bold fs-5">Colonia:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(13)%>">
                </div>
                <div class="col-2">
                    <p class="fw-bold fs-5">Código Postal:</p>
                </div>
                <div class="col-4">
                    <input class="form-control" readonly value="<%=rs.getString(14)%>">
                </div>
            </div>
        </div>
        <%}%>

        <!-- BOOTSTRAP -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- JQUERY -->
        <script src="../../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- POOPPER -->
        <script src="../../js/popper.min.js" type="text/javascript"></script>
        <!-- ICONOS DE FONT AWESOME -->
        <script src="https://kit.fontawesome.com/9d16621c07.js" crossorigin="anonymous"></script>
    </body>
    <%}%>
</html>