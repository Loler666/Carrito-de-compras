<%@page import="Servlet.ConsultaCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@page session="true" %>
<%
   String usuario ="";
   HttpSession sesionOkas = request.getSession();   
    sesionOkas.getAttribute("usuario");
   HttpSession sesionOk = request.getSession();
   if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="IniciarSesion.jsp">
    <jsp:param name="error" value="Primero inicia Sesion"/>
</jsp:forward>
<%
   }else {
       usuario = (String)sesionOk.getAttribute("user");
   }
%>

 <%                       
        Vector<ConsultarCarrito> vecPro=new ConsultarCarrito().autenticacion(usuario);
    %>
<html>
    <head>
        <title>Anillo</title>
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
                        <img src="img/logo.png" height="100px" width="100px">LGD
                         
                    </div>
                            
                        <nav>                            
                             
				
                                <a href="Catalogo.jsp">Catalogo</a>
                                <a href="#">Mi Carrito</a>
                                
                                <a href="CerrarSesion">Cerrar Sesion</a>
                        </nav>
                     </div>                                    
            </header>
            <div>            
            </div><br><br><br><br><br><br><br><br>
    <div class="wrapper">
        <center> <h1>Este es tu carrito y los productos que tienes en el</h1></center><%  String q=""+session.getAttribute("usuario");
        session.getAttribute("usuario").toString();
        %>
        
        <br><br>           
        <% 
        ConsultarCarrito co = new ConsultarCarrito();
         co.autenticacion(session.getAttribute("usuario").toString());
         
            
         
        %>
        <table border="3" width="100%" ALIGN="CENTER">
            
                <tr>
                    <td width="25%" align="center"> METAL</td>
                    <td width="25%" align="center">PIEDRA</td>
                    <td width="25%" align="center">PRECIO</td>
                </tr>
                <%   for( ConsultarCarrito pro:vecPro){
                %>
            <tr>
            
            <td><%=pro.getMetal()%></td>
            <td><%=pro.getPiedra()%></td>
            <td><%=pro.getPrecio()%></td>
          </tr>
          <%
                    }
         
            %>
            </table>
    </div>
    </body>
</html>
<%
//HttpSession sesion = request.getSession(false);
//if( sesion != null ) {
//Esto invalida la sesion no seas chato
//sesion.invalidate();
//}
%>

