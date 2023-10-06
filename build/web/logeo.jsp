<%-- 
    Document   : logeo
    Created on : 17/04/2023, 06:11:35 PM
    Author     : Julian Angel
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
        <!-- CSS -->
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <!-- Favicon -->
        <link rel="icon" href="img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="img/Logo.png" type="image/x-icon"/>
    </head>
    <body style="background: #AFAFAF;">
        <header class="bg-dark">
            <h1 class="text-light text-center py-3">Sistema de Administración de Porcino</h1>
        </header>
        
        <div class="container-fluid">
            <!--login-->
            <div class="col-sm-12">
                <div class="border border-warning caja" style="background: #FFFFFF">
                    <p class="bg-warning fw-bold py-2 text-center fs-5">Inicio de Sesión</p>
                    <img src="img/Logo.png" class="rounded mx-auto d-block" width="70px"/>
                    <form>
                        <div class="row justify-content-center">
                            <div class="col-sm-11">
                                <div class="form-group py-3">
                                    <input type="text" class="form-control ps-2 text-center text-uppercase" name="usu"
                                           placeholder="Usuario" required />
                                </div>
                            </div>
                            <div class="col-sm-11">
                                <div class="form-group py-3">
                                    <input type="password" class="form-control ps-2 text-center" name="pass"
                                           placeholder="Clave de acceso" id="bloquear" required />
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-warning boton mb-3" name="enviar">
                            <i class="bi bi-box-arrow-in-right"></i> Acceder</button>
                        <br>

                        <%
                            conexion con = new conexion();
                            String usu, pass, tp = "";
                            ResultSet re;

                            if (request.getParameter("enviar") != null) {
                                usu = request.getParameter("usu");
                                pass = request.getParameter("pass");
                                session.setAttribute("control", usu);
                                HttpSession acceder = request.getSession(true);
                                acceder.setAttribute("user", usu);

                                acceder.setAttribute("usu", usu);
                                re = con.Buscar("SELECT * FROM usuario WHERE (usu='" + usu + "' && pass='" + pass + "')");

                                if (re.next()) {
                                    tp = re.getString(3);
                                    System.out.print(tp);
                                }

                                if (tp.equals("admin")) {
                                    response.sendRedirect("admin/index.jsp");
                                } else {
                                    out.print("Usuario o Contraseña Incorrecta");
                                }
                            }
                        %>
                    </form>
                </div>
            </div>
        </div>
                    
        <!-- BOOTSTRAP -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- JQUERY -->
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- BLOQUEAR COPIAR Y PEGAR JS -->
        <script src="js/main.js" type="text/javascript"></script>
    </body>
</html>