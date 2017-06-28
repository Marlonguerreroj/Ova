<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<section style="padding-top: 2em">
    <header class="main">
        <h1>Actualizaci�n de los datos de usuario </h1>
    </header>
    <form id="actForm" enctype="multipart/form-data">
        <div class="row" style="padding-bottom: 10px">
            <div class="3u 6u(medium) 8u(small) mini-posts">
                <article>
                    <a class="image"><img src="${persona.imagen}" alt="" /></a>
                </article>
                <input href="#" name="file" id="file" type="file" value="Seleccionar foto"/>
            </div>
        </div>

        <div class="row">

            <div class="2u 6u(medium) 12u(small)">
                <label for="codigo">C�digo</label>
                <input type="text" disabled name="codigo" value="${persona.codigo}" id="codigo" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="nombre">Nombre</label>
                <input type="text" value="${persona.nombre}" name="nombre" id="nombre" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="apellido">Apellido</label>
                <input type="text" value="${persona.apellido}" name="apellido" id="apellido" />
            </div> 
            <div class="2u 6u(medium) 12u(small)">
                <label for="apellido"># Celular</label>
                <input type="text" value="${persona.celular}" name="celular" id="celular" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="correo">Correo electr�nico</label>
                <input type="text" disabled name="correo" value="${persona.correo}" id="correo" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="tUsuario">Tipo usuario</label>
                <input type="text" value="${persona.tipo.tipo}" disabled id="tUsuario" />
                <input hidden name="sendAct" value="true" />
            </div>
        </div>
        <div class="text-center" style="padding-top:15px">
            <a class="button" onclick="location.reload()">Cancelar</a>
            <a data-toggle="modal" data-target="#myModalRestablecerClave" class="button">Restablecer contrase�a</a>
            <a data-toggle="modal" data-target="#miProgreso" class="button">Mi progreso</a>
            <button class="button">Actualizar</button>
        </div>
    </form>
</section>


<form id="actContra" class="form-horizontal">
    <div class="modal  fade" id="myModalRestablecerClave" role="dialog" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">
                        <i class="fa fa-lock"></i> Restablecimiento de clave personal
                    </h4>
                </div>
                <div id="bodyM" class="modal-body"> 
                    <div class="clearfix">
                        <div id="divaCont" class="form-group col-md-12">
                            <label>Contrase�a Actual</label>
                            <input type="password" data-toggle="tooltip" data-placement="bottom" data-trigger="focus" title="Ingresa una combinaci�n de al menos seis caracteres" id="aCont" name="aCont" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix">
                        <div id="divnCont" class="form-group col-md-12">
                            <label>Contrase�a Nueva</label>
                            <input type="password" data-toggle="tooltip" data-placement="bottom" data-trigger="focus" title="Ingresa una combinaci�n de al menos seis caracteres" id="nCont" name="nCont" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix">
                        <div id="divn2Cont" class="form-group col-md-12">
                            <label>Confirmar Contrase�a Nueva</label>
                            <input type="password" data-toggle="tooltip" data-placement="bottom" data-trigger="focus" title="Ingresa una combinaci�n de al menos seis caracteres" disabled="" id="n2Cont" name="n2Cont" class="form-control">
                            <input type="hidden" name="changePass" value="true">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a type="button" class="button pull-left" data-dismiss="modal">Cerrar</a>
                    <button type="submit" class="button special">
                        Restablecer
                    </button>
                </div>            
            </div>
        </div>
    </div>
</form>

<!-- Modal -->
<div class="modal  fade" id="miProgreso" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    <i class="fa fa-tasks"></i> Mi Progreso
                </h4>
            </div>
            <div id="bodyM" class="modal-body"> 
                <div class="row">
                    <p>Mecanismos de Reutilizaci�n de clases:</p>
                    <p><strong>${persona.examen1}%</strong></p>
                </div>
                <div class="row">
                    <p>JDBC: Bases de Datos desde Java:</p>
                    <p><strong>${persona.examen2}%</strong></p>
                </div>
                <div class="row">
                    <p>Estado: </p>
                    <p><strong>
                            <c:choose>
                                <c:when test="${(persona.examen1 >= 60) && (persona.examen2 >= 60)}">
                                    Aprobado
                                </c:when>
                                <c:when test="${(persona.examen1 == 0) || (persona.examen2 == 0)}">
                                    Inconcluso
                                </c:when>
                                <c:when test="${(persona.examen1 < 60) || (persona.examen2 < 60)}">
                                    Reprobado
                                </c:when>
                                
                            </c:choose>
                        </strong></p>
                </div>
            </div>
            <div class="modal-footer">
                <a type="button" class="button pull-right" data-dismiss="modal">Cerrar</a>

            </div>            
        </div>
    </div>
</div>