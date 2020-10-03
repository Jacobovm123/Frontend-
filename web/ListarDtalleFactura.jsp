<%-- 
    Document   : ListarDtalleFactura
    Created on : 1/10/2020, 10:47:20 PM
    Author     : jacob
--%>

<%@page import="webservice.DetalleFactura"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
      <div class="container mt-4">
            
            <div class="card">
                  <div class="card-header">
                <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
                </div>
                <div class="card-header">
                <a href="MaestroFactura.jsp">Rgresar al maestro detalle consulta</a>
                    
                </div>
                <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>ID DETALLE FACTURA</th>
                                 <th>ID FACTURA</th>
                                  <th>ID  PRODUCTO</th>
                                    <th>CANTIDAD</th>
                                      <th>PRECIO</th>
                                   <th>ACCIONES </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            UserService detallefactura = new UserService();
                            List<DetalleFactura> datos2 = detallefactura.dfListar();
                            for(DetalleFactura u:datos2 ){
                            
                            %>
                              <tr>
                                <th><%= u.getId()%></th>
                                 <th><%= u.getIdFactura()%></th>
                                  <th><%= u.getIdProducto()%></th>
                                    <th><%= u.getCantidad()%></th>
                                   <th><%= u.getPrecio()%></th>
                                  
                                  <th>
                                      
                                      <a href="ControladorDetalleFactura?accion=editar&id=<%= u.getId()%>" class="btn btn-warning">EditarDF</a>
                                      <a href="ControladorDetalleFactura?accion=eliminar&id=<%= u.getId()%>" class="btn btn-danger">delete</a>
                                  </th>
                            </tr>
                            <%}
                            
                            %>
                        </tbody>
                            
                    </table>
                </div>
                
            </div>
        </div>
    </body>
</html>
