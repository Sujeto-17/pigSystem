<%-- 
    Document   : logout
    Created on : 7/02/2023, 03:36:03 PM
    Author     : julia
--%>

<%session.invalidate();
    response.sendRedirect("../index.jsp");
%>