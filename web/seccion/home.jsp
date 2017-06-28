<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test = "${persona == null}">
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
        <link rel="stylesheet" href="../assets/css/cru.css" />
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
        <link rel="shortcut icon" href="../images/ico.ico">
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
                        <h1 class="logo"><strong><c:out value="Bienvenido "/></strong><c:out value="${persona.nombre} ${persona.apellido}"/> </h1>
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
                            <li><strong>Mecanismo de Reutilización de Clases</strong></li>
                            <li>
                                <span class="opener">La Herencia en JAVA</span>
                                <ul>                                    
                                    <li><a onclick="redirect('herencia00.jsp')">Introducción</a></li>
                                    <li><a onclick="redirect('herencia01.jsp')">Herencia y Ocultamiento de la Información</a></li>
                                    <li><a onclick="redirect('herencia02.jsp')">Redefinición o sobre escritura de características</a></li>
                                    <li><a onclick="redirect('herencia03.jsp')">Herencia y creación, Polimorfismo</a></li>
                                    <li><a onclick="redirect('herencia04.jsp')">Herencia y Sistema de tipos</a></li>
                                    <li><a onclick="redirect('herencia05.jsp')">Ligadura dinámica</a></li>
                                    <li><a onclick="redirect('herencia06.jsp')">Clase Object y Clases abstractas</a></li>
                                </ul>
                            </li>
                            <li>
                                <span class="opener">Paquetes e Interfaces en JAVA</span>
                                <ul>                                    
                                    <li><a onclick="redirect('interface00.jsp')">Definición e Introducción Interfaces</a></li>
                                    <li><a onclick="redirect('interface01.jsp')">Implementación de Interface</a></li>
                                    <li><a onclick="redirect('interface02.jsp')">Aplicación</a></li>
                                </ul>
                            </li>

                            <li><strong>JDBC: Bases de Datos desde Java</strong></li>
                            <li><a onclick="redirect('jdbc.jsp')">Qué es JDBC</a></li>
                            <li><a onclick="redirect('jdbc_1.jsp')">JDBC Vs ODBC</a></li>
                            <li>
                                <span class="opener">Clases y métodos de JDBC</span>
                                <ul>
                                    <li><a onclick="redirect('jdbc_2.jsp')">Establecer Conexión</a></li>
                                    <li><a onclick="redirect('jdbc_3.jsp')">Crear Sentencia</a></li>
                                    <li><a onclick="redirect('jdbc_4.jsp')">Ejecutar Sentencia</a></li>
                                    <li><a onclick="redirect('jdbc_5.jsp')">Procesar Resultados</a></li>
                                    <li><a onclick="redirect('jdbc_6.jsp')">Finalizar Sentencia</a></li>
                                    <li><a onclick="redirect('jdbc_7.jsp')">Cerrar Conexión</a></li>
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
                                <a href="#" class="image"><img src="${persona.imagen}" alt="" /></a>
                            </article>
                            <ul class="contact">
                                <li class="fa-user"><c:out value="${persona.nombre} ${persona.apellido}" /></li>
                                <li class="fa-envelope-o"><c:out value="${persona.correo}"/></li>
                                    <c:if test = "${persona.tipo.id != 3}">
                                    <li class="fa-cog"><a href="admin/principal.jsp" class="button special fit small">Versión Admin</a> </li>
                                    </c:if>
                            </ul>
                        </div>
                        <ul class="text-center actions">
                            <li class=""><a href="#" onclick="redirect('config.jsp')" class="button">Configuración</a></li>
                        </ul>
                    </section>

                                    

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Poolearn</h2>
                        </header>
                        <p class="text-justify">Poorlearn es un objeto virtual de aprendizaje diseñado para fortalecer y facilitar el aprendizaje de los personas del Programa de Ingeniería de Sistemas de la Universidad Francisco de Paula Santander en el curso de Programación orientada a objetos II; El cual ofrecerá las unidades de: Mecanismos de reutilización y JDBC: Base de datos desde Java.</p>
                        <ul class="contact">
                            <li class="fa-envelope-o">Marlon Yesid Guerrero Jimenez<br>Marlonyesidgj@ufps.edu.co</li>
                            <li class="fa-envelope-o">Pedro Alexis Ruiz Martinez<br>Pedroalexisrm@ufps.edu.co</li>
                            <li class="fa-envelope-o">MSc. Jairo Alberto Fuentes Camargo<br>Fuentejairo@ufps.edu.co</li>

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
        <script src="../assets/js/crucigrama.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </body>
</html>
