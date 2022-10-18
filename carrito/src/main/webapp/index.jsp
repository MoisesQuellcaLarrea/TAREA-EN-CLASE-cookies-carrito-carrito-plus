<%@page import="java.util.ArrayList"%>
<%
    //verifica si existe la colección en el objeto session
    if (session.getAttribute("lista") == null) {
            //Inicializar la lista auxiliar
            ArrayList<String> lis = new ArrayList<String>();
            //creando un atributo con una coleción vacia
            session.setAttribute("lista",lis);
        }
    //se obtiene la colección lista
    ArrayList<String> lista = (ArrayList<String>)session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <center><table border ="5">
                
            <tr>
                <td >
                                <span>
                    <font color="ff0080">CARRITO DE COMPRAS <br>
                    <font color="0000ff">Nombre: Moises Qellca larrea<br>
                   <font color="#ffd700"> Carnet: 6135300 L.</span>
               
            </tr>
        </table>
        
        </center>
        <p>Inserte los productos que desea</p>
        <form action="ProcesaServlet" method="POST">
            Producto: <input type="text" name ="producto">
            <input type="submit" value="Enviar">
        </form>
        <br>
        <a href="ProcesaServlet">Vaciar el carrito</a>
        <h3>contenido del carrito: </h3>
        <ul>
            <%
                if (lista != null) {
                        for (String item : lista) {
                                out.print("<li>"+ item+"</li>");
                            }
                    }
            %>
        </ul>
    </body>
</html>
