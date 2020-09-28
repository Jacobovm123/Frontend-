
<%@page import="java.util.List"%>

<%@page import="webservice.Factura"%>
<%@page import="Modelo.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>MAESTRO DETALLE</title>
    </head>
    <body>
     <div class="container mt-4">
            
            <div class="card">
                <div class="card-header">
                    <a href="Controlador?accion=add" class="btn btn-primary "> nueva  </a>
                    
                </div>
                <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>ID FACTURA </th>
                                 <th>FECHA</th>
                                  <th>TOTAL </th>
                                   <th>NOMBRE CLIENTE </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            UserService factura = new UserService();
                            List<Factura> datos = factura.flistar();
                            for(Factura u:datos ){
                            
                            %>
                              <tr>
                                <th><%= u.getId()%></th>
                                  
                                   <th><%= u.getFecha()%></th>
                                    <th><%= u.getTotal()%></th>
                                 <th><%= u.getNombre()%></th>
                                 
                               
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
        </div>
    </body>
</html>
