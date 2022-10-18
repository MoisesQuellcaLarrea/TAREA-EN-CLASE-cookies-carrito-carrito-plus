<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Producto"%>
<%
    if(session.getAttribute("almacen") == null) {
        ArrayList<Producto> lisaux = new ArrayList<Producto>();
        session.setAttribute("almacen", lisaux);
    }
    ArrayList<Producto> almacen = (ArrayList<Producto>)session.getAttribute("almacen"); 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de compras 2</h1>
        <form action="MainServlet" method="POST">
              <center><table border ="5">
                
            <tr>
                <td >
                                <span>
                    <font color="ff0080">CARRITO DE COMPRAS <br>
                    <font color="0000ff">Nombre: Moises Qellca larrea<br>
                   <font color="#ffd700"> Carnet: 6135300 L.</span>
               
            </tr>
        </table>
            
            <table>
                <tr>
                 
                    <td><font color="ff0080"> Id </td>
                    <td><input type = "text" name ="id" value="0" size="2"></td>
                </tr>
                <tr>
                    <td><font color="#28d754">Producto</td>
                    <td><input type = "text" name ="producto" value="nombre del producto"></td>
                </tr>
                <tr>
                    <td><font color="ff0080">Cantidad</td>
                    <td><input type = "text" name ="cantidad" value="0"></td>
                </tr>
                <tr>
                    <td><font color="00ffc7">Precio</td>
                    <td><input type = "text" name ="precio" value="0"></td>
                </tr>
                <tr>
                    <td><font color="ff0080"></td>
                    <td><input type = "submit" value="Procesar"></td>
                </tr>
            </table>
        </form>
        
        <a href="MainServlet?op=vaciar">Vaciar carrito</a>
        
        <h2>Contenido del carrito</h2>
        <table border ="1">
            <tr>
                <th><font color="ff0080">Id</th>
                <th><font color="ff0080">Producto</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th></th>
            </tr>
            <%
                if(almacen != null) {
                    for(Producto p: almacen){
            %>
            <tr>
                <th><%= p.getId()%></th>
                <th><%= p.getProducto()%></th>
                <th><%= p.getCantidad()%></th>
                <th><%= p.getPrecio()%></th>
                <th><a href="MainServlet?op=eliminar&id=<%= p.getId()%> ">X</a></th>
            </tr>
            <%
                }
                }
            %>
        </table>
    </body>
</html>
