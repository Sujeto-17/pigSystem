<%-- 
    Document   : editar
    Created on : 7/02/2023, 09:18:30 PM
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
        
        <!--ENCABEZADO-->
        <%@ include file = "../../view/header.jsp"%>

        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid p-3 bg-dark">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../index.jsp" class="btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4">
                    PygSystems
                </a>

                <ul class="nav col-lg-auto me-lg-auto justify-content-center">
                    <li><a href="clientes.jsp" class="nav-link px-2 text-warning">Clientes</a></li>
                    <li><a href="../empleados/empleados.jsp" class="nav-link px-2 text-light">Empleados</a></li>
                    <li><a href="../alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="../proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="../porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="../ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>

                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../../view/navUsu.jsp"%>     
            </div> 
        </div> 

        <div class="col-sm-3">
            <p class="p-3 fw-bold fs-5 text-center bg-warning bg-opacity-10 border border-warning border-start-0 rounded-end">Modificar Datos del Cliente</p>
        </div>

        <div class="container-fluid">
            <form action="editar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-3">
                        <label>RFC o CURP:</label>
                        <input type="text" class="form-control bg-body-secondary" name="rfc" readonly
                               value="<%=rs.getString(1)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Tipo de Persona:</label>
                        <input type="text" class="form-control" name="tp" value="<%=rs.getString(2)%>">
                    </div>
                    <div class="col-sm-6">
                        <label>Nombre:</label>
                        <input type="text" class="form-control" name="nom" value="<%=rs.getString(3)%>">
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Apellido Paterno:</label>
                        <input type="text" class="form-control" name="app" value="<%=rs.getString(4)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Apellido Materno:</label>
                        <input type="text" class="form-control" name="apm" value="<%=rs.getString(5)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Fecha de Nacimiento:</label>
                        <input type="text" class="form-control" name="fn" value="<%=rs.getString(6)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Género:</label>
                        <input type="text" class="form-control" name="gen" value="<%=rs.getString(7)%>">
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Teléfono:</label>
                        <input type="tel" class="form-control" name="tel" value="<%=rs.getString(8)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Correo Electrónico:</label>
                        <input type="email" class="form-control" name="cor" value="<%=rs.getString(9)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Entidad Federativa:</label>
                        <input type="text" class="form-control" name="ef" value="<%=rs.getString(10)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Municipio:</label>
                        <input type="text" class="form-control" name="mun" value="<%=rs.getString(11)%>">
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-12">
                        <label>Dirección:</label>
                        <input type="text" class="form-control" name="dir" value="<%=rs.getString(12)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Colonia:</label>
                        <input type="text" class="form-control" name="col" value="<%=rs.getString(13)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Código Postal:</label>
                        <input type="text" class="form-control" name="cp" value="<%=rs.getString(14)%>">
                    </div>
                </div><br>

                <div class="py-2">
                    <button type="submit" class="btn btn-success" name="enviar"><i class="bi bi-save2 pe-1"></i> Modificar</button>
                    <a href="clientes.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%}%>
        </div>

        <%
            //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
            String tp, nom, app, apm, fn, gen, tel, cor, ef, mun, dir, col, cp;

            tp = request.getParameter("tp");
            nom = request.getParameter("nom");
            app = request.getParameter("app");
            apm = request.getParameter("apm");
            fn = request.getParameter("fn");
            gen = request.getParameter("gen");
            tel = request.getParameter("tel");
            cor = request.getParameter("cor");
            ef = request.getParameter("ef");
            mun = request.getParameter("mun");
            dir = request.getParameter("dir");
            col = request.getParameter("col");
            cp = request.getParameter("cp");

            //ACTUALIZA LOS DATOS
            if (request.getParameter("enviar") != null) {
                con.CRUD("UPDATE clientes SET tp='" + tp + "', nom='" + nom + "', app='" + app + "', apm='" + apm + "', fn='" + fn
                        + "', gen='" + gen + "', tel='" + tel + "', cor='" + cor + "', ef='" + ef + "',"
                        + "mun='" + mun + "', dir='" + dir + "', col='" + col + "', cp='" + cp + "'"
                        + "WHERE rfc='" + rfc + "'");
                response.sendRedirect("clientes.jsp");
            }
        %>

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
    <%}%>
</html>