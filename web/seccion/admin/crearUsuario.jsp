
<section id="cont" class="content">


    <div class="box box-danger">
        <div class="box-header" >
            <h3 class="box-title" >Crear Usuario</h3>
        </div>
        <div class="box-body">
            <form id="registrarForm" class="form-horizontal">
                <div class="row">
                    <div id="divCodigo" class="col-md-2">
                        <label for="codigo">Código</label>
                        <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cuál es tu código?" id="codigo" type="number" name="codigo" class="form-control" >
                    </div>
                    <div id="divNombre" class="col-md-5">
                        <label for="nombre">Nombre</label>
                        <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cómo te llamas?" id="nombre" name="nombre" class="form-control" >
                    </div>
                    <div id="divApellido" class="col-md-5">
                        <label for="apellido">Apellido</label>
                        <input data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cómo te llamas?" id="apellido" name="apellido" class="form-control" >
                    </div>

                </div>
                <div style="padding-top: 10px" class="row">

                    <div class="col-md-2">
                        <label for="tipo">Tipo de usuario</label>
                        <select id="tipo" name="tipo"  class="form-control">
                            <option selected value="1">Administrador</option>
                            <option value="2">Docente</option>
                        </select>
                    </div>
                    <div id="divContrasena" class="col-md-5">
                        <label for="contrasena">Contraseña</label>
                        <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="contrasena" name="contrasena" class="form-control" >
                    </div>
                    <div id="divContrasena2" class="col-md-5">
                        <label for="contrasena2">Confirmar contraseña</label>
                        <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="contrasena2" disabled name="contrasena2" class="form-control" >
                    </div>
                </div>
                <div class="row" style="padding-top: 10px">
                    <div class="col-md-2">
                        <label for="celular">Número de celular</label>
                        <input id="celular" name="celular" class="form-control">
                    </div>
                    <div id="divCorreo" class="col-md-5">
                        <label for="correo">Correo electrónico</label>
                        <input data-toggle="tooltip" data-placement="bottom" data-trigger="focus" title="Ingresa una dirección de correo electrónico válida" id="correo" name="correo" class="form-control">
                    </div>
                    <div id="divCorreo2" class="col-md-5">
                        <label for="correo2">Confirmar correo electrónico</label>
                        <input autocomplete="false" data-toggle="tooltip" disabled data-placement="bottom" data-trigger="focus" title="Ingresa una dirección de correo electrónico válida" id="correo2" name="correo2" class="form-control" >
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

</section>
