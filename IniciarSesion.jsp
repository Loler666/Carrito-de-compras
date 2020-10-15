<%-- 
    Document   : Iniciar Sesion
    Created on : 6/04/2017, 12:48:10 AM
    Author     : Emma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Examen</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="estilos.css">
         <script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="header.js"></script>
        <script type="text/javascript">
            function validar(){
                var  a = document.getElementById('usuario').value;                                
                var d = document.getElementById('password').value;                ;                                
                if(a===""|| d===""){
                    alert("Verifica que ningun campo esté vacío");
                    document.inicair.action='IniciarSesion.jsp';
                }
            }
            function soloLetras(e){
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz0123456789";
                especiales = [8];

                tecla_especial = false
                for(var i in especiales){
                    if(key == especiales[i]){
                        tecla_especial = true;
                        break;
                    } 
                }

                if(letras.indexOf(tecla)==-1 && !tecla_especial)
                return false;
            }
        </script>
    </head>
    <body>
         <header class="header2">
                <div class="wrapper">
                    <div class="logo">
                        <img src="img/logo.png" height="100px" width="100px">LGD
                       
                        
                     </div>
                    
                        <nav>

                            <a href="index.jsp">Index</a>
                        </nav>
                </div>
         </header>
        <div>
       
            </div><br><br><br><br>
    <div class="wrapper">
        <div class="consultas">              
            <br><br>            
            <h1><b>Ingresa tus datos a continuación</b></h1><br>
            <form name="inicair" method="post" action="InicioSesionU" autocomplete="off">
                Ingresa tu Nombre de Usuario<input type="text" id="usuario" name="usuario" onkeypress="return soloLetras(event)" maxlength="10"><br><br>                
                Ingresa tu contraseña<input type="password" id="password" maxlength="12" name="password" onkeypress="return soloLetras(event)"><br><br>                
                <input type="submit" value="Iniciar Sesion" onclick="validar()">
            </form> 
        </div>
    </div>
      
    </body>
</html>