<%-- 
    Document   : agregar
    Created on : 13/03/2023, 09:20:30 PM
    Author     : julia
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
        <title>Proveedor | Pig Systems</title>
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
                    <li><a href="../alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="proveedor.jsp" class="nav-link px-2 text-warning">Proveedores</a></li>
                    <li><a href="../porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="../ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>

                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../../view/navUsu.jsp"%>   
            </div> 
        </div>

        <div class="col-sm-3">
            <p class="p-3 fw-bold fs-5 text-center bg-info bg-opacity-10 border border-info border-start-0 rounded-end">Registrar Nuevo Proveedor</p>
        </div>

        <div class="container-fluid">
            <form action="agregar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-3">
                        <label>RFC:</label>
                        <input type="text" class="form-control" name="rfc" placeholder="Escriba el RFC" required>
                    </div>
                    <div class="col-sm-9">
                        <label>Razón Social:</label>
                        <input type="text" class="form-control" name="rs" placeholder="Razón Social" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Teléfono</label>
                        <input type="tel" class="form-control" name="tel" placeholder="Teléfono Celular" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Correo Electrónico:</label>
                        <input type="email" class="form-control" name="cor" placeholder="example@email.com" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Descripción:</label>
                        <input type="text" class="form-control" name="des" placeholder="Que servicios ofrece este proveedor" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Estado:</label>
                        <input type="text" class="form-control" name="est" placeholder="Entidad Federativa" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Municipio</label>
                        <input type="text" class="form-control" name="mun" placeholder="Municipio" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Dirección</label>
                        <input type="text" class="form-control" name="dir" placeholder="Dirección" required>
                    </div>
                </div> <br>

                <div class="row">
                    <div class="col-sm-3">
                        <label>Colonia:</label>
                        <input type="text" class="form-control" name="col" placeholder="Colonia" required>
                    </div>
                    <div class="col-sm-3">
                        <label>Código Postal:</label>
                        <input type="text" class="form-control" name="cp" placeholder="Código Postal" required>
                    </div>
                    <div class="col-sm-6">
                        <label>Referencias:</label>
                        <input type="text" class="form-control" name="ref" placeholder="Especificar ubicación" required>
                    </div>
                </div><br>

                <div class="py-2">
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save2 pe-1"></i> Registrar</button>
                    <a href="proveedor.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%
                //LAMMAMOS LA CLASE CONEXION E INDICAMOS LOS CARACTERES A UTILIZAR
                request.setCharacterEncoding("utf-8");
                conexion con = new conexion();
                //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
                String rfc, rs, tel, cor, des, est, mun, dir, col, cp, ref;

                rfc = request.getParameter("rfc");
                rs = request.getParameter("rs");
                tel = request.getParameter("tel");
                cor = request.getParameter("cor");
                des = request.getParameter("des");
                est = request.getParameter("est");
                mun = request.getParameter("mun");
                dir = request.getParameter("dir");
                col = request.getParameter("col");
                cp = request.getParameter("cp");
                ref = request.getParameter("ref");

                //REGISTRA LOS DATOS
                if (rfc != null) {
                    con.CRUD("INSERT INTO proveedor VALUES ('" + rfc + "', '" + rs + "','" + tel + "',"
                            + "'" + cor + "', '" + des + "','" + est + "', '" + mun + "', '" + dir + "',"
                            + "'" + col + "', '" + cp + "', '" + ref + "')");
                    response.sendRedirect("proveedor.jsp");
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