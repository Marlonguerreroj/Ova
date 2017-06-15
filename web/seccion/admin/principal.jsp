<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:if test = "${persona == null}">
    <c:redirect url = "../../index.html"/>
</c:if>
<c:if test = "${persona.tipo.id == 3}">
    <c:redirect url = "../home.jsp"/>
</c:if>
<c:set var = "nom" value = "${persona.nombre}"/>
<c:set var = "ape" value = "${persona.apellido}"/>
<c:set var = "nom1" value = "${fn:split(nom, ' ')}" />
<c:set var = "ape1" value = "${fn:split(ape, ' ')}" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Config</title> 
        <link rel="shortcut icon" href="../../images/ico.ico">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="../../assetsAdmin/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../assetsAdmin/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../assetsAdmin/dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-red-light sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="../../index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>P</b>Lrn</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Poo</b>Learn</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${persona.imagen}" class="user-image" alt="User Image">
                                    <span class="hidden-xs">${nom1[0]} ${ape1[0]}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="${persona.imagen}" class="img-circle" alt="User Image">

                                        <p>
                                            ${nom1[0]} ${ape1[0]}
                                            <small>${persona.tipo.tipo}</small>
                                        </p>
                                    </li>

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Configuración</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="../../Control?out=true" class="btn btn-default btn-flat">Cerrar Sesión</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="../../Control?out=true" ><i class="fa fa-power-off"></i></a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="${persona.imagen}" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>${nom1[0]} ${ape1[0]}</p>
                        </div>
                    </div>

                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">NAVEGACIÓN PRINCIPAL</li>
                        <li>
                            <a onclick="redirect('listarEstudiantes.jsp')">
                                <i class="fa fa-users"></i> <span>Listar Estudiantes</span>
                            </a>
                        </li>
                        <li>
                            <a onclick="redirect('crearUsuario.jsp')">
                                <i class="fa fa-university"></i> <span>Crear Usuario</span>
                            </a>
                        </li>
                        <li>
                            <a onclick="redirect('crearActividades.jsp')">
                                <i class="fa fa-book"></i> <span>Crear Actividades</span>
                            </a>
                        </li>
                        <li>
                            <a href="../home.jsp">
                                <i class="fa fa-sign-in"></i> <span>Ir a Poolearn</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->
            <!-- Content Wrapper. Contains page content -->
            <div id="remp" class="content-wrapper">
                <!-- Content Header (Page header) -->
                
            </div>
            <!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>2017-I</b>
                </div>
                OVA desarrollado para el curso Informatica Educativa
            </footer>

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.2.3 -->
        <script src="../../assetsAdmin/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="../../assetsAdmin/bootstrap/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="../../assetsAdmin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../../assetsAdmin/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../../assetsAdmin/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../assetsAdmin/dist/js/demo.js"></script>
        <script src="../../assetsAdmin/dist/js/javascript.js"></script>
        <script src="../../js/javascript.js"></script>
    </body>
</html>
