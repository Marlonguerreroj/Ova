<section id="cont" class="content">
    <div class="box box-primary">
        <div class="box-header" >
            <i class="fa fa-user"></i>
            <h3 class="box-title" >Actualizar Datos Personales</h3>
        </div>
        <div class="box-body">
            <form id="actForm" enctype="multipart/form-data">
                <div class="row" style="padding-bottom: 10px">
                    <div class="col-lg-3 col-md-6 col-sm-8">
                        <div class="text-center margin">
                            <img src="${persona.imagen}" class="user-image img-circle img-thumbnail" alt="User Image" style="max-width: 200px;max-height: 200px;">    
                        </div>
                        <input href="#" name="file" id="file" type="file" value="Seleccionar foto"/>
                    </div>
                </div>

                <div class="row">

                    <div class="col-lg-2 col-md-6 col-sm-12">
                        <label for="codigo">Código</label>
                        <input class="form-control" type="text" disabled name="codigo" value="${persona.codigo}" id="codigo" />
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <label for="nombre">Nombre</label>
                        <input class="form-control" type="text" value="${persona.nombre}" name="nombre" id="nombre" />
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <label for="apellido">Apellido</label>
                        <input class="form-control" type="text" value="${persona.apellido}" name="apellido" id="apellido" />
                    </div> 
                    <div class="col-lg-2 col-md-6 col-sm-12">
                        <label for="apellido"># Celular</label>
                        <input class="form-control" type="text" value="${persona.celular}" name="celular" id="celular" />
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <label for="correo">Correo electrónico</label>
                        <input class="form-control" type="text" disabled name="correo" value="${persona.correo}" id="correo" />
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <label for="tUsuario">Tipo usuario</label>
                        <input class="form-control" type="text" value="${persona.tipo.tipo}" disabled id="tUsuario" />
                        <input hidden name="sendAct" value="true" />
                    </div>
                </div>
                <div class="text-center" style="padding-top:15px">
                    <a class="btn btn-default" onclick="location.reload()">Cancelar</a>
                    <button class="btn btn-primary">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</section>