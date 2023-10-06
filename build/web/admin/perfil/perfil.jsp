<%-- 
    Document   : perfil
    Created on : 8/05/2023, 10:24:37 PM
    Author     : Julian Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
<%HttpSession logeado = request.getSession();
    if (logeado.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    } else {
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alimentos | Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
    </head>
    <body>
        <!--ENCABEZADO-->
        <%@ include file = "../../view/header.jsp"%>

        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid p-3 bg-dark">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../index.jsp" class="btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4">
                    PygSystems
                </a>

                <ul class="nav col-lg-auto me-lg-auto justify-content-center">
                    <li><a href="../clientes/clientes.jsp" class="nav-link px-2 text-light">Clientes</a></li>
                    <li><a href="../empleados/empleados.jsp" class="nav-link px-2 text-light">Empleados</a></li>
                    <li><a href="../alimentos/alimentos.jsp" class="nav-link px-2 text-light">Alimentos</a></li>
                    <li><a href="../proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="../porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="../ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>

                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../../view/navUsu.jsp"%>   
            </div> 
        </div>

        <div class="col-sm-12">
            <p class="py-2 text-center fs-5 fw-bold m3-3 bg-success bg-opacity-25 border border-success
               border-start-0 rounded-end fs-3"><i class="bi bi-person-fill fs-3"></i>PERFIL</p>
        </div><br>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <%
                        conexion conectar = new conexion();
                        ResultSet rs;
                        rs = conectar.Buscar("SELECT * FROM persona");
                        while (rs.next()) {
                    %>
                    <!--TABLA CON DATOS DE PERFIL-->
                    <table class="table table-condensed">
                        <tbody>
                            <tr>
                                <td>RFC:</td>
                                <td><input type="text" class="form-control input-sm bg-secondary-subtle" name="rfc" value="<%=rs.getString(1)%>" readonly></td>
                            </tr>
                            <tr>
                                <td>Nombre:</td>
                                <td><input type="text" class="form-control input-sm bg-secondary-subtle" name="nom" value="<%=rs.getString(2)%>" readonly></td>
                            </tr>
                            <tr>
                                <td>Apellido Paterno:</td>
                                <td><input type="text" class="form-control input-sm bg-secondary-subtle" name="ap" value="<%=rs.getString(3)%>" readonly></td>
                            </tr>

                            <tr>
                                <td>Apellido Materno:</td>
                                <td><input type="text" class="form-control input-sm bg-secondary-subtle" name="am" value="<%=rs.getString(4)%>" readonly></td>
                            </tr>

                            <tr>
                                <td>Fecha de nacimiento:</td>
                                <td><input type="text" class="form-control input-sm bg-secondary-subtle" name="fn" value="<%=rs.getString(5)%>" readonly></td>
                            </tr>
                            <tr>
                                <td>Teléfono:</td>
                                <td><input type="tel" class="form-control input-sm" name="tel" value="<%=rs.getString(6)%>"></td>
                            </tr>
                            <tr>
                                <td>Correo Electrónico:</td>
                                <td><input type="email" class="form-control input-sm" name="cor" value="<%=rs.getString(7)%>"></td>
                            </tr>

                            <tr>
                                <td>Entidad Federativa:</td>
                                <td><input type="text" class="form-control input-sm" name="est" value="<%=rs.getString(8)%>"></td>
                            </tr>
                            <tr>
                                <td>Municipio:</td>
                                <td><input type="text" class="form-control input-sm" name="mun" value="<%=rs.getString(9)%>"></td>
                            </tr>
                            <tr>
                                <td>Dirección:</td>
                                <td><input type="text" class="form-control input-sm" name="dir" value="<%=rs.getString(10)%>"></td>
                            </tr>
                            <tr>
                                <td>Colonia:</td>
                                <td><input type="text" class="form-control input-sm" name="col" value="<%=rs.getString(11)%>"></td>
                            </tr>
                            <tr>
                                <td>Código Postal:</td>
                                <td><input type="text" class="form-control input-sm" name="cp" value="<%=rs.getString(12)%>"></td>
                            </tr>
                            <%
                                }
                                conectar.Desconectar();
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div><br>
        <!--FOOTER-->
        <%@ include file = "../../view/footer.jsp"%>

        <!-- BOOTSTRAP -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- JQUERY -->
        <script src="../../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- POOPPER -->
        <script src="../../js/popper.min.js" type="text/javascript"></script>
        <!-- ICONOS DE FONT AWESOME -->
        <script src="https://kit.fontawesome.com/9d16621c07.js" crossorigin="anonymous"></script>
    </body>
    <% }%>
</html>