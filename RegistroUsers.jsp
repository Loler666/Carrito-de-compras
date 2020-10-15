<%-- 
    Document   : RegistroUsers
    Created on : 11/05/2017, 04:47:57 PM
    Author     : CECyT9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                var T= document.getElementById('nombre').value;
                var a= document.getElementById('usuario').value;
                var b=document.getElementById('correo').value;
                
                var d=document.getElementById('password').value;
                var e=document.getElementById('password2').value; 
                var q=document.getElementById('tel').value;
                if(a===""|| b==="" || d==="" || e==="" || d==="" || q==="" || T===""){
                    alert("Verifica que ningun campo esté vacío");
                    document.registro.action='RegistroUsers.jsp';
                }else if (d!==e){
                    alert("Veriica que las contraseñas sean iguales");
                    document.registro.action='RegistroUsers.jsp';
                }
                var c= document.getElementsById('corre').value;                
                switch(c){
                case "1": c="@gmail.com"; break;
                case "2":c="@outlook.com"; break;
                case "3": c="@hotmail.com"; break;
                case "4":c="@zoho"; break;
                }
            }
          function valida(e){
                    	tecla = (document.all) ? e.keyCode : e.which;

                    	//Tecla de retroceso para borrar, siempre la permite
                    	if (tecla==8){
	                        return true;
    	                }
                        
                    // Patron de entrada, en este caso solo acepta numeros
        	            patron =/[0-9]/;
            	        tecla_final = String.fromCharCode(tecla);
                	    return patron.test(tecla_final);
                	} 
                        function soloLetras(e){
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
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
            function Todos(e){
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz1234567890";
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
                            <a href="IniciarSesion.jsp">Inicia Sesion</a>
                        </nav>
                </div>
         </header>
        <div>        
            </div><br><br><br><br>
    <div class="wrapper">
        <div class="consultas">              
            <br><br>           
            <h1><b>Ingresa tus datos a continuaci&oacute;n</b></h1><br>
            <form name="registro" method="post" action="Registrar" autocomplete="off">
                Ingresa Tu Nombre<input type="text" id="nombre" name="nombre" onkeypress="return soloLetras(event)" maxlength="25"><br><br>
                Ingresa un Nickname<input type="text" id="usuario" name="usuario" onkeypress="return Todos(event)" maxlength="15"><br><br>
                Ingresa una contrase&ntilde;a<input type="password" id="password" maxlength="12" name="password" onkeypress="return Todos(event)"><br><br>
                Repite tu contrase&ntilde;a<input type="password" id="password2" maxlength="12" onkeypress="return Todos(event)"><br><br>   
                Ingresa tu Correo Electronico<input type="text" id="correo" name="correo" maxlength="10" onkeypress="return Todos(event)">@<select id="corre"
                                                                                                                                                        name="corre">
                    <option value="1">gmail.com</option>
                    <option value="2">outlook.com</option>
                    <option value="3">hotmail.com</option>
                    <option value="4">zoho.com</option>
                </select><br><br>               
                Ingresa tu numero telefonico<input type="text" id="tel" name="tel" maxlength="10" onkeypress="return valida(event)"><br><br> 
                <input type="submit" value="Registrar" onclick="validar()">
            </form> 
        </div>
    </div>
      
    </body>
</html>