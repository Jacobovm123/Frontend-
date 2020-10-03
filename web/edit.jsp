

<%@page import="webservice.User"%>
<%@page import="Modelo.UserService"%>
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
                    <h5>Actualizar nueva categoria </h5>
                    
                </div>
                
                
                <%
                   
                int id=Integer.parseInt((String )request.getAttribute("id_categoria"));
                UserService user =new UserService();
               User u= user.listarID(id);
                

                
                %>
                <div class="card-body">
                    
               
                    <form action="Controlador">
                         <label>Id Categoria</label>
                       
                        <input type="text" value="<%= u.getId()%>" name="txtid" readonly="" class="form-control" >
                        <label>Nombre</label>
                       
                        <input type="text" value="<%= u.getNombre()%>" name="txtnombre" class="form-control" >
                          <label>Descripcion</label>
                           <input type="text" value="<%= u.getDescripcion()%>" name="txtdescripcion" class="form-control">
                              <input type="submit" name="accion" value="Actualizar" class="btb btb-seccess">
                                <a href="MenuAdmin.jsp">Rgresar al menu principal</a>
                    
                           
                    </form>
                    
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
