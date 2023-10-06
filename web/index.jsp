<%-- 
    Document   : index
    Created on : 7/02/2023, 12:08:02 PM
    Author     : julia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
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
        <%@ include file = "view/headerin.jsp"%>
        
        <!--Slider de imagen-->
        <div id="carouselExampleCaptions" class="carousel slide pt-3" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="3000">
                    <img src="img/slide1.jpg" class="d-block w-100" alt="...">
                </div>

                <div class="carousel-item" data-bs-interval="3000">
                    <img src="img/slide2.jpg" class="d-block w-100" alt="...">
                </div>

                <div class="carousel-item" data-bs-interval="3000">
                    <img src="img/slide3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--INTRO-->
        <section class="d-flex flex-column justify-content-center align-items-center pt-5 
                 text-center w-50 m-auto" id="intro">
            <h1 class="p-3 fs-2 border-top border-3">Porcinos altamente criados y alimentados con maíz
                en<span class="text-primary"> Granjas "El Gordón"</span></h1>
            <p class="p-3 fs-4"> <span class="text-primary">Granjas El Gordón</span> es una granja
                donde nos dedicamos tanto a la venta y distribución de porcinos adultos o lechones
                como la venta de alimentos</p>   
        </section>

        <!--FOOTER-->
        <%@ include file = "view/footer.jsp"%>

        <!-- BOOTSTRAP -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- JQUERY -->
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- BLOQUEAR COPIAR Y PEGAR JS -->
        <script src="js/main.js" type="text/javascript"></script>
    </body>
</html>