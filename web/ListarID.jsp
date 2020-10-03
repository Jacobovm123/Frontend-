<%-- 
    Document   : ListarID
    Created on : 30/09/2020, 02:54:32 PM
    Author     : jacob
--%>

<%@page import="java.util.List"%>
<%@page import="webservice.DetalleFactura"%>
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
            
         
                         <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>ID DETALLE FACTURA </th>
                                 <th>CANTIDAD</th>
                                  <th>PRECIO </th>
                                   <th>NOMBRE PRODUCTO </th>
                                         <th>MARCA PRODUCTO </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                              //  webservice.DetalleFactura
                            //UserService factura = new UserService();
                           // List<DetalleFactura> datos = detalle_fcatura.fDlistar();
                           
                           //UserService detallefactura = new UserService();
                             //  List<DetalleFactura> datos2 = detallefactura.fDlistarID("1");
                        //   List<DetalleFactura> datos2 = DetalleFactura
                          int id=Integer.parseInt((String )request.getAttribute("id_factura"));
                UserService detallefactura =new UserService();
               DetalleFactura u= detallefactura.fDlistarID(id);
                       
                    //   .listarID(id);        
                        
                        %>
                          
                            
                              <tr>
                                <th><%= u.getId()%></th>
                                  
                                   <th><%= u.getCantidad()%></th>
                             
                                   <th><%= u.getPrecio()%></th>
                                          <th><%= u.getNombre()%></th>
                                                 <th><%= u.getMarca()%></th>
                                 
                               
                                  <th>
                                      
                                      <a href="Controlador?accion=editar&id=<%= u.getId()%>" class="btn btn-warning">edit</a>
                                      <a href="Controlador?accion=eliminar&id=<%= u.getId()%>" class="btn btn-danger">delete</a>
                                  </th>
                            </tr>
                            <%}
                            
                            %>
                        </tbody>
                            
                    </table>
                </div>
        </div>
    </body>
</html>
