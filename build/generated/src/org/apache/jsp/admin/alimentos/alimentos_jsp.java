package org.apache.jsp.admin.alimentos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import db.conexion;

public final class alimentos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/admin/alimentos/../../view/header.jsp");
    _jspx_dependants.add("/admin/alimentos/../../view/navUsu.jsp");
    _jspx_dependants.add("/admin/alimentos/../../view/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--SESSION START-->\n");
HttpSession logeado = request.getSession();
    if (logeado.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    } else {

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Alimentos | Pig Systems</title>\n");
      out.write("        <!-- BOOTSTRAP -->\n");
      out.write("        <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css\">\n");
      out.write("        <!-- FAVICON -->\n");
      out.write("        <link rel=\"icon\" href=\"../../img/Logo.png\" type=\"image/x-icon\"/>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../../img/Logo.png\" type=\"image/x-icon\"/>\n");
      out.write("        <!-- DATA TABLE -->\n");
      out.write("        <link href=\"../../DataTables/datatables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../../DataTables/DataTables-1.11.5/css/dataTables.bootstrap5.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--ENCABEZADO-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("    <div class=\"container-fluid shadow bg-body-tertiary text-center py-2\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-2\"><img src=\"http://localhost:8084/pigSystem/img/Logo.png\" width=\"100px\"></div>\n");
      out.write("            <div class=\"col-sm-10 d-flex justify-content-center align-items-center\">\n");
      out.write("                <h1 class=\"text-center\">Sistema de Administración de Porcinos</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</header>");
      out.write("\n");
      out.write("\n");
      out.write("        <!--BARRA DE NAVEGACIÓN-->\n");
      out.write("        <div class=\"container-fluid p-3 bg-dark\">\n");
      out.write("            <div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\">\n");
      out.write("                <a href=\"../index.jsp\" class=\"btn btn-warning d-flex align-items-center text-decoration-none ms-4 me-4\">\n");
      out.write("                    PygSystems\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("                <ul class=\"nav col-lg-auto me-lg-auto justify-content-center\">\n");
      out.write("                    <li><a href=\"../clientes/clientes.jsp\" class=\"nav-link px-2 text-white\">Clientes</a></li>\n");
      out.write("                    <li><a href=\"../empleados/empleados.jsp\" class=\"nav-link px-2 text-light\">Empleados</a></li>\n");
      out.write("                    <li><a href=\"alimentos.jsp\" class=\"nav-link px-2 text-warning\">Alimentos</a></li>\n");
      out.write("                    <li><a href=\"../proveedor/proveedor.jsp\" class=\"nav-link px-2 text-white\">Proveedores</a></li>\n");
      out.write("                    <li><a href=\"../porcinos/porcinos.jsp\" class=\"nav-link px-2 text-white\">Porcinos</a></li>\n");
      out.write("                    <li><a href=\"../contacto.jsp\" class=\"nav-link px-2 text-white\">Contacto</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <!--NOMBRE DEL USUARIO Y CERRAR SESIÓN-->\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    String usu = (String) session.getAttribute("usu");

      out.write("\n");
      out.write("<a href=\"http://localhost:8084/pigSystem/admin/modificar.jsp\" class=\"btn btn-warning ms-2\">");
out.println(usu);
      out.write("</a>\n");
      out.write("<a href=\"http://localhost:8084/pigSystem/admin/logout.jsp\" class=\"btn btn-light ms-3\">Cerrar Sesion</a>");
      out.write("  \n");
      out.write("            </div> \n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("        <!--TABLA-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row-12\">\n");
      out.write("                <h2 class=\"text-center py-3\">Alimentos</h2>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    <a href=\"agregar.jsp\" class=\"btn btn-primary mb-3\"><i class=\"bi bi-plus-circle\"></i> Nuevo Alimento</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    ");

                        conexion conectar = new conexion();
                        ResultSet rs;
                        rs = conectar.Buscar("SELECT * FROM alimentos");
                    
      out.write("\n");
      out.write("                    <table class=\"table table-bordered table-striped\" id=\"MiTabla\">\n");
      out.write("                        <thead class=\"text-center\">\n");
      out.write("                        <th>Clave</th>\n");
      out.write("                        <th>Nombre</th>\n");
      out.write("                        <th>Marca</th>\n");
      out.write("                        <th>Unidad de medida (KG)</th>\n");
      out.write("                        <th>Precio</th>\n");
      out.write("                        <th>Cantidad en existencia</th>\n");
      out.write("                        <th>Acciones</th>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody class=\"text-center\">\n");
      out.write("                            ");

                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                                <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                                <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                                <td><a href=\"editar.jsp?rfc=");
      out.print(rs.getString(1));
      out.write("\" title=\"Actualizar datos\" class=\"btn btn-warning btn-sm\">\n");
      out.write("                                        <i class=\"bi bi-pencil-square\"></i></a> \n");
      out.write("                                    <a href=\"eliminar.jsp?rfc=");
      out.print(rs.getString(1));
      out.write("\" title=\"Eliminar cliente\" class=\"btn btn-danger btn-sm\">\n");
      out.write("                                        <i class=\"bi bi-trash\"></i></a></td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
}
                                conectar.Desconectar();
                            
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--FOOTER-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"w-100  d-flex  align-items-center justify-content-center flex-wrap\n");
      out.write("        bg-dark text-white mt-4\">\n");
      out.write("    <p class=\"fs-5 px-3  pt-3\">Pig Systems. &copy; Todos Los Derechos Reservados 2023</p>\n");
      out.write("</footer>");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- BOOTSTRAP -->\n");
      out.write("        <script src=\"../../js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- JQUERY -->\n");
      out.write("        <script src=\"../../js/jquery-3.3.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- POOPPER -->\n");
      out.write("        <script src=\"../../js/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- DATA TABLE -->\n");
      out.write("        <script src=\"../../DataTables/datatables.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#MiTabla').DataTable();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var table = $('#MiTabla').DataTable({\n");
      out.write("                language: {\n");
      out.write("                    \"decimal\": \"\",\n");
      out.write("                    \"emptyTable\": \"No hay información\",\n");
      out.write("                    \"info\": \"Mostrando _START_ a _END_ de _TOTAL_ Entradas\",\n");
      out.write("                    \"infoEmpty\": \"Mostrando 0 a 0 de 0 Entradas\",\n");
      out.write("                    \"infoFiltered\": \"(Filtrado de _MAX_ total entradas)\",\n");
      out.write("                    \"infoPostFix\": \"\",\n");
      out.write("                    \"thousands\": \",\",\n");
      out.write("                    \"lengthMenu\": \"Mostrar _MENU_ Entradas\",\n");
      out.write("                    \"loadingRecords\": \"Cargando...\",\n");
      out.write("                    \"processing\": \"Procesando...\",\n");
      out.write("                    \"search\": \"Buscar:\",\n");
      out.write("                    \"zeroRecords\": \"Sin resultados encontrados\",\n");
      out.write("                    \"paginate\": {\n");
      out.write("                        \"first\": \"Primero\",\n");
      out.write("                        \"last\": \"Ultimo\",\n");
      out.write("                        \"next\": \"Siguiente\",\n");
      out.write("                        \"previous\": \"Anterior\"\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("    ");
}
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
