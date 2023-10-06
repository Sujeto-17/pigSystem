<%-- 
    Document   : agregar
    Created on : 19/02/2023, 06:19:48 PM
    Author     : julia
--%>

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
            <p class="p-3 fw-bold fs-5 text-center bg-success bg-opacity-10 border border-success border-start-0 rounded-end">Registrar Nuevo Empleado</p>
        </div>

        <!--FORMULARIO-->
        <div class="container-fluid">
            <form action="agregar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-3">
                        <label>CURP:</label>
                        <input type="text" class="form-control" name="curp" maxlength="18" placeholder="Escriba el CURP del empleado" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Nombre:</label>
                        <input type="text" class="form-control" name="nom" placeholder="Nombre" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Apellido Paterno:</label>
                        <input type="text" class="form-control" name="app" placeholder="Apellido Paterno" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Apellido Materno:</label>
                        <input type="text" class="form-control" name="apm" placeholder="Apellido Materno" required>
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Fecha de Nacimiento:</label>
                        <input type="date" class="form-control" name="fn" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Género:</label>
                        <input type="text" class="form-control" name="gen" placeholder="Masculino o Femenino" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Teléfono:</label>
                        <input type="tel" class="form-control" name="tel" maxlength="10" placeholder="Teléfono Celular" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Cargo:</label>
                        <input type="text" class="form-control" name="car" placeholder="Puesto de trabajo" required>
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Área Asignada:</label>
                        <input type="text" class="form-control" name="area" placeholder="Lugar donde va a trabajar" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Turno:</label>
                        <input type="text" class="form-control" name="tur" placeholder="Matutino o Vespertino" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Hora de entrada:</label>
                        <input type="time" class="form-control" name="he" required>
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Hora de salida</label>
                        <input type="time" class="form-control" name="hs" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Entidad Federativa:</label>
                        <input type="text" class="form-control" name="ef" placeholder="Entidad Federativa" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Municipio:</label>
                        <input type="text" class="form-control" name="mun" placeholder="Municipio" required>
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-12">
                        <label>Dirección:</label>
                        <input type="text" class="form-control" name="dir" placeholder="Dirección" required>
                    </div>
                </div><br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Colonia:</label>
                        <input type="text" class="form-control" name="col" placeholder="Colonia" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Código Postal:</label>
                        <input type="number" class="form-control" name="cp" placeholder="Código Postal" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Salario:</label>
                        <input type="number" class="form-control" name="sal" placeholder="Salario $" required>
                    </div>
                </div><br>

                <div class="py-2">
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save2 pe-1"></i> Registrar</button>
                    <a href="empleados.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%
                //LAMMAMOS LA CLASE CONEXION E INDICAMOS LOS CARACTERES A UTILIZAR
                request.setCharacterEncoding("utf-8");
                conexion con = new conexion();
                //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
                String curp, nom, app, apm, fn, gen, tel, car, area, tur, he, hs, ef, mun, dir, col, cp, sal;

                curp = request.getParameter("curp");
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

                //REGISTRA LOS DATOS
                if (curp != null) {
                    con.CRUD("INSERT INTO empleados VALUES ('" + curp + "', '" + nom + "','" + app + "',"
                            + "'" + apm + "', '" + fn + "','" + gen + "', '" + tel + "', '" + car + "',"
                            + "'" + area + "', '" + tur + "', '" + he + "', '" + hs + "', '" + ef + "',"
                            + "'" + mun + "','" + dir + "', '" + col + "', '" + cp + "', '" + sal + "')");
                    response.sendRedirect("empleados.jsp");
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
    </body>
    <% }%>
</html>