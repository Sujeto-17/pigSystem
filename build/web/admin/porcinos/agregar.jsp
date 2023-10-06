<%-- 
    Document   : agregar
    Created on : 8/05/2023, 08:15:29 PM
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
        <title>Porcinos | Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
        <!-- DATA TABLE -->
        <link href="../../DataTables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../DataTables/DataTables-1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>
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
                    <li><a href="../empleados/empleados.jsp" class="nav-link px-2 text-white">Empleados</a></li>
                    <li><a href="../alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="../proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="porcinos.jsp" class="nav-link px-2 text-warning">Porcinos</a></li>
                    <li><a href="../ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>

                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../../view/navUsu.jsp"%>    
            </div> 
        </div> 

        <div class="col-sm-3">
            <p class="p-3 fw-bold fs-5 text-center bg-dark bg-opacity-10 border border-dark border-start-0 rounded-end">Registrar Nuevo Porcino</p>
        </div>

        <div class="container-fluid">
            <form action="agregar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-6">
                        <label>Género del porcino:</label>
                        <input type="text" class="form-control" name="gen" placeholder="Macho o Hembra" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Raza del porcino:</label>
                        <input type="text" class="form-control" name="raza" placeholder="Raza del porcino" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Fecha de nacimiento:</label>
                        <input type="date" class="form-control" name="fn" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Peso:</label>
                        <input type="text" class="form-control" name="peso" placeholder="Peso en KG" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Longitud:</label>
                        <input type="text" class="form-control" name="lon" placeholder="Longitud" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Precio</label>
                        <input type="text" class="form-control" name="pre" placeholder="Precio" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Estado</label>
                        <input type="text" class="form-control" name="sta" placeholder="Vivo o Muerto" required>
                    </div>
                </div> <br>

                <div class="py-2">
                    <button type="submit" name="enviar" class="btn btn-primary"><i class="bi bi-save2 pe-1"></i> Registrar</button>
                    <a href="porcinos.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%
                //LAMMAMOS LA CLASE CONEXION E INDICAMOS LOS CARACTERES A UTILIZAR
                request.setCharacterEncoding("utf-8");
                conexion con = new conexion();
                //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
                String gen, raza, fn, peso, lon, pre, sta;

                gen = request.getParameter("gen");
                raza = request.getParameter("raza");
                fn = request.getParameter("fn");
                peso = request.getParameter("peso");
                lon = request.getParameter("lon");
                pre = request.getParameter("pre");
                sta = request.getParameter("sta");

                //REGISTRA LOS DATOS
                if (request.getParameter("enviar") != null) {
                    con.CRUD("INSERT INTO producto (gen,raza,fn,peso,lon,pre,sta) VALUES ('" + gen + "','" + raza + "','" + fn + "','" + peso + "',"
                            + "'" + lon + "','" + pre + "','" + sta + "')");
                    response.sendRedirect("porcinos.jsp");
                }
            %>
        </div>

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