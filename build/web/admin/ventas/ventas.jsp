<%-- 
    Document   : ventas
    Created on : 9/05/2023, 01:04:18 PM
    Author     : Julian Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.conexion"%>
<%HttpSession logeado = request.getSession();
    if (logeado.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    } else {
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas | Pig Systems</title>
        <!-- BOOTSTRAP -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <!-- FAVICON -->
        <link rel="icon" href="../../img/Logo.png" type="image/x-icon"/>
        <link rel="shortcut icon" href="../../img/Logo.png" type="image/x-icon"/>
        <!-- DATA TABLE -->
        <link href="../../DataTables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../DataTables/DataTables-1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--ENCABEZADO-->
        <%@ include file = "../../view/header.jsp"%>

        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid p-3 bg-dark">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../index.jsp" class="btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4">
                    PygSystems
                </a>

                <ul class="nav col-lg-auto me-lg-auto justify-content-center">
                    <li><a href="../clientes/clientes.jsp" class="nav-link px-2 text-light">Clientes</a></li>
                    <li><a href="../empleados/empleados.jsp" class="nav-link px-2 text-white">Empleados</a></li>
                    <li><a href="../alimentos/alimentos.jsp" class="nav-link px-2 text-white">Alimentos</a></li>
                    <li><a href="../proveedor/proveedor.jsp" class="nav-link px-2 text-white">Proveedores</a></li>
                    <li><a href="../porcinos/porcinos.jsp" class="nav-link px-2 text-white">Porcinos</a></li>
                    <li><a href="ventas.jsp" class="nav-link px-2 text-warning">Ventas</a></li>
                    <li><a href="../contacto.jsp" class="nav-link px-2 text-white">Contacto</a></li>
                </ul>

                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->
                <%@ include file = "../../view/navUsu.jsp"%>    
            </div> 
        </div> 

        <!--TABLA-->
        <div class="container-fluid">
            <div class="row-12">
                <h2 class="text-center py-3">Porcinos vendidos</h2>
            </div>

            <div class="row">
                <div class="col-sm-8">
                    <a href="agregar.jsp" class="btn btn-primary mb-3"><i class="bi bi-plus-circle"></i> Vender porcinos</a>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <%
                        conexion conectar = new conexion();
                        ResultSet rs;
                        rs = conectar.Buscar("SELECT * FROM ventas");
                    %>
                    <table class="table table-bordered table-striped" id="MiTabla">
                        <thead class="text-center">
                        <th>Clave venta</th>
                        <th>Clave del porcino</th>
                        <th>Curp del cliente</th>
                        <th>Curp del empleado</th>
                        <th>Fecha de compra</th>
                        <th>Hora de compra</th>
                        <th>Precio final</th>
                        </thead>
                        <tbody class="text-center">
                            <%
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%out.print(rs.getString(1));%></td>
                                <td><%out.print(rs.getString(2));%></td>
                                <td><%out.print(rs.getString(3));%></td>
                                <td><%out.print(rs.getString(4));%></td>
                                <td><%out.print(rs.getString(5));%></td>
                                <td><%out.print(rs.getString(6));%></td>
                                <td><%out.print(rs.getString(7));%></td>>
                            </tr>
                            <%
                                }
                                conectar.Desconectar();
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!--FOOTER-->
        <%@ include file = "../../view/footer.jsp"%>

        <!-- BOOTSTRAP -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- JQUERY -->
        <script src="../../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- POOPPER -->
        <script src="../../js/popper.min.js" type="text/javascript"></script>
        <!-- DATA TABLE -->
        <script src="../../DataTables/datatables.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $('#MiTabla').DataTable();
            });
        </script>

        <script>
            var table = $('#MiTabla').DataTable({
                language: {
                    "decimal": "",
                    "emptyTable": "No hay información",
                    "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                    "infoEmpty": "Mostrando 0 a 0 de 0 Entradas",
                    "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                    "infoPostFix": "",
                    "thousands": ",",
                    "lengthMenu": "Mostrar _MENU_ Entradas",
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "search": "Buscar:",
                    "zeroRecords": "Sin resultados encontrados",
                    "paginate": {
                        "first": "Primero",
                        "last": "Ultimo",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    }
                }
            });
        </script>
    </body>
    <% }%>
</html>