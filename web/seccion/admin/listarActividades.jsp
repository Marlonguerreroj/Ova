<section id="cont" class="content">
    <div class="box box-primary">
        <div class="box-header" >
            <h3 class="box-title" >Listar Actividades</h3>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-md-6 ">
                    <label>Tema</label>
                    <form id="formPreg">
                        <div class="form-inline">
                            <select data-toggle="tooltip" data-placement="top" data-trigger="focus" title="Seleccione un tema" id="selTemas" name="selTemas" class="form-control">
                                <option value="">Seleccione</option>
                            </select>
                            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-12">
                    <div id="tblPreg" class="table-responsive" hidden>
                        <table id="listAct" class="table table-striped">
                            <thead><tr>
                                    <th>Nombre</th>
                                    <th>Opci�n 1</th>
                                    <th>Opci�n 2</th>
                                    <th>Opci�n 3</th>
                                    <th>Opci�n 4</th>
                                    <th>Respuesta</th>
                                    <th>Tema</th>
                                </tr>

                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
