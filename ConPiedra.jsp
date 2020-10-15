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
                <center><h1>Te Mostramos Nuestros Anillos Con Piedra</h1>
                    </div><br><br><br><br>           
                    
                    <section id="least">

                    <div class="least-preview"></div>


                    <ul class="least-gallery">                
                        <li>
                            <a href="orodia.jsp" title="Oro c/Diamante" data-subtitle="8,000"  data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/orodiamante.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="oroesme.jsp" title="Oro c/Esmeralda" data-subtitle="9,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/oroesme.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="orolapis.jsp" title="Oro c/Lapislazuli" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/orolapiz.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="ororubi.jsp" title="Oro c/Rubi" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororubi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="orozafi.jsp" title="Oro c/Zafiro" data-subtitle="15,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/orozafi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="pladiamante.jsp" title="Plata c/Diamante" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/pladiamante.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="plaesme.jsp" title="Plata c/Esmeralda" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/plaesme.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="plalapis.jsp" title="Plata c/Lapislazuli" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/plalapiz.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="plarubi.jsp" title="Plata c/Rubi" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/plarubi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="plazafi.jsp" title="Plata c/Zafiro" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/plazafi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="rosadiamante.jsp" title="Oro Rosa c/Diamante" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororosadiamante.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="rosaesme.jsp" title="Oro Rosa c/Esmeralda" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororosaesme.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="rosalapis.jsp" title="Oro Rosa c/Lapislazuli" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororosalapis.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="rosarubi.jsp" title="Oro Rosa c/Rubi" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororosarubi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="rosazafi.jsp" title="Oro Rosa c/Zafiro" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/ororosazafi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="platidiamante.jsp" title="Platino c/Diamante" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/platidiamante.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="platiesme.jsp" title="Platino c/Esmeralda" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/platiesme.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="platilapis.jsp" title="Platino c/Lapislazuli" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/platinlapis.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="platirubi.jsp" title="Platino c/Rubi" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/platirubi.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>
                        <li>
                            <a href="platizafi.jsp" title="Platino c/Zafiro" data-subtitle="11,000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/Piedra/platizafi.jpg" alt="Alt Image Text" height="200" />
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

