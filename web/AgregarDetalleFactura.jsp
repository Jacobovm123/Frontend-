<%-- 
    Document   : AgregarDetalleFactura
    Created on : 1/10/2020, 01:13:08 AM
    Author     : jacob
--%>

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
                    <h5>Agregar nuevo detalle factura </h5>
                    
                </div>
                <div class="card-body">
                    
               
                    <form action="ControladorDetalleFactura">
                        <label>ID FACTURA</label>
                       
                        <input type="text" name="txtid_factura" class="form-control">
                          <label>ID PRODUCTO</label>
                           <input type="text" name="txtid_producto" class="form-control">
                               <label>CANTIDAD</label>
                       
                        <input type="text" name="txtcantidad" class="form-control">
                            <label>PRECIO</label>
                       
                        <input type="text" name="txtprecio" class="form-control">
                              <input type="submit" name="accion" value="Guardar">
                         
                               
                <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
            
                    </form>
                    
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
