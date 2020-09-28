/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.User;


public class UserService {
    
    
    public UserService(){
    
    }

    public java.util.List<webservice.User> listar() {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listar();
    }

    public  String agregar(java.lang.String nombre, java.lang.String descripcion) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.agregar(nombre, descripcion);
    }

    public User listarID(int id) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarID(id);
    }

    public String actualizar(int id, java.lang.String nombre, java.lang.String descripcion) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.actualizar(id, nombre, descripcion);
    }

    public  User eliminar(int id) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.eliminar(id);
    }

    public  java.util.List<webservice.Factura> flistar() {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.flistar();
    }

 

 
    
    
}
