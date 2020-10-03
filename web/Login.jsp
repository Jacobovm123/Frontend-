<%-- 
    Document   : Login
    Created on : 1/10/2020, 02:07:21 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>Login</title>
    </head>
    <body>
     
         <div class="container mt-4">
            
            <div class="card">
               
                <div class="card-body">
                    
               
        
        <form action="ControladorLogin" method="post">
            <label>usuario</label>
            <input  type="text" name="usuario" class="form-control" /><br>
              <label>contraseña </label>
            <input  type="text" name="pass"class="form-control" /><br>
            
            <input type="submit" value="iniciar sesion" />
            
        </form>
        <br>
        
        <a href="IngresarUsuarioLogin.jsp">Registrar usuario</a>
        
          </div>
                
            </div>
        </div>
    </body>
</html>
