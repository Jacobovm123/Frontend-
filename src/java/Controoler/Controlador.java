/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controoler;

import Modelo.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    String add="add.jsp";
    String edit="edit.jsp";
    String index="index.jsp";
<<<<<<< HEAD
    String editar1="ListarID.jsp";
    String acceso="";
    
    
    UserService user= new UserService();
    
            
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
      String accion =request.getParameter("accion");
      if(accion.equals("add")){
          acceso=add;
          
          
      
      
      }else
          if(accion.equals("Guardar")){
              
              String nombre=request.getParameter("txtnombre");
              String descripcion=request.getParameter("txtdescripcion");
              
              user.agregar(nombre, descripcion);
              acceso=index;
              
          
          
          }
      
          else if(accion.equals("editar")){
          
          acceso=edit;
          request.setAttribute("id_categoria", request.getParameter("id"));
          
          }
      
          else if(accion.equals("Actualizar")){
          
              
              String nombre=request.getParameter("txtnombre");
              String descripcion=request.getParameter("txtdescripcion");
              
              int id =Integer.parseInt(request.getParameter("txtid"));
              
              user.actualizar(id, nombre, descripcion);
              acceso=index;
              
          
          }
          else if (accion.equals("eliminar")){
          int id =Integer.parseInt(request.getParameter("id"));
          user.eliminar(id);
          acceso=index;
          
          
          }
          
           else if(accion.equals("editar1")){
          
          acceso=editar1;
          request.setAttribute("id_factura", request.getParameter("id"));
=======
    String acceso="";
    
    
    UserService user= new UserService();
    
            
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      String accion =request.getParameter("accion");
      if(accion.equals("add")){
          acceso=add;
          
          
      
      
      }else
          if(accion.equals("Guardar")){
              
              String nombre=request.getParameter("txtnombre");
              String descripcion=request.getParameter("txtdescripcion");
              
              user.agregar(nombre, descripcion);
              acceso=index;
              
          
          
          }
      
          else if(accion.equals("editar")){
          
          acceso=edit;
          request.setAttribute("id_categoria", request.getParameter("id"));
          
          }
      
          else if(accion.equals("Actualizar")){
          
              
              String nombre=request.getParameter("txtnombre");
              String descripcion=request.getParameter("txtdescripcion");
              
              int id =Integer.parseInt(request.getParameter("txtid"));
              
              user.actualizar(id, nombre, descripcion);
              acceso=index;
              
          
          }
          else if (accion.equals("eliminar")){
          int id =Integer.parseInt(request.getParameter("id"));
          user.eliminar(id);
          acceso=index;
          
>>>>>>> origin/master
          
          }
      
          else   {
          
          acceso=index;
          
          
          }
      RequestDispatcher dispatcher= request.getRequestDispatcher(acceso);
      dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

