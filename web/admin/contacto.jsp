<%-- 
    Document   : contacto
    Created on : 17/04/2023, 06:37:28 PM
    Author     : Julian Angel
--%>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto | Pig Systems</title>
        <!-- BOOTSTRAP CSS-->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- FAVICON -->
        <link rel="icon" href="../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../img/Logo.png" type="image/x-icon"/>
        <!-- BOOTSTRAP JS-->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <!--ENCABEZADO-->
        <%@ include file = "../view/header.jsp"%>

        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid p-3 bg-dark">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../index.jsp" class="btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4">
                    PygSystems
                </a>

                <ul class="nav col-lg-auto me-lg-auto justify-content-center">
                    <li><a href="clientes/clientes.jsp" class="nav-link px-2 text-light">Clientes</a></li>
                    <li><a href="empleados/empleados.jsp" class="nav-link px-2 text-white">Empleados</a></li>
                    <li><a href="alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-warning">Contacto</a></li>
                </ul>
                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../view/navUsu.jsp"%> 
            </div> 
        </div>

        <!--SECCION DE CONTACTO-->
        <%@ include file = "../view/contacto.jsp"%>

        <!-- FOOTER -->
        <%@ include file = "../view/footer.jsp"%>

        
    </body>
    <% }%>
</html>
