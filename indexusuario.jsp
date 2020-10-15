<%-- 
    Document   : indexusuario
    Created on : 6/04/2017, 12:30:34 PM
    Author     : Emma
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@page session="true" %>
<%-- validamos que la sesion exista --%>
<%    
     //instancias de los metodos  
    String contraseña= "";
    String usuario = ""; 
    HttpSession sesionOkas = request.getSession();   
    sesionOkas.getAttribute("usuario");
    HttpSession sesionOk = request.getSession();   
    if(sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="IniciarSesion.jsp">
    <jsp:param name="error" value="Primero inicia Sesion"/>
</jsp:forward>
<%
   }else {
       usuario = (String)sesionOk.getAttribute("usuario");
   }   
   session.setAttribute(usuario, new String());
             
%>
  <%
                       
        Vector<Idusu> vecPro=new Idusu().autenticacion(usuario);
    %>
<html>
    <head>
        <title>LGD</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="estilos.css">
         <script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="header.js"></script>
        <script type="text/javascript">
            
        </script>
    </head>
    <body  ondragstart="return false;" ondrop="return false;">
       <header class="header2">
                <div class="wrapper">
                    <div class="logo">
                        <img src="img/logo.png" height="100" width="100px">LGD
                         
                    </div>
                            
                        <nav>                            
                             
                          
 
                            <a href="Catalogo.jsp">Catalogo</a>
                                <a href="Micarrito.jsp">Mi Carrito</a>
                                
                                <a href="CerrarSesion">Cerrar Sesion</a>
                        </nav>
                     </div>                    
                
            </header>
            <div>            
            </div><br><br><br><br><br><br><br>
    <div class="wrapper">
        <h1>Bienvenido <%=usuario%></h1>   <%
            for(Idusu pro:vecPro){
          %> 
          <p>Nuestra empresa se dedica a realizar los mejores anillos y de la mejor calidad</p><%=pro.getIdusu()%> <%}%>
        <br><br>            
        <center>
            <input type="hidden" name="usu" value="<%=usuario%>">
            <img src="img/logo.png" height="300" width="200">
               
    </div>
    </body>
</html>

