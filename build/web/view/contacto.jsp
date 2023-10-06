<%-- 
    Document   : contacto
    Created on : 20/04/2023, 10:58:25 PM
    Author     : Julian Angel
--%>

<%@page import="db.conexion"%>
<!--SECCION DE CONTACTO-->
<!--CONTENEDOR DEL FORMULARIO-->
<section class="border-top border-3">
    <div class="container border-top border-secondary" style="max-width: 500px;">
        <div class="text-center mb-4">
            <div><img src="http://localhost:8084/pigSystem/img/support.png" alt="" class="img-fluid ps-5"></div>
            <h2>Contáctanos</h2>
            <p class="fs-5">Déjanos un mensaje</p>
        </div>

        <form autocomplete="off">
            <div class="mb-3">
                <input type="email" class="form-control" name="cor" placeholder="Tu correo electrónico" required>
            </div>

            <div class="mb-3">
                <input type="text" class="form-control" name="nom" placeholder="Tu nombre" required>
            </div>

            <div class="mb-3">
                <input type="tel" class="form-control" name="tel" placeholder="Teléfono" required>
            </div>

            <div class="mb-3">
                <textarea class="form-control" name="men" rows="4" placeholder="Tu mensaje" required></textarea>
            </div>

            <div class="mb-3">
                <button type="submit" name="enviar" onclick="alerta()" class=" btn btn-primary w-100 fs-5">Enviar Mensaje</button>
            </div>
        </form>

        <%
            //LAMMAMOS LA CLASE CONEXION E INDICAMOS LOS CARACTERES A UTILIZAR
            request.setCharacterEncoding("utf-8");
            conexion con = new conexion();
            //CREAMOS VARAIBLES PARA GUARDAR LOS DATOS ESCRITO POR EL USUARIO
            String cor, nom, tel, men;

            cor = request.getParameter("cor");
            nom = request.getParameter("nom");
            tel = request.getParameter("tel");
            men = request.getParameter("men");

            if (request.getParameter("enviar") != null) {
                //REGISTRA LOS DATOS
                con.CRUD("INSERT INTO contacto (cor, nom, tel, men) VALUES ('" + cor + "','" + nom + "', '" + tel + "',"
                        + "'" + men + "')");
                response.sendRedirect("contacto.jsp");
            }
        %>
    </div>
</section>

<script type="text/javascript">
    function alerta() {
        alert("Su mensaje se ha enviado correctamente");
    }
</script> 