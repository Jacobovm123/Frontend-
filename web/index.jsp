

<%@page import="java.util.List"%>
<%@page import="Modelo.UserService"%>
<%@page import="webservice.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>CATEGORIA </title>
    </head>
    <body>
<<<<<<< HEAD
        
                    
        <div class="container mt-4">
            
            <div class="card">
                <div class="card-header">
                    <a href="Controlador?accion=add" class="btn btn-primary "> nueva categoria </a>
                    
                </div>
                  <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
=======
        <div class="container mt-4">
            
            <div class="card">
                <div class="card-header">
                    <a href="Controlador?accion=add" class="btn btn-primary "> nueva categoria </a>
                    
                </div>
>>>>>>> origin/master
                <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>ID</th>
                                 <th>NOMBRE PRODUCTO</th>
                                  <th>DESCRIPCION PRODUCTO</th>
                                   <th>ACCIONES </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            UserService user = new UserService();
                            List<User> datos = user.listar();
                            for(User u:datos ){
                            
                            %>
                              <tr>
                                <th><%= u.getId()%></th>
                                 <th><%= u.getNombre()%></th>
                                  <th><%= u.getDescripcion()%></th>
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
