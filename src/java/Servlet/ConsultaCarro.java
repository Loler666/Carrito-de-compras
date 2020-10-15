/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.*;

/**
 *
 * @author Isaac
 */
public class ConsultaCarro extends HttpServlet {

    private Connection con; //establece la conexión 
    private Statement set;  //se encarga de las sentecnias sql
    private ResultSet rs; //para realizar consultas
    
    public void init(ServletConfig cfg) throws ServletException{
        String URL = "jdbc:mysql:3306//localhost/carritoalexis"; //setraza la ruta de conexión
        String userName = "root";
        String password = "n0m3l0";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            URL = "jdbc:mysql://localhost/carritoalexis";
            
            con = DriverManager.getConnection(URL,userName,password);
            set = con.createStatement();
            
            System.out.println("Se ha conectado");
        }catch (Exception e){
            System.out.println("No se ha conectado");
        }
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        out.print("<html><head><title>Foro</title></head>");
        out.print("<body>");
        out.print("<h1>Comentarios</h1>");
        out.print("<table border=1 bordercolor='black'>");
        out.print("<tr><td><b>Usuario</b><td><b>Comentario" + "</b></td></tr>");
        out.print("<form name='back' action='index.html'><input type='submit' name='regresar' value='Regresar a Inicio'></form><br><br>");
        out.print("</body");
        out.print("</html>");
        
        try{
            String nombres;
            
            //int boleta;
            String usuario;
            String comentario;
            set = con.createStatement();
            rs = set.executeQuery("select metal,piedra,precio from seleccion inner join anillo on seleccion.idani=anillo.idani where idcar=(select idcar from carrito inner join usuario on carrito.idusu=usuario.idusu where nickname='alex123')");
            while(rs.next()){
                // = rs.getInt("bol_alu");
                nombres = rs.getString("metal");
                usuario = rs.getString("piedra");
                comentario = rs.getString("precio");
                
                
                
                out.println("<tr><td>" + nombres + "</td><td>" + usuario + "</td></td>" + comentario +"</td></tr>");
                
            }
            
            rs.close();
            set.close();
            
        } catch (Exception e){
            System.out.println("Inválido");
        }
    }
    
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        
        try{
            doPost(req, res);
        } catch (Exception e){}
    }
    
    public void destroy(){
        
        try{
            con.close();
        } catch (Exception e){}
        
        super.destroy();
    }
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConsultarAlumno</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<form name='pq' method='GET' action='index.html'>");
            out.println("Tu nombre es: <input type='text' name='piedad'> <br><br>");
            out.println("Tu edad es: <input type='text' name='porfavor'><br><br>");
            out.println("<input type='submit' name='puchame' value='puchame o si!'>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
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
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

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