<%-- 
    Document   : navUsu
    Created on : 16/03/2023, 05:41:00 PM
    Author     : julia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>

<%
    String usua = (String) session.getAttribute("usu");
%>

<a href="http://localhost:8084/pigSystem/admin/perfil/perfil.jsp" type="button" class="btn btn-warning ms-2"><%out.println(usua);%></a>
<a href="http://localhost:8084/pigSystem/admin/logout.jsp" class="btn btn-light ms-3">Cerrar Sesion</a>