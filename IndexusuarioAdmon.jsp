<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String usuario = "";
   int privilegio=2;
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
<html>
    <head>
        <title>Examen</title>
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
                        <img src="img/logolbdc.png"  align="center"> 
                         
                    </div>
                            
                        <nav>                            
                             
				<a href="#">Eliminar Anillo c/Piedra</a>				
                                <a href="#">Admon</a>
                                <a href="">Añadir Anillo</a>
                                
                                <a href="CerrarSesion">Cerrar Sesion</a>
                        </nav>
                     </div>                    
                
            </header>
            <div>    
        <center><h1>Examen para PSW 4IV7</h1>
            </div><br><br><br><br>
    <div class="wrapper">
        <div class="consultas">
      
        </div>
        <br><br>            
        <center>
            
                    <img src="img/logo1.gif">
                
    </div>
    </body>
</html>
<%
HttpSession sesion = request.getSession(false);
if( sesion != null ) {
//Esto invalida la sesion no seas chato
sesion.invalidate();
}
%>

