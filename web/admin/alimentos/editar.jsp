<%-- 
    Document   : editar
    Created on : 17/04/2023, 07:15:26 PM
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
        <%
            request.setCharacterEncoding("utf-8");
            conexion con = new conexion();
            ResultSet rs;
            String cve = request.getParameter("cve");

            rs = con.Buscar("SELECT * FROM alimentos WHERE cve='" + cve + "'");
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
                    <li><a href="../empleados/empleados.jsp" class="nav-link px-2 text-light">Empleados</a></li>
                    <li><a href="alimentos.jsp" class="nav-link px-2 text-warning">Alimentos</a></li>
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
            <p class="p-3 fw-bold fs-5 text-center bg-info bg-opacity-10 border border-info border-start-0 rounded-end">Modificar datos del alimento</p>
        </div>

        <div class="container-fluid">
            <form action="editar.jsp" method="POST" autocomplete="off">
                <div class="row">
                    <div class="col-sm-6">
                        <label>Clave del producto:</label>
                        <input type="text" class="form-control bg-body-secondary" name="cve" readonly
                               value="<%=rs.getString(1)%>">
                    </div>
                    <div class="col-sm-6">
                        <label>Nombre del producto:</label>
                        <input type="text" class="form-control" name="nom" value="<%=rs.getString(2)%>">
                    </div>

                </div> <br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Marca del producto:</label>
                        <input type="text" class="form-control" name="mar" value="<%=rs.getString(3)%>">
                    </div>
                    <div class="col-sm-6">
                        <label>Unidad de medida:</label>
                        <input type="text" class="form-control" name="uni" value="<%=rs.getString(4)%>">
                    </div>

                </div> <br>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Precio:</label>
                        <input type="text" class="form-control" name="pre" value="<%=rs.getString(5)%>">
                    </div>
                    <div class="col-sm-6">
                        <label>Cantidad en existencia:</label>
                        <input type="text" class="form-control" name="exi" value="<%=rs.getString(6)%>">
                    </div>
                </div> <br>

                <div class="py-2">
                    <button type="submit" class="btn btn-success" name="enviar"><i class="bi bi-save2 pe-1"></i> Modificar</button>
                    <a href="alimentos.jsp" class="btn btn-danger"><i class="bi bi-arrow-left-square pe-1"></i> Cancelar</a>
                </div>
            </form>
            <%}%>
        </div>

        <%
            //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
            String nom, mar, uni, pre, exi;

            nom = request.getParameter("nom");
            mar = request.getParameter("mar");
            uni = request.getParameter("uni");
            pre = request.getParameter("pre");
            exi = request.getParameter("exi");

            //ACTUALIZA LOS DATOS
            if (request.getParameter("enviar") != null) {
                con.CRUD("UPDATE alimentos SET nom='" + nom + "', mar='" + mar + "', uni='" + uni + "',"
                        + "pre='" + pre + "', exi='" + exi + "'WHERE cve='" + cve + "'");
                response.sendRedirect("alimentos.jsp");
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
    <% }%>
</html>