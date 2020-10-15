/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;
import Controlador.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno
 */
public class InicioSesionU extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        
       String usuario=request.getParameter("usuario");
       String contraseña=request.getParameter("password"); 
               //Parametros de el login
       
       InicioSesion co= new InicioSesion(); //instancias de los metodos       
        //InicioSesion ci= new InicioSesion().autenticacion(usuario, contraseña);
       co=co.autenticaciones(usuario, contraseña);
      // ci.autenticacion(usuario, contraseña);
       
       if(co!=null){ //logica negada!
           //verificamos que el usuario exista y sea correco
           
           //vamos a crear la sesion!
            HttpSession sesion=request.getSession(true);
            sesion.setAttribute("usuario", co);
         
                 HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("usuario",usuario);
               
                HttpSession sesiona=request.getSession(true);
                sesiona.setAttribute("password", co);
         
                 HttpSession sesionOkas = request.getSession();
                sesionOkas.setAttribute("password",contraseña);  
                // vamos a checar el privilegio de este tipo
                InicioSesion ci= new InicioSesion();
                //ci.autenticacion(usuario);
                //ci.getIdusu();
                
             if(co.getPrivilegio()==1){
                //El usuario tiene el privilegio de cliente
                response.sendRedirect("indexusuario.jsp");
        
            }else{
                //El usuario tiene el privilegio de empleado de la empresa
                response.sendRedirect("IndexusuarioAdmon.jsp");
            }
        }else{
            //El usuario no existe o clave incorrecta
            response.sendRedirect("error.jsp");   
        }
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
