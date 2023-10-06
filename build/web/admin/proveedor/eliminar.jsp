<%-- 
    Document   : eliminar
    Created on : 13/03/2023, 09:20:44 PM
    Author     : julia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //LLAMAMOS LA CLASE CONEXION E INDICAMOS QUE DATO ES EL QUE SE VA A BORRAR EN ESTE CASO CON EL RFC
            conexion con = new conexion();
            ResultSet rs;
            String rfc = request.getParameter("rfc");

            //INDICAMOS QUE VA A BORRAR UTILIZANDO LA CONDICION PARA EVITAR BORRAR OTROS DATOS
            con.CRUD("DELETE FROM proveedor WHERE rfc='" + rfc + "'");
            response.sendRedirect("proveedor.jsp");
        %>
    </body>
</html>
