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

/**
 *
 * @author jacob
 */
@WebServlet(name = "ControladorDetalleFactura", urlPatterns = {"/ControladorDetalleFactura"})
public class ControladorDetalleFactura extends HttpServlet {

     String addDF="AgregarDetalleFactura.jsp";
    String EditarDF="EditarDF.jsp";
    String index="ListarDtalleFactura.jsp";
    String editar1="ListarID.jsp";
      String ActualizarDF="ConsultarDetalle.jsp";
       String redirecionamamientoMF="MaestroFactura.jsp";
       String ListarDtalleFactura="ListarDtalleFactura.jsp";
    String acceso="";
    
    
    UserService detallefactura= new UserService();
    
    
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
      if(accion.equals("addDF")){
          acceso=addDF;
          
          
      
      
      }else
          if(accion.equals("Guardar")){
              String id_factura=request.getParameter("txtid_factura");
              String id_producto=request.getParameter("txtid_producto");
                 String cantidad=request.getParameter("txtcantidad");
              String precio=request.getParameter("txtprecio");
           
              
              detallefactura.agregardf_1(id_factura, id_producto, cantidad, precio);
                      
                      
            //  user.agregar(nombre, descripcion);
              acceso=redirecionamamientoMF;
              
          
          
          }
         else if(accion.equals("editar")){
          
          acceso=EditarDF;
          request.setAttribute("id_factura_detalle", request.getParameter("id"));
          
          }
    
      
   
      
          else if(accion.equals("ActualizarDF1")){
          
                int id_factura =Integer.parseInt(request.getParameter("txtid_factura"));
                  int id_producto =Integer.parseInt(request.getParameter("txtid_producto"));
                    String cantidad=request.getParameter("txtcantidad");
                 String precio=request.getParameter("txtprecio");
               
              
              int id =Integer.parseInt(request.getParameter("txtid"));
              detallefactura.actualizarDF1(id, id_factura, id_producto, cantidad, precio);
             // detallefactura.actualizarDF1(id, idFactura, idProducto, cantidad, precio)
              
             // user.actualizar(id, nombre, descripcion);
              acceso=ListarDtalleFactura;
              
          
          }
          else if (accion.equals("eliminar")){
          int id =Integer.parseInt(request.getParameter("id"));
          
          
          detallefactura.deleteDF(id);
        //  user.eliminar(id);
          acceso=ListarDtalleFactura;
          
          
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
