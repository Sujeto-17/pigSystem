<%-- 
    Document   : reporte
    Created on : 7/02/2023, 05:54:12 PM
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
        <title>Reporte de Clientes | Pig Systems</title>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <%
                        conexion conectar = new conexion();
                        ResultSet pro;
                        pro = conectar.Buscar("SELECT rfc,tp,CONCAT(nom,app,apm),tel,cor,ef,mun,dir,col,cp FROM clientes");
                    %>
                    <table class="table table-hover">
                        <thead class="text-center">
                        <th>RFC</th>
                        <th>Tipo de Persona</th>
                        <th>Nombre Completo</th>
                        <th>Teléfono</th>
                        <th>Correo Electrónico</th>
                        <th>Estado</th>
                        <th>Municipio</th>
                        <th>Dirección</th>
                        <th>Colonia</th>
                        <th>Código Postal</th>
                        </thead>
                        <tbody class="text-center">
                            <%
                                while (pro.next()) {
                            %>
                            <tr>
                                <td><%out.print(pro.getString(1));%></td>
                                <td><%out.print(pro.getString(2));%></td>
                                <td><%out.print(pro.getString(3));%></td>
                                <td><%out.print(pro.getString(4));%></td>
                                <td><%out.print(pro.getString(5));%></td>
                                <td><%out.print(pro.getString(6));%></td>
                                <td><%out.print(pro.getString(7));%></td>
                                <td><%out.print(pro.getString(8));%></td>
                                <td><%out.print(pro.getString(9));%></td>
                                <td><%out.print(pro.getString(10));%></td>
                                <%
                                    }
                                    conectar.Desconectar();
                                %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    <% }%>
</html>