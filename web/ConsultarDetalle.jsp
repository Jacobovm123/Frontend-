<%-- 
    Document   : ConsultarDetalle
    Created on : 30/09/2020, 10:50:48 PM
    Author     : jacob
--%>

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
            
            <div class="card">
                <div class="card-header">
                    <h5>consultar detalle </h5>
                    
                </div>
                <%
                  int id=Integer.parseInt((String )request.getAttribute("id_factura"));
                UserService consultardetalle = new UserService();
                
                 DetalleFactura u =consultardetalle.fDlistarID(id);
                


                
                %>
                
                
                <div class="card-body">
                    
               
                    <form action="ControladorDetalleFactura">
                        <label>ID FACTURA DETALLE</label>
                       
                        <input type="text" name="txtid" readonly="" class="form-control" value="<%= u.getId()%>">
                          <label>ID FACTURA</label>
                       
                        <input type="text" name="txtid_factura" readonly="" class="form-control" value="<%= u.getIdFactura()%>">
                          <label>ID PRODUCTO</label>
                       
                        <input type="text" name="txtid_producto" readonly="" class="form-control" value="<%= u.getIdProducto()%>">
                            
                               <label>CANTIDAD</label>
                          <input type="text" name="txtcantidad" class="form-control" value="<%= u.getCantidad()%>">
                               <label>PRECIO</label>
                          <input type="text" name="txtprecio" class="form-control" value="<%= u.getPrecio()%>">
                           
                     
                              <input type="submit" name="accion" value="ActualizarDF">
                              <a href="ControladorDetalleFactura?accion=index">Regresar</a>
                    </form>
                    
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
