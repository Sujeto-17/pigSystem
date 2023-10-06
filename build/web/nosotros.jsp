<%-- 
    Document   : nosotros
    Created on : 17/04/2023, 06:18:27 PM
    Author     : Julian Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Favicon -->
        <link rel="icon" href="img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="img/Logo.png" type="image/x-icon"/>
    </head>
    <body>
        <!--ENCABEZADO-->
        <h1 class="mb-0 p-2 pb-3">Ventas de porcinos "Granjas el Cerdón"</h1>
        <header class="container-fluid p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="index.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <img src="img/Logo.png" width="50px">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                        <use xlink:href="#bootstrap" />
                        </svg>
                    </a>

                    <div class="text-end">
                        <a href="logeo.jsp">
                            <button type="button" class="btn btn-warning">Iniciar Sesión</button></a>
                    </div>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="index.jsp" class="nav-link px-4 text-white">Inicio</a></li>
                        <li><a href="contacto.jsp" class="nav-link px-4 text-white">Contacto</a></li>
                        <li><a href="nosotros.jsp" class="nav-link px-4 text-warning">Nosotros</a></li>
                    </ul>
                </div>
            </div>
        </header>

        <!--INFORMACIÓN-->
        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Nosotros</h1>
            <p class="p-2  fs-5">Conformada por granjas productoras equipadas con tecnología actual,
                con procesos de crianza confiables , contamos con nuestra propia planta de alimentos
                donde recibimos y procesamos toda la materia prima para generar alimento de alta
                calidad para cada línea y etapa de nuestros pollos y cerdos.</p>   
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Misión</h1>
            <p class="p-2  fs-5">Empresa que contribuye en la alimentación de las familias del centro y de México con
                la distribución de cerdo de calidad.</p>   
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Visión</h1>
            <p class="p-2  fs-5">Siempre líderes en la producción de proteína animal de manera eficiente, rentable y
                sustentable en el occidente de México.</p>   
        </section>

        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-2 fs-2 border-top border-3">Proyecto realizado por:</h1>
            <p class="p-2  fs-5">Eduardo Julián Julián Ángel</p>   
            <p class="p-2  fs-5">Alex Vargas Muñoz</p> 
        </section>

        <!--FOOTER-->
        <%@ include file = "view/footer.jsp"%>
    </body>
</html>
