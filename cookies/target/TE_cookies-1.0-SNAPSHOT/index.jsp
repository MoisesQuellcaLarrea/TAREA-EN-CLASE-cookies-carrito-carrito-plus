<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            int contador = 0;
            Cookie[] cooki = request.getCookies();
            if (cooki != null) {
                for (Cookie c : cooki) {
                    if (c.getName().equals("aplicacion")) {
                        contador = Integer.parseInt(c.getValue());
                        
                        }
                    }
                }
            if (contador == 0) {
        %>
         <h2>------------------------------------</h2>
        <h1>BIENVENIDO A NUESTRO SITIO WEB </h1>
        <h2>------------------------------------</h2>
        <%
        } else {
        %>
        <h2>------------------------------------</h2>
         <h2>GRACIAS POR VISITARNOS NUEVAMENTE</h2>
          <h2>------------------------------------</h2>
        <%
            }
        %>

        <a href="BienvenidoServlet">Cuantas visitas realizo a esta pagina</a>
    </body>
</html>
