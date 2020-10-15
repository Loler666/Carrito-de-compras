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

/**
 *
 * @author Emma
 */
public class Registrar extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String nombre=request.getParameter("nombre");
        String usuario=request.getParameter("usuario");
        String contraseña=request.getParameter("password");
        String corre=request.getParameter("correo");
        String lista=request.getParameter("corre");
            switch(lista){
                case "1": lista="@gmail.com"; break;
                case "2":lista="@outlook.com"; break;
                case "3": lista="@hotmail.com"; break;
                case "4":lista="@zoho"; break;
            }
            String correo=corre+lista;
            String telefono=request.getParameter("tel");
            int tel;
            tel=Integer.parseInt(telefono);
            Registrarse co = new Registrarse();
            VerificarUsuario ci=new VerificarUsuario();
            if(ci.verificar(usuario)){
                request.getRequestDispatcher("RegistroUsers.jsp").include(request, response);
                out.println("<h1>El Usuario ingresado ya existe</h1>");
                 System.out.print("<label>NO existe usuario</label>");
            }else if(co.registrar(nombre,usuario,contraseña,correo,tel)){
                response.sendRedirect("IniciarSesion.jsp");
            }else{
                response.sendRedirect("RegistroUsers.jsp");
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
