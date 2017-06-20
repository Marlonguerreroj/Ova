<section id="cont" class="content">
    <div class="box box-primary">
        <div class="box-header" >
            <h3 class="box-title" >Crear Actividad</h3>
        </div>
        <div class="box-body">
            <form id="formActivi" class="form-horizontal">
                <div class="row">
                    <div class="col-md-6">
                        <label>Tema</label>
                        <select data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Seleccione un tema" id="selTemas" name="selTemas" class="form-control">
                            <option value="">Seleccione</option>
                        </select>
                        <div style="padding-top: 10px">
                            <label>Respuesta</label>
                            <select name="selRes" class="form-control">
                                <option value="A">Opción 1</option>
                                <option value="B">Opción 2</option>
                                <option value="C">Opción 3</option>
                                <option value="D">Opción 4</option>
                            </select>
                        </div>
                    </div>
                    <div id="divpregunta" class="col-md-6">
                        <label>Pregunta</label>
                        <textarea data-toggle="tooltip" data-placement="top" data-trigger="focus" title="¿Cual es tu pregunta?" name="pregunta" id="pregunta" class="form-control" rows="3" placeholder="Texto ..."></textarea>
                    </div>
                </div>
                <div  class="row" style="padding-top: 10px">
                    <div id="divopc1" class="col-md-6">
                        <label>Opción 1</label>
                        <textarea data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Digite la opción 1" name="opc1" id="opc1" class="form-control" rows="3" placeholder="Texto ..."></textarea>
                    </div>
                    <div id="divopc2" class="col-md-6">
                        <label>Opción 2</label>
                        <textarea data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Digite la opción 2" name="opc2" id="opc2" class="form-control" rows="3" placeholder="Texto ..."></textarea>
                    </div>
                </div>
                <div class="row" style="padding-top: 10px">
                    <div id="divopc3" class="col-md-6">
                        <label>Opción 3</label>
                        <textarea data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Digite la opción 3" name="opc3" id="opc3" class="form-control" rows="3" placeholder="Texto ..."></textarea>
                    </div>
                    <div id="divopc4" class="col-md-6">
                        <label>Opción 4</label>
                        <textarea data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Digite la opción 4" name="opc4" id="opc4" class="form-control" rows="3" placeholder="Texto ..."></textarea>
                        <input name="regPreg" hidden="true" value="true">
                    </div>
                </div>
                <div style="padding-top: 20px" class="row">
                    <div class="text-center">
                        <button class="btn btn-primary">Registrar Pregunta</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
