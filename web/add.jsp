

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>CATEGORIA </title>
    </head>
    <body>
 <div class="container mt-4">
            
            <div class="card">
                <div class="card-header">
                    <h5>Agregar nueva categoria </h5>
                    
                </div>
                <div class="card-body">
                    
               
                    <form action="Controlador">
                        <label>Nombre</label>
                       
                        <input type="text" name="txtnombre" class="form-control">
                          <label>Descripcion</label>
                           <input type="text" name="txtdescripcion" class="form-control">
                              <input type="submit" name="accion" value="Guardar">
                           
                <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
             
                    </form>
                    
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
