<%-- 
    Document   : indexusuario
    Created on : 6/04/2017, 12:30:34 PM
    Author     : Emma
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String usuario = "";
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
--%>

<html>
    <head>
        <title>Examen</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="estilos.css">
         <script src="http://code.jquery.com/jquery-latest.js"></script>
         <script src="jquery-3.2.1.js"></script>
	<script src="header.js"></script>
        <link href="leastjs2.2.0/src/css/least.min.css" rel="stylesheet" />            
            <script src="http://code.jquery.com/jquery-latest.js" defer="defer"></script>            
            <script src="leastjs2.2.0/src/js/least.min.js" defer="defer"></script>            
            <script src="leastjs2.2.0/src/js/jquery.lazyload.min.js" defer="defer"></script>
            <meta name="description" content="least.js 2 - Random and Responsive HiDPI jQuery Gallery based on HTML5 and CSS3">        
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">        
        <link href="leastjs2.2.0/src/css/least.min.css" rel="stylesheet" />
        <script type="text/javascript">
                        $(document).ready(function(){
                $('#gallery').least();
            });
        </script>

        <link href="leastjs2.2.0/src/css/least.min.css" rel="stylesheet" />        
        <script src="http://code.jquery.com/jquery-latest.js" defer="defer"></script>
        <!-- least.js JS-file -->
        <script src="leastjs2.2.0/src/js/least.min.js" defer="defer"></script>
        <!-- Lazyload JS-file -->
        <script src="leastjs2.2.0/src/js/jquery.lazyload.min.js" defer="defer"></script>
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
                        <br><br><br><br><br><br><br>
                <center><h1>Te Mostramos Nuestro Catalogo de Anillos</h1>
                    </div><br><br><br><br>           
                    
                    <section id="least">

                    <div class="least-preview"></div>


                    <ul class="least-gallery">                
                        <li>
                            <a href="SinPiedra.jsp" title="Anillos sin piedra"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/sin.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="ConPiedra.jsp" title="Anillos con piedra"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/pie.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="Compromiso.jsp" title="Anillos de Compromiso"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/comp.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                    </ul>

                </section>
                <br><br>                                            


            </body>
        </html>
        <%
        //HttpSession sesion = request.getSession(false);
        //if( sesion != null ) {
        //Esto invalida la sesion no seas chato
        //sesion.invalidate();
        //}
        %>

