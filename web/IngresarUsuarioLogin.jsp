<%-- 
    Document   : IngresarUsuarioLogin
    Created on : 1/10/2020, 02:16:46 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>usuarios</title>
    </head>
    <body>
       
     <div class="container mt-4">
            
            <div class="card">
                <div class="card-header">
                    <h5>Agregar nuevo usuario </h5>
                    
                </div>
                <div class="card-body">
                    
               
                    <form action="ControladorUsuario">
                        <label>Nombre</label>
                       
                        <input type="text" name="txtnombre" class="form-control">
                          <label>apellido</label>
                           <input type="text" name="txtapellido" class="form-control">
                            <label>usuario</label>
                           <input type="text" name="txtusuario" class="form-control">
                            <label>pass</label>
                           <input type="text" name="txtpass" class="form-control">
                            <label>cargo</label>
                           <input type="text" name="txtcargo" class="form-control">
                           
                           
                              <input  href="ControladorLogin?accion=Login1" type="submit" name="accion" value="Guardar">
                          
                <a href="Login.jsp">Rgresar al login</a>
                    
               
                    </form>
                    
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
