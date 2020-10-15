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
   
             
%>


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
                <div>    <% String q=request.getParameter("usu");
                    %>               
                        <br><br><br><br><br><br><br>
                <center><h1>Te Mostramos Nuestro Catalogo de Anillos</h1><%=q%>
                    </div><br><br><br><br>           
                    
                    <section id="least">

                    <div class="least-preview"></div>


                    <ul class="least-gallery">                
                       
                        <li>
                            <a href="Anillo1.jsp" title="Oro c/Diamante" data-subtitle="$9000" data-caption="<strong>Bold text</strong> normal caption text">
                                <img src="img/img1.jpg" alt="Alt Image Text" height="200" />
                            </a>
                        </li>


                        <li>
                            <a href="Anillo2.jsp" title="Oro c/Rubi" data-subtitle="4500">
                                <img src="img/img2.jpg" alt="Alt Image Text"  height="200"/>
                            </a>
                        </li>


                        <li>
                            <a href="Anillo3.jsp" title="Plata c/Diama." data-subtitle="$7500">
                                <img src="img/img3.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>


                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="ORO" data-subtitle="$2000">
                                <img src="img/IMG5.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="ORO" data-subtitle="$1500">
                                <img src="img/img6.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img7.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        <li>
                            <a href="Anillo4.jsp" title="Plata c/Zafiro" data-subtitle="$5000">
                                <img src="img/img4.jpg" alt="Alt Image Text" height="200"/>
                            </a>
                        </li>
                        
                    </ul>

                </section>
                <br><br>                                            


            </body>
        </html>      

