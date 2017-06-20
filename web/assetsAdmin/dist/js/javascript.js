/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function addListPreg() {
    $("#formPreg").bind("submit", function () {
        if ($("#selTemas").val() === "") {
            $("#selTemas").focus();
            $("#selTemas").tooltip("show");
        } else {
            $.ajax({
                type: "GET",
                url: "../../Actividad",
                data: {lstPreg: "true", tema: $("#selTemas").val()},
                success: function (data) {
                    $("#tblPreg").prop("hidden", false);
                    $("#listAct > tbody").empty();
                    $.each(data, function (i, item) {
                        $('#listAct > tbody:last-child').append(
                                '<tr>'
                                + '<td>' + item.nombre + '</td>'
                                + '<td>' + item.opcion1 + '</td>'
                                + '<td>' + item.opcion2 + '</td>'
                                + '<td>' + item.opcion3 + '</td>'
                                + '<td>' + item.opcion4 + '</td>'
                                + '<td>' + item.respuesta + '</td>'
                                + '<td>' + item.tema.nombre + '</td>'
                                + '</tr>');
                    });
                },
                error: function (data) {

                }
            });
        }
        return false;
    });
}

function addActivi() {

    $("#formActivi").bind("submit", function () {
        if ($("#selTemas").val() === "") {
            $("#selTemas").focus();
            $("#selTemas").tooltip("show");
        } else if ($("#pregunta").val() === "") {
            $("#pregunta").focus();
            $("#pregunta").tooltip("show");
        } else if ($("#opc1").val() === "") {
            $("#opc1").focus();
            $("#opc1").tooltip("show");
        } else if ($("#opc2").val() === "") {
            $("#opc2").focus();
            $("#opc2").tooltip("show");
        } else if ($("#opc3").val() === "") {
            $("#opc3").focus();
            $("#opc3").tooltip("show");
        } else if ($("#opc4").val() === "") {
            $("#opc4").focus();
            $("#opc4").tooltip("show");
        } else {
            $.ajax({
                type: "POST",
                url: "../../Actividad",
                data: $("#formActivi").serialize(),
                success: function (data) {
                    if (data === "true") {
                        $("#formActivi").trigger("reset");
                        if ($("#divC").length > 0) {
                            $("#divC").remove();
                        }
                        $("#cont").prepend('<div id="divC" class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-check"></i> Exito!</h4> Se ha registrado tu pregunta</div>');
                    } else if (data === "false") {

                    }
                },
                error: function (data) {

                }
            });
        }
        return false;
    });

    $("#pregunta").focusout(function () {
        if ($("#pregunta").val() === "") {
            if ($("#spregunta").length === 0) {
                $("#divpregunta").addClass("has-error has-feedback");
                var e = '<span id="spregunta"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divpregunta").append(e);
                $("#pregunta").tooltip("destroy");
            }
        }
    });

    $("#pregunta").focus(function () {
        if ($("#pregunta").val() === "") {
            if ($("#spregunta").length > 0) {
                $("#spregunta").remove();
                $("#divpregunta").removeClass("has-error has-feedback");
                $("#pregunta").tooltip("show");
            }
        } else {
            $("#pregunta").tooltip("destroy");
        }
    });
    $("#opc1").focusout(function () {
        if ($("#opc1").val() === "") {
            if ($("#sopc1").length === 0) {
                $("#divopc1").addClass("has-error has-feedback");
                var e = '<span id="sopc1"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divopc1").append(e);
                $("#opc1").tooltip("destroy");
            }
        }
    });

    $("#opc1").focus(function () {
        if ($("#opc1").val() === "") {
            if ($("#sopc1").length > 0) {
                $("#sopc1").remove();
                $("#divopc1").removeClass("has-error has-feedback");
                $("#opc1").tooltip("show");
            }
        } else {
            $("#opc1").tooltip("destroy");
        }
    });
    $("#opc2").focusout(function () {
        if ($("#opc2").val() === "") {
            if ($("#sopc2").length === 0) {
                $("#divopc2").addClass("has-error has-feedback");
                var e = '<span id="sopc2"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divopc2").append(e);
                $("#opc2").tooltip("destroy");
            }
        }
    });

    $("#opc2").focus(function () {
        if ($("#opc2").val() === "") {
            if ($("#sopc2").length > 0) {
                $("#sopc2").remove();
                $("#divopc2").removeClass("has-error has-feedback");
                $("#opc2").tooltip("show");
            }
        } else {
            $("#opc2").tooltip("destroy");
        }
    });
    $("#opc3").focusout(function () {
        if ($("#opc3").val() === "") {
            if ($("#sopc3").length === 0) {
                $("#divopc3").addClass("has-error has-feedback");
                var e = '<span id="sopc3"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divopc3").append(e);
                $("#opc3").tooltip("destroy");
            }
        }
    });

    $("#opc3").focus(function () {
        if ($("#opc3").val() === "") {
            if ($("#sopc3").length > 0) {
                $("#sopc3").remove();
                $("#divopc3").removeClass("has-error has-feedback");
                $("#opc3").tooltip("show");
            }
        } else {
            $("#opc3").tooltip("destroy");
        }
    });
    $("#opc4").focusout(function () {
        if ($("#opc4").val() === "") {
            if ($("#sopc4").length === 0) {
                $("#divopc4").addClass("has-error has-feedback");
                var e = '<span id="sopc4"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divopc4").append(e);
                $("#opc4").tooltip("destroy");
            }
        }
    });

    $("#opc4").focus(function () {
        if ($("#opc4").val() === "") {
            if ($("#sopc4").length > 0) {
                $("#sopc4").remove();
                $("#divopc4").removeClass("has-error has-feedback");
                $("#opc4").tooltip("show");
            }
        } else {
            $("#opc4").tooltip("destroy");
        }
    });
}

function addActualizarC() {
    $("#actContra").bind("submit", function () {
        if ($("#aCont").val() === "" || $("#aCont").val().length < 6) {
            $("#aCont").focus();
            $("#aCont").tooltip("show");
        } else if ($("#nCont").val() === "" || $("#nCont").val().length < 6) {
            $("#nCont").focus();
            $("#nCont").tooltip("show");
        } else if ($("#n2Cont").val() === "" || $("#n2Cont").val().length < 6) {
            $("#n2Cont").focus();
            $("#n2Cont").tooltip("show");
        } else if ($("#n2Cont").val() !== $("#nCont").val()) {
            $("#n2Cont").prop("title", "Tus combinaciones no coinciden");
            $("#n2Cont").focus();
            $("#n2Cont").tooltip("show");
        } else {
            $.ajax({
                type: "POST",
                url: "../../Control",
                data: $("#actContra").serialize(),
                success: function (data) {
                    if (data === "true") {
                        $("#actContra").trigger("reset");
                        $("#cont").prepend('<div class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-ban"></i> Exito!</h4> Tu contrase\u00F1a se ha actualizado. </div>');
                        $('#myModalRestablecerClave').modal('toggle');

                    } else if (data === "false") {
                        $("#bodyM").prepend('<div class="alert alert-danger alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-ban"></i> Error!</h4> La contrase\u00F1a actual no coincide. </div>');
                        $("#actContra").trigger("reset");
                    }
                },
                error: function (data) {

                }
            });
        }
        return false;
    });

    $("#n2Cont").focusout(function () {
        if ($("#n2Cont").val() === "" || $("#n2Cont").val().length < 6 || $("#n2Cont").val() !== $("#nCont").val()) {
            if ($("#sn2Cont").length === 0) {
                $("#divn2Cont").addClass("has-error has-feedback");
                var e = '<span id="sn2Cont"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divn2Cont").append(e);
                $("#n2Cont").tooltip("destroy");
                if ($("#n2Cont").val() !== $("#nCont").val() && $("#n2Cont").val().length > 6) {
                    $("#n2Cont").prop("title", "Tus combinaciones no coinciden");
                } else {
                    $("#n2Cont").prop("title", "Ingresa una combinaci\u00F3n de al menos seis caracteres");
                }
            }
        }
    });

    $("#n2Cont").focus(function () {
        if ($("#n2Cont").val() === "" || $("#n2Cont").val().length < 6 || $("#n2Cont").val() !== $("#nCont").val()) {
            if ($("#sn2Cont").length > 0) {
                $("#sn2Cont").remove();
                $("#divn2Cont").removeClass("has-error has-feedback");
                $("#n2Cont").tooltip("show");
            }
        } else {
            $("#n2Cont").tooltip("destroy");
        }
    });

    $("#nCont").focusout(function () {
        if ($("#nCont").val() === "" || $("#nCont").val().length < 6) {
            if ($("#snCont").length === 0) {
                $("#divnCont").addClass("has-error has-feedback");
                var e = '<span id="snCont"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divnCont").append(e);
                $("#nCont").tooltip("destroy");
                $("#n2Cont").prop("disabled", true);
                $("#n2Cont").val("");
            }
        } else {
            $("#n2Cont").prop("disabled", false);
            $("#n2Cont").focus();
        }
    });

    $("#nCont").focus(function () {
        if ($("#nCont").val() === "" || $("#nCont").val().length < 6) {
            if ($("#snCont").length > 0) {
                $("#snCont").remove();
                $("#divnCont").removeClass("has-error has-feedback");
                $("#nCont").tooltip("show");
            }
        } else {
            $("#nCont").tooltip("destroy");
        }
    });

    $("#aCont").focusout(function () {
        if ($("#aCont").val() === "" || $("#aCont").val().length < 6) {
            if ($("#saCont").length === 0) {
                $("#divaCont").addClass("has-error has-feedback");
                var e = '<span id="saCont"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divaCont").append(e);
                $("#aCont").tooltip("destroy");
            }
        } else {
        }
    });

    $("#aCont").focus(function () {
        if ($("#aCont").val() === "" || $("#aCont").val().length < 6) {
            if ($("#saCont").length > 0) {
                $("#saCont").remove();
                $("#divaCont").removeClass("has-error has-feedback");
                $("#aCont").tooltip("show");
            }
        } else {
            $("#aCont").tooltip("destroy");
        }
    });
}

function add() {
    $("#actForm").bind("submit", function () {
        var form = $("#actForm")[0];
        var formData = new FormData(form);
        $.ajax({
            type: "POST",
            url: "../../Control",
            data: formData,
            enctype: 'multipart/form-data',
            contentType: false,
            processData: false,
            cache: false,
            success: function (data) {
                if (data === "true") {
                    location.reload();
                } else if (data === "false") {

                }
            },
            error: function (data) {

            }
        });
        return false;
    });
}
function redirect(url) {
    $("#remp").empty();
    $("#remp").load(url, function () {
        if (url === 'crearUsuario.jsp') {
            addRegister();
        } else if (url === 'listarEstudiantes.jsp') {
            $.getJSON("../../Control", {lstPer: "true"})
                    .done(function (data) {
                        var x = 0, y = 0, z = 0;
                        $.each(data, function (i, item) {
                            if ($('#listEst').length > 0 && item.tipo.id === 3) {
                                x++;
                                $('#listEst > tbody:last-child').append(
                                        '<tr>'
                                        + '<td>' + (x) + '</td>'
                                        + '<td>' + item.codigo + '</td>'
                                        + '<td>' + item.nombre + '</td>'
                                        + '<td>' + item.apellido + '</td>'
                                        + '<td>' + item.correo + '</td>'
                                        + '<td>' + item.celular + '</td>'
                                        + '</tr>');
                            }
                            if ($('#listAdm').length > 0 && item.tipo.id === 1) {
                                y++;
                                $('#listAdm > tbody:last-child').append(
                                        '<tr>'
                                        + '<td>' + (y) + '</td>'
                                        + '<td>' + item.codigo + '</td>'
                                        + '<td>' + item.nombre + '</td>'
                                        + '<td>' + item.apellido + '</td>'
                                        + '<td>' + item.correo + '</td>'
                                        + '<td>' + item.celular + '</td>'
                                        + '</tr>');
                            }
                            if ($('#listDoc').length > 0 && item.tipo.id === 2) {
                                z++;
                                $('#listDoc > tbody:last-child').append(
                                        '<tr>'
                                        + '<td>' + (z) + '</td>'
                                        + '<td>' + item.codigo + '</td>'
                                        + '<td>' + item.nombre + '</td>'
                                        + '<td>' + item.apellido + '</td>'
                                        + '<td>' + item.correo + '</td>'
                                        + '<td>' + item.celular + '</td>'
                                        + '</tr>');
                            }

                        });
                    })
                    .fail(function (jqxhr, textStatus, error) {
                    });
        } else if (url === 'actDatos.jsp') {
            add();
        } else if (url === 'datosPersonales.jsp') {
            addActualizarC();
        } else if (url === 'crearActividades.jsp') {
            addActivi();
            $.getJSON("../../Actividad", {lstTema: "true"})
                    .done(function (data) {
                        $.each(data, function (i, item) {
                            $('#selTemas').append($('<option>', {
                                value: item.id,
                                text: item.nombre
                            }));
                        });
                    })
                    .fail(function (jqxhr, textStatus, error) {
                    });
        } else if (url === 'listarActividades.jsp') {
            addListPreg();
            $.getJSON("../../Actividad", {lstTema: "true"})
                    .done(function (data) {
                        $.each(data, function (i, item) {
                            $('#selTemas').append($('<option>', {
                                value: item.id,
                                text: item.nombre
                            }));
                        });
                    })
                    .fail(function (jqxhr, textStatus, error) {
                    });
        }
    });
}

function addRegister() {
    $("#registrarForm").bind("submit", function () {
        if ($("#codigo").val() === "") {
            $("#codigo").focus();
            $("#codigo").tooltip("show");
        } else if ($("#nombre").val() === "") {
            $("#nombre").focus();
            $("#nombre").tooltip("show");
        } else if ($("#apellido").val() === "") {
            $("#apellido").focus();
            $("#apellido").tooltip("show");
        } else if ($("#contrasena").val() === "" || $("#contrasena").val().length < 6) {
            $("#contrasena").focus();
            $("#contrasena").tooltip("show");
        } else if ($("#contrasena2").val() === "" || $("#contrasena2").val().length < 6) {
            $("#contrasena2").focus();
            $("#contrasena2").tooltip("show");
        } else if ($("#contrasena2").val() !== $("#contrasena").val()) {
            $("#contraseña2").prop("title", "Tus combinaciones no coinciden");
            $("#contrasena2").focus();
            $("#contraseña2").tooltip("show");
        } else if (!validarEmail($("#correo").val())) {
            $("#correo").focus();
            $("#correo").tooltip("show");
        } else if (!validarEmail($("#correo2").val())) {
            $("#correo2").focus();
            $("#correo2").tooltip("show");
        } else if ($("#correo").val() !== $("#correo2").val()) {
            $("#correo2").prop("title", "Tus direcciones de correo no coinciden. Int\u00E9ntalo de nuevo");
            $("#correo2").focus();
            $("#correo2").tooltip("show");

        } else {
            $.ajax({
                type: "POST",
                url: "../../Control",
                data: $("#registrarForm").serialize(),
                success: function (data) {
                    if (data === "true") {
                        $("#registrarForm").trigger("reset");
                        $("#cont").prepend('<div id="alerts" class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-check"></i> Registro exitoso!</h4></div>');
                    } else if (data === "false") {
                        $("#cont").prepend('<div id="alerts" class="alert alert-danger alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-ban"></i> Registro fallido!</h4>Intenta con otro c\u00F3digo</div>');
                        $("#codigo").val("");
                        $("#codigo").focus();
                        $("#codigo").tooltip("show");
                        $("#correo").val("");
                        $("#contrasena").val("");
                        $("#contrasena2").val("");
                        $("#correo2").val("");
                        $("#correo2").prop("disabled", "true");
                    }
                },
                error: function (data) {
                    $("#cont").prepend('<div id="alerts" class="alert alert-danger alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> <h4><i class="icon fa fa-ban"></i> Registro fallido!</h4>Intenta con otro c\u00F3digo</div>');
                    $("#codigo").val("");
                    $("#codigo").focus();
                    $("#codigo").prop("type", "number");
                    $("#codigo").tooltip("show");
                }
            });
        }
        return false;
    });

    $("#contrasena2").focusout(function () {
        if ($("#contrasena2").val() === "" || $("#contrasena2").val().length < 6 || $("#contrasena2").val() !== $("#contrasena").val()) {
            if ($("#sContrasena2").length === 0) {
                $("#divContrasena2").addClass("has-error has-feedback");
                var e = '<span id="sContrasena2"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divContrasena2").append(e);
                $("#contrasena2").tooltip("destroy");
                if ($("#contrasena2").val() !== $("#contrasena").val() && $("#contrasena2").val().length > 6) {
                    $("#contrasena2").prop("title", "Tus combinaciones no coinciden");
                } else {
                    $("#contrasena2").prop("title", "Ingresa una combinaci\u00F3n de al menos seis caracteres");
                }
            }
        }
    });

    $("#contrasena2").focus(function () {
        if ($("#contrasena2").val() === "" || $("#contrasena2").val().length < 6 || $("#contrasena2").val() !== $("#contrasena").val()) {
            if ($("#sContrasena2").length > 0) {
                $("#sContrasena2").remove();
                $("#divContrasena2").removeClass("has-error has-feedback");
                $("#contrasena2").tooltip("show");
            }
        } else {
            $("#contrasena2").tooltip("destroy");
        }
    });

    $("#contrasena").focusout(function () {
        if ($("#contrasena").val() === "" || $("#contrasena").val().length < 6) {
            if ($("#sContrasena").length === 0) {
                $("#divContrasena").addClass("has-error has-feedback");
                var e = '<span id="sContrasena"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divContrasena").append(e);
                $("#contrasena").tooltip("destroy");
                $("#contrasena2").prop("disabled", true);
            }
        } else {
            $("#contrasena2").prop("disabled", false);
            $("#contrasena2").focus();
        }
    });

    $("#contrasena").focus(function () {
        if ($("#contrasena").val() === "" || $("#contrasena").val().length < 6) {
            if ($("#sContrasena").length > 0) {
                $("#sContrasena").remove();
                $("#divContrasena").removeClass("has-error has-feedback");
                $("#contrasena").tooltip("show");
            }
        } else {
            $("#contrasena").tooltip("destroy");
        }
    });

    $("#apellido").focusout(function () {
        if ($("#apellido").val() === "") {
            if ($("#sApellido").length === 0) {
                $("#divApellido").addClass("has-error has-feedback");
                var e = '<span id="sApellido"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divApellido").append(e);
                $("#apellido").tooltip("destroy");
            }
        }
    });

    $("#apellido").focus(function () {
        if ($("#apellido").val() === "") {
            if ($("#sApellido").length > 0) {
                $("#sApellido").remove();
                $("#divApellido").removeClass("has-error has-feedback");
                $("#apellido").tooltip("show");
            }
        } else {
            $("#apellido").tooltip("destroy");
        }
    });

    $("#nombre").focusout(function () {
        if ($("#nombre").val() === "") {
            if ($("#sNombre").length === 0) {
                $("#divNombre").addClass("has-error has-feedback");
                var e = '<span id="sNombre"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divNombre").append(e);
                $("#nombre").tooltip("destroy");
            }
        }
    });

    $("#nombre").focus(function () {
        if ($("#nombre").val() === "") {
            if ($("#sNombre").length > 0) {
                $("#sNombre").remove();
                $("#divNombre").removeClass("has-error has-feedback");
                $("#nombre").tooltip("show");
            }
        } else {
            $("#nombre").tooltip("destroy");
        }
    });

    $("#codigo").focusout(function () {
        if ($("#codigo").val() === "") {
            if ($("#sCodigo").length === 0) {
                $("#divCodigo").addClass("has-error has-feedback");
                var e = '<span id="sCodigo"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divCodigo").append(e);
                $("#codigo").tooltip("destroy");
            }
        }
    });

    $("#codigo").focus(function () {
        if ($("#codigo").val() === "") {
            if ($("#sCodigo").length > 0) {
                $("#sCodigo").remove();
                $("#divCodigo").removeClass("has-error has-feedback");
                $("#codigo").tooltip("show");
            }
        } else {
            $("#codigo").tooltip("destroy");
        }
    });

    $("#correo").focusout(function () {
        $("#correo").tooltip('hide');
        if (!validarEmail($("#correo").val())) {
            if ($("#sCorreo").length === 0) {
                $("#divCorreo").addClass("has-error has-feedback");
                var e = '<span id="sCorreo"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divCorreo").append(e);
                $('#correo').tooltip("destroy");
            }
        } else {
            $('#correo').tooltip("destroy");
            $("#correo2").prop("disabled", false);
            $("#correo2").focus();
        }

    });

    function validarEmail(valor) {
        if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)) {
            return true;
        } else {
            return false;
        }
    }

    $("#correo").focus(function () {
        if ($("#sCorreo").length > 0) {
            $("#sCorreo").remove();
            $("#divCorreo").removeClass("has-error has-feedback");
            $('#correo').tooltip("show");
        }
    });

    $("#correo2").focusout(function () {
        $("#correo2").tooltip('hide');
        if (!validarEmail($("#correo2").val()) || $("#correo").val() !== $("#correo2").val()) {
            if ($("#sCorreo2").length === 0) {
                $("#divCorreo2").addClass("has-error has-feedback");
                var e = '<span id="sCorreo2"  class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                $("#divCorreo2").append(e);
                $('#correo2').tooltip("destroy");
                $("#correo2").prop("title", "Ingresa una direcci\u00F3n de correo electr\u00F3nico v\u00E1lida");
                if ($("#correo").val() !== $("#correo2").val() && validarEmail($("#correo2").val())) {
                    $("#correo2").prop("title", "Tus direcciones de correo no coinciden. Int\u00E9ntalo de nuevo");
                }
            }
        } else {
            $('#correo2').tooltip("destroy");
            $("#correo2").prop("disabled", false);
        }
    });

    $("#correo2").focus(function () {
        if ($("#sCorreo2").length > 0) {
            $("#sCorreo2").remove();
            $("#divCorreo2").removeClass("has-error has-feedback");
            $('#correo2').tooltip("show");
        }

    });
}
