<%-- 
    Document   : index
    Created on : 7/02/2023, 02:01:37 PM
    Author     : julia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--SESSION START-->
<%HttpSession logeado = request.getSession();
    if (logeado.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    } else {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- FAVICON -->
        <link rel="icon" href="../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../img/Logo.png" type="image/x-icon"/>
    </head>
    <body>
        <!--ENCABEZADO-->
        <%@ include file = "../view/header.jsp"%>

        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid p-3 bg-dark">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="index.jsp" class="btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4">
                    PygSystems
                </a>

                <ul class="nav col-lg-auto me-lg-auto justify-content-center">
                    <li><a href="clientes/clientes.jsp" class="nav-link px-2 text-light">Clientes</a></li>
                    <li><a href="empleados/empleados.jsp" class="nav-link px-2 text-white">Empleados</a></li>
                    <li><a href="alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="ventas/ventas.jsp" class="nav-link px-2 text-white">Ventas</a></li>
                    <li><a href="contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>
                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../view/navUsu.jsp"%>  
            </div>
        </div><br>

        <h1 class="text-center border-bottom border-3 py-2">Acerca de la Empresa</h1>

        <!--INFORMACIÓN-->
        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Nosotros</h1>
            <p class="p-2  fs-5">Conformada por granjas productoras equipadas con tecnología actual,
                con procesos de crianza confiables, contamos con nuestra propia planta de alimentos
                donde recibimos y procesamos toda la materia prima para generar alimento de alta
                calidad para cada línea y etapa de nuestros pollos y cerdos.</p>   
            <img src="../img/cerdo1.jpg" alt="" class="img-thumbnail"/><br>
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Misión</h1>
            <p class="p-2  fs-5">Empresa que contribuye en la alimentación de las familias del centro y de México con
                la distribución de cerdo de calidad.</p> 
            <img src="../img/cerdo2.jpg" alt="" class="img-thumbnail"/><br>
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Visión</h1>
            <p class="p-2  fs-5">Siempre líderes en la producción de proteína animal de manera eficiente, rentable y
                sustentable en el occidente de México.</p> 
            <img src="../img/cerdo3.jpg" alt="" class="img-thumbnail"/>
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Proyecto realizado por:</h1>
            <p class="p-2  fs-5">Eduardo Julián Julián Ángel</p>   
            <p class="p-2  fs-5">Alex Vargas Muñoz</p> 
        </section>

        <!--FOOTER-->
        <%@ include file = "../view/footer.jsp"%>
    </body>
    <%}%>
</html>