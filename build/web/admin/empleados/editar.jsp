<%-- 
    Document   : editar
    Created on : 19/02/2023, 04:10:49 PM
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Empleado | Pig Systems</title>
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
            String curp = request.getParameter("curp");

            rs = con.Buscar("SELECT * FROM empleados WHERE curp='" + curp + "'");
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
                    <li><a href="../clientes/clientes.jsp" class="nav-link px-2 text-light">Clientes</a></li>
                    <li><a href="empleados.jsp" class="nav-link px-2 text-warning">Empleados</a></li>
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
            <p class="p-3 fw-bold fs-5 text-center bg-success bg-opacity-10 border border-success border-start-0 rounded-end">Actualizar datos del Empleado</p>
        </div>

        <!--FORMULARIO-->
        <div class="container-fluid">
            <form action="editar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-3">
                        <label>CURP:</label>
                        <input type="text" class="form-control bg-body-secondary" name="curp" readonly 
                               value="<%=rs.getString(1)%>" >
                    </div>
                    <div class="col-sm-3">
                        <label>Nombre:</label>
                        <input type="text" class="form-control" name="nom" value="<%=rs.getString(2)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Apellido Paterno:</label>
                        <input type="text" class="form-control" name="app" value="<%=rs.getString(3)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Apellido Materno:</label>
                        <input type="text" class="form-control" name="apm" value="<%=rs.getString(4)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Fecha de Nacimiento:</label>
                        <input type="date" class="form-control" name="fn" value="<%=rs.getString(5)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Género:</label>
                        <input type="text" class="form-control" name="gen" value="<%=rs.getString(6)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Teléfono:</label>
                        <input type="tel" class="form-control" name="tel" value="<%=rs.getString(7)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Cargo:</label>
                        <input type="text" class="form-control" name="car" value="<%=rs.getString(8)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Área Asignada:</label>
                        <input type="text" class="form-control" name="area" value="<%=rs.getString(9)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Turno:</label>
                        <input type="text" class="form-control" name="tur" value="<%=rs.getString(10)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Hora de entrada:</label>
                        <input type="text" class="form-control" name="he" value="<%=rs.getString(11)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Hora de salida</label>
                        <input type="text" class="form-control" name="hs" value="<%=rs.getString(12)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Entidad Federativa:</label>
                        <input type="text" class="form-control" name="ef" value="<%=rs.getString(13)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Municipio:</label>
                        <input type="text" class="form-control" name="mun" value="<%=rs.getString(14)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-12">
                        <label>Dirección:</label>
                        <input type="text" class="form-control" name="dir" value="<%=rs.getString(15)%>">
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Colonia:</label>
                        <input type="text" class="form-control" name="col" value="<%=rs.getString(16)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Código Postal:</label>
                        <input type="text" class="form-control" name="cp" value="<%=rs.getString(17)%>">
                    </div>
                    <div class="col-sm-3">
                        <label>Salario:</label>
                        <input type="text" class="form-control" name="sal" value="<%=rs.getString(18)%>">
                    </div>
                </div><br>

                <div class="py-2">
                    <button type="submit" class="btn btn-success" name="enviar"><i class="bi bi-save2 pe-1"></i> Actualizar</button>
                    <a href="empleados.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%}%>
        </div>
        <%
            //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
            String nom, app, apm, fn, gen, tel, car, area, tur, he, hs, ef, mun, dir, col, cp, sal;

            nom = request.getParameter("nom");
            app = request.getParameter("app");
            apm = request.getParameter("apm");
            fn = request.getParameter("fn");
            gen = request.getParameter("gen");
            tel = request.getParameter("tel");
            car = request.getParameter("car");
            area = request.getParameter("area");
            tur = request.getParameter("tur");
            he = request.getParameter("he");
            hs = request.getParameter("hs");
            ef = request.getParameter("ef");
            mun = request.getParameter("mun");
            dir = request.getParameter("dir");
            col = request.getParameter("col");
            cp = request.getParameter("cp");
            sal = request.getParameter("sal");

            //ACTUALIZA LOS DATOS
            if (request.getParameter("enviar") != null) {
                con.CRUD("UPDATE empleados SET nom='" + nom + "', app='" + app + "', apm='" + apm + "',"
                        + "fn='" + fn + "', gen='" + gen + "', tel='" + tel + "', car='" + car + "',"
                        + "area='" + area + "', tur='" + tur + "', he='" + he + "', hs='" + hs + "',"
                        + "ef='" + ef + "', mun='" + mun + "', dir='" + dir + "', col='" + col + "',"
                        + "cp='" + cp + "', sal='" + sal + "' WHERE curp='" + curp + "'");
                response.sendRedirect("empleados.jsp");
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
    </body>
    <% }%>
</html>