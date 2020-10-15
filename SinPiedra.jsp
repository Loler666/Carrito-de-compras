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
                <center><h1>Te Mostramos Nuestros Anillos Sin Piedra</h1>
                    </div><br><br><br><br>           
                    
                    <section id="least">

                    <div class="least-preview"></div>


                    <ul class="least-gallery">                
                        <li>
                            <a href="oro1.jsp" title="Oro"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oro1.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oro2.jsp" title="Oro"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oro2.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oro3.jsp" title="Oro"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oro3.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oro4.jsp" title="Oro"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oro4.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oro5.jsp" title="Oro"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oro5.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pla1.jsp" title="Plata"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/pla1.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pla2.jsp" title="Plata"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/pla2.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pla3.jsp" title="Plata"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/pla3.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pla4.jsp" title="Plata"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/pla4.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pla5.jsp" title="Plata"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/pla5.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="ororojo.jsp" title="Oro Rojo"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/orrojo.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oroplata.jsp" title="Oro con Plata y Oro Rojo"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/oropla.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oroblanco.jsp" title="Oro Blanco"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/blanco.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="combinado.jsp" title="Oro Blanco y Rojo"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/SinPiedra/blancoy.jpg" alt="Alt Image Text" height="200" />
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

