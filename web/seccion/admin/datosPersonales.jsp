<section id="cont" class="content">
    <div class="box box-primary">
        <div class="box-header" >
            <i class="fa fa-user"></i>
            <h3 class="box-title" >Datos Personales</h3>
        </div>
        <div class="box-body no-padding clearfix">
            <div class="col-md-3">
                <div class="text-center margin">
                    <img src="${persona.imagen}" class="user-image img-circle img-thumbnail" alt="User Image" style="max-width: 200px;max-height: 200px;">    
                </div>
            </div>
            <div class="col-md-9">
                <div class="table-responsive">
                    <table class="table table-hover table-striped table-condensed table-bordered">                        
                        <tbody>
                            <tr>
                                <th>Código</th>
                                <td>${persona.codigo}</td>
                            </tr>
                            <tr>
                                <th>Nombres</th>
                                <td>${persona.nombre}</td>
                            </tr>
                            <tr>
                                <th>Apellidos</th>
                                <td>${persona.apellido}</td>
                            </tr>
                            <tr>
                                <th>Celular</th>
                                <td>${persona.celular}</td>
                            </tr>
                            <tr>
                                <th>Correo Electrónico</th>
                                <td>${persona.correo}</td>
                            </tr>          
                        </tbody>
                    </table>
                </div>        
            </div>        
        </div>
        <div class="box-footer no-padding">
            <!-- Button trigger modal -->
            <div class="clearfix">
                <div class="">
                    <a type="button"  class="btn btn-flat btn-primary pull-right margin" data-toggle="modal" data-target="#myModalRestablecerClave">
                        <i class="fa fa-lock"></i>&nbsp; Restablecer mi contraseña
                    </a>
                    <button type="button" onclick="redirect('actDatos.jsp')" class="btn btn-flat btn-primary pull-right margin" data-toggle="modal" data-target="#myModalActualizacionDatos">
                        <i class="fa fa-pencil-square-o"></i> Actualizar datos de contacto
                    </button>
                </div>
            </div>
        </div>
    </div>

</section>
<form id="actContra" class="form-horizontal">
    <div class="modal  fade" id="myModalRestablecerClave" tabindex="-1" role="dialog" aria-labelledby="Actualización datos de contacto" style="display: none;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <i class="fa fa-lock"></i> Restablecimiento de clave personal
                    </h4>
                </div>
                <div id="bodyM" class="modal-body"> 
                    <div class="clearfix">
                        <div id="divaCont" class="form-group col-md-12">
                            <label>Contraseña Actual</label>
                            <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="aCont" name="aCont" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix">
                        <div id="divnCont" class="form-group col-md-12">
                            <label>Contraseña Nueva</label>
                            <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" id="nCont" name="nCont" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix">
                        <div id="divn2Cont" class="form-group col-md-12">
                            <label>Confirmar Contraseña Nueva</label>
                            <input type="password" data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Ingresa una combinación de al menos seis caracteres" disabled="" id="n2Cont" name="n2Cont" class="form-control">
                            <input type="hidden" name="changePass" value="true">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-default pull-left" data-dismiss="modal">Cerrar</a>
                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-paper-plane"></i> Restablecer
                    </button>
                </div>            
            </div>
        </div>
    </div>
</form>