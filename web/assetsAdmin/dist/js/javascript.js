/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function redirect(url) {
    $("#remp").empty();
    $("#remp").load(url, function () {
        if (url === 'crearUsuario.jsp') {
            addRegister();
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
