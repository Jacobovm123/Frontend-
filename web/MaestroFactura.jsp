
<<<<<<< HEAD
<%@page import="webservice.User"%>
<%@page import="java.util.List"%>

<%@page import="webservice.Factura"%>
<%@page import="webservice.DetalleFactura"%>
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
                <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
                </div>
                   <a href="ListarDtalleFactura.jsp">Listar Detalle Factura </a>
                <div class="card-header">
                    <a href="ControladorDetalleFactura?accion=addDF" class="btn btn-primary "> NUEVO DETALLE </a>
                    
                </div>
                <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>ID FACTURA </th>
                                 <th>FECHA</th>
                                  <th>ID CLIENTE </th>
                                   <th>NOMBRE CLIENTE </th>
                                      <th>NIT </th>
                                       <th>TOTAL A PAGAR </th>
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
                                    <th><%= u.getIdCliente()%></th>
                                 
                                 <th><%= u.getNombre()%></th>
                                    <th><%= u.getNit()%></th>
                                     <th><%= u.getTotal()%></th>
                                 
                               
                                  <th>
                                      
                                     
                                     
                                  </th>
                            </tr>
                            <%}
                            
                            %>
                        </tbody>
                            
                    </table>
                </div>
                        
                         <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            
                            <tr>
                                <th>DESCRIPCION </th>
                                 <th>NOMBRE CATEGORIA</th>
                                  <th>NOMBRE PRODUCTO</th>
                                
                                         <th>MARCA PRODUCTO </th>
                                            <th>CANTIDAD </th>
                                               <th>PRECIO </th>
                                                  <th>SUB TOTAL </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                              //  webservice.DetalleFactura
                            //UserService factura = new UserService();
                           // List<DetalleFactura> datos = detalle_fcatura.fDlistar();
                           UserService detallefactura = new UserService();
                               List<DetalleFactura> datos2 = detallefactura.fDlistar();
                        //   List<DetalleFactura> datos2 = DetalleFactura
                                   
                           
                            for(DetalleFactura u:datos2 ){
                            
                            %>
                              <tr>
                                <th><%= u.getDescripcion()%></th>
                                  
                                   <th><%= u.getNombre()%></th>
                             
                                   <th><%= u.getNombrep()%></th>
                                          <th><%= u.getMarca()%></th>
                                                 <th><%= u.getCantidad()%></th>
                                                  <th><%= u.getPrecio()%></th>
                                                   <th><%= u.getTotal()%></th>
                                 
                               
                                 
=======
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
>>>>>>> origin/master
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
