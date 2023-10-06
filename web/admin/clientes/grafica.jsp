<%-- 
    Document   : grafica
    Created on : 9/02/2023, 10:49:28 AM
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
        <title>Ubicación de los Clientes | Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
        <!-- GRAFICAS JS -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../js/highcharts.js" type="text/javascript"></script>
        <script src="../../js/exporting.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            conexion even = new conexion();
            ResultSet rs;
        %>
        
        <div id="container" style=" min-width: 100%; height: 100%; margin: 0 auto"></div>
        <!--genera la gráfica-->
        <script type="text/javascript">
            //$(function () {
            $(document).ready(function () {

                $('#container').highcharts({
                    //Tipo de gráfica a utilizar
                    chart: {
                        type: 'column'
                    },
                    //Titulo que lleva la grafica
                    title: {
                        text: 'Ubicación de los clientes'
                    },
                    subtitle: {
                        text: 'Estados de la República Mexicana'
                    },
                    xAxis: {
                        categories: [
                            //Se imprime lo que significa los colores de la barra
                            '<%out.print("Estados");%>'// + estado
                        ]
                    },
                    yAxis: {
                        //Que texto dira en la parte izquierda para la grafica
                        min: 0,
                        title: {
                            text: 'Total'
                        }
                    },
                    tooltip: {
                        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                '<td style="padding:0"><b>{point.y} </b></td></tr>',
                        footerFormat: '</table>',
                        shared: true,
                        useHTML: true
                    },
                    plotOptions: {
                        column: {
                            pointPadding: 0.2,
                            borderWidth: 0
                        }
                    },
                    series: [
            <%

                rs = even.Buscar("SELECT ef, mun, COUNT(ef) FROM clientes GROUP BY ef");
                while (rs.next()) {%>
                        {
                            name: '<%out.print(rs.getString(1));%>',
                            data: [<%out.print(rs.getInt(3));%>]

                        },
            <%}
                even.Desconectar();
            %>
                    ]
                });
                //});
            });
        </script>
    </body>
    <% } %>
</html>
