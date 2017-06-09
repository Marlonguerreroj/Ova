<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test = "${estudiante == null}">
    <c:redirect url = "../index.html"/>
</c:if>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Home</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="../assets/css/main.css" />

        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <header id="header">
                        <h1 class="logo"><strong><c:out value="Bienvenido "/></strong><c:out value="${estudiante.nombre} ${estudiante.apellido}"/> </h1>
                        <ul class="icons">
                            <li><a style="font-size: 25px" href="../Control?out=true" class="icon fa-sign-out"></a></li>
                        </ul>
                    </header>

                    <div id="remp">
                        <jsp:include page="herencia00.jsp" />                  
                    </div>

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">



                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>Temas</h2>
                        </header>
                        <ul>
                            <li><strong>Mecanismo de Reutilizaci�n de Clases</strong></li>
                            <li>
                                <span class="opener">La Herencia en JAVA</span>
                                <ul>                                    
                                    <li><a onclick="redirect('herencia00.jsp')">Introducci�n</a></li>
                                    <li><a onclick="redirect('herencia01.jsp')">Herencia y Ocultamiento de la Informaci�n</a></li>
                                    <li><a onclick="redirect('herencia02.jsp')">Redefinici�n o sobre escritura de caracter�sticas</a></li>
                                    <li><a href="#">Herencia y creaci�n, Polimorfismo</a></li>
                                    <li><a href="#">Herencia y Sistema de tipos</a></li>
                                    <li><a href="#">Ligadura din�mica</a></li>
                                    <li><a href="#">Clase Object y Clases abstractas</a></li>
                                </ul>
                            </li>
                            <li>
                                <span class="opener">Paquetes e Interfaces en JAVA</span>
                                <ul>                                    
                                    <li><a href="#">Definici�n e Introducci�n Interfaces</a></li>
                                    <li><a href="#">Implementaci�n de Interface</a></li>
                                    <li><a href="#">Aplicaci�n</a></li>
                                </ul>
                            </li>

                            <li><strong>JDBC: Bases de Datos desde Java</strong></li>
                            <li><a href="#">Qu� es JDBC</a></li>
                            <li><a href="#">JDBC Vs ODBC</a></li>
                            <li>
                                <span class="opener">Clases y m�todos de JDBC</span>
                                <ul>
                                    <li><a href="#">Establecer Conexi�n</a></li>
                                    <li><a href="#">Crear Sentencia</a></li>
                                    <li><a href="#">Ejecutar Sentencia</a></li>
                                    <li><a href="#">Procesar Resultados</a></li>
                                    <li><a href="#">Finalizar Sentencia</a></li>
                                    <li><a href="#">Cerrar Conexi�n</a></li>
                                </ul>
                            </li>

                        </ul>
                    </nav>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Perfil</h2>
                        </header>
                        <div class="mini-posts">
                            <article>
                                <a href="#" class="image"><img src="../images/Foto-Perfil.jpg" alt="" /></a>
                            </article>
                            <ul class="contact">
                                <li class="fa-user"><c:out value="${estudiante.nombre} ${estudiante.apellido}" /></li>
                                <li class="fa-envelope-o"><c:out value="${estudiante.correo}"/></li>
                            </ul>
                        </div>
                        <ul class="text-center actions">
                            <li class=""><a href="#" class="button">Configuraci�n</a></li>
                        </ul>
                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Poolearn</h2>
                        </header>
                        <p class="text-justify">Poorlearn es un objeto virtual de aprendizaje dise�ado para fortalecer y facilitar el aprendizaje de los estudiantes del Programa de Ingenier�a de Sistemas de la Universidad Francisco de Paula Santander en el curso de Programaci�n orientada a objetos II; El cual ofrecer� las unidades de: Mecanismos de reutilizaci�n y JDBC: Base de datos desde Java.</p>
                        <ul class="contact">
                            <li class="fa-envelope-o">Marlon Yesid Guerrero Jimenez<br>Marlonyesidgj@ufps.edu.co</li>
                            <li class="fa-envelope-o">Cristian Camilo Arevalo Gutierrez<br>Cristiancamiloag@ufps.edu.co</li>
                            <li class="fa-envelope-o">MSc. Carmen Janeth Parada<br>Janethpc@ufps.edu.co</li>
                        </ul>
                    </section>

                    <!-- Footer -->
                    <footer id="footer">
                        <p class="copyright">Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                    </footer>

                </div>
            </div>

        </div>

        <!-- Scripts -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/skel.min.js"></script>
        <script src="../assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="../assets/js/main.js"></script>
        <script src="../assets/js/javascript.js"></script>

    </body>
</html>