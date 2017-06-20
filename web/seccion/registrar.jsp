<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test = "${persona != null}">
    <c:redirect url = "home.jsp"/>
</c:if>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Poolearn</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Ova programación orientada a objetos" />
        <meta name="keywords" content="Programacion,Ova,Ufps" />
        <meta name="author" content="Ing Sistemas - UFPS" />

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="../images/ico.ico">

        <!-- Google Webfonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

        <!-- Animate.css -->
        <link rel="stylesheet" href="../css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="../css/icomoon.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="../css/magnific-popup.css">
        <!-- Theme Style -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- Modernizr JS -->
        <script src="../js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <header id="fh5co-header" role="banner">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header"> 
                        <!-- Mobile Toggle Menu Button -->
                        <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle visible-xs-block" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
                        <a class="navbar-brand" href="../index.html">Poolearn</a>
                    </div>
                    <div id="fh5co-navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../index.html"><span>Inicio <span class="border"></span></span></a></li>
                            <li class="active"><a href="registrar.jsp"><span>Registrar <span class="border"></span></span></a></li>
                            <li><a href="iniciarSesion.jsp"><span>Iniciar Sesión <span class="border"></span></span></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- END .header -->

        <aside class="fh5co-page-heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="fh5co-page-heading-lead">
                            Crea una cuenta
                            <span class="fh5co-border"></span>
                        </h1>

                    </div>
                </div>
            </div>
        </aside>

        <div id="fh5co-main">

            <div class="container">
                <form id="registrarForm" class="form-horizontal">
                    <div class="row">
                        <div id="divCodigo" class="col-md-2">
                            <label for="codigo">Código</label>
                            <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cuál es tu código?" id="codigo" type="number" name="codigo" class="form-control input-lg" >
                        </div>
                        <div id="divNombre" class="col-md-5">
                            <label for="nombre">Nombre</label>
                            <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cómo te llamas?" id="nombre" name="nombre" class="form-control input-lg" >
                        </div>
                        <div id="divApellido" class="col-md-5">
                            <label for="apellido">Apellido</label>
                            <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cómo te llamas?" id="apellido" name="apellido" class="form-control input-lg" >
                        </div>

                    </div>
                    <div style="padding-top: 10px" class="row">

                        <div class="col-md-2">
                            <label for="tipo">Tipo de usuario</label>
                            <select id="tipo" disabled  class="form-control input-lg">
                                <option selected value="estudiante">Estudiante</option>
                            </select>
                            <input name="tipo" value="3" hidden>
                        </div>
                        <div id="divContrasena" class="col-md-5">
                            <label for="contrasena">Contraseña</label>
                            <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="contrasena" name="contrasena" class="form-control input-lg" >
                        </div>
                        <div id="divContrasena2" class="col-md-5">
                            <label for="contrasena2">Confirmar contraseña</label>
                            <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="contrasena2" disabled name="contrasena2" class="form-control input-lg" >
                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-2">
                            <label for="celular">Número de celular</label>
                            <input id="celular" name="celular" class="form-control input-lg">
                        </div>
                        <div id="divCorreo" class="col-md-5">
                            <label for="correo">Correo electrónico</label>
                            <input data-toggle="tooltip" data-placement="bottom" data-trigger="focus" title="Ingresa una dirección de correo electrónico válida" id="correo" name="correo" class="form-control input-lg">
                        </div>
                        <div id="divCorreo2" class="col-md-5">
                            <label for="correo2">Confirmar correo electrónico</label>
                            <input autocomplete="false" data-toggle="tooltip" disabled data-placement="bottom" data-trigger="focus" title="Ingresa una dirección de correo electrónico válida" id="correo2" name="correo2" class="form-control input-lg" >
                            <input hidden id="send" name="send" value="true">
                        </div>
                    </div>

                    <div style="padding-top: 20px" class="row">
                        <div class="text-center">
                            <button class="btn btn-primary">Crear cuenta</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="fh5co-spacer fh5co-spacer-lg"></div>

        <footer id="fh5co-footer">

            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="fh5co-footer-widget">
                            <h2 class="fh5co-footer-logo">Poolearn</h2>
                            <p class="text-justify">Poorlearn es un objeto virtual de aprendizaje diseñado para fortalecer y facilitar el aprendizaje de los estudiantes del Programa de Ingeniería de Sistemas de la Universidad Francisco de Paula Santander en el curso de Programación orientada a objetos II; El cual ofrecerá las unidades de: Mecanismos de reutilización y JDBC: Base de datos desde Java.  </p>
                        </div>
                        <div class="fh5co-footer-widget">
                            <div style="width: 300px;height: auto;" class="col-md-4 col-sm-6 col-xs-6 col-xxs-12"><img src="../images/sistemas.png" alt="" class="img-responsive"></div>
                            <div style="width: 100px;height: auto; padding-top: 5px" class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 "><img src="../images/ufps.jpg" alt="" class="img-responsive"></div>
                        </div>

                    </div>


                    <div class="visible-sm-block clearfix"></div>

                    <div class="col-md-3 col-sm-6">
                        <div class="fh5co-footer-widget top-level">
                            <h4 class="fh5co-footer-lead">Enlaces de Interés</h4>
                            <ul class="fh5co-list-check">
                                <li><a  target="_blank" href="https://ww2.ufps.edu.co/">Universidad Francisco de Paula Santander</a></li>
                                <li><a target="_blank" href="http://ingsistemas.ufps.edu.co/">Programa de Ingeniería de Sistemas</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="fh5co-footer-widget top-level">
                            <h4 class="fh5co-footer-lead ">Contactos</h4>
                            <ul class="fh5co-list-check">
                                <li>Marlon Yesid Guerrero Jimenez <br>Marlonyesidgj@ufps.edu.co</li>
                                <li>Pedro Alexis Ruiz Martinez<br>Pedroalexisrm@ufps.edu.co</li>
                                <li>MSc. Jairo Alberto Fuentes Camargo<br>Fuentejairo@ufps.edu.co</li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row fh5co-row-padded fh5co-copyright">
                    <div class="col-md-5">
                        <p><small>Designed by: <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a></small> </p>
                    </div>
                </div>
            </div>

        </footer>


        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="../js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- Owl carousel -->
        <script src="../js/owl.carousel.min.js"></script>
        <!-- Waypoints -->
        <script src="../js/jquery.waypoints.min.js"></script>
        <!-- Magnific Popup -->
        <script src="../js/jquery.magnific-popup.min.js"></script>
        <!-- Main JS -->
        <script src="../js/main.js"></script>
        <!-- Javascript JS -->
        <script src="../js/javascript.js"></script>

        <!--        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
                <script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>-->


    </body>
</html>
