<%-- 
    Document   : vender
    Created on : 9/05/2023, 04:37:36 PM
    Author     : Julian Angel
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
            String cve = request.getParameter("cve");

            //INDICAMOS QUE VA A BORRAR UTILIZANDO LA CONDICION PARA EVITAR BORRAR OTROS DATOS
            con.CRUD("DELETE FROM producto WHERE cve='" + cve + "'");
            response.sendRedirect("porcinos.jsp");
        %>
    </body>
</html>
