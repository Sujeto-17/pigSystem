<%-- 
    Document   : eliminar
    Created on : 8/05/2023, 10:06:23 PM
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
            con.CRUD("DELETE FROM alimentos WHERE cve='" + cve + "'");
            response.sendRedirect("alimentos.jsp");
        %>
    </body>
</html>
