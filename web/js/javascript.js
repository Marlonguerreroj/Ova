$(document).ready(function () {
    if ($("#registrarForm").length > 0) {
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
                    url: "../Control",
                    data: $("#registrarForm").serialize(),
                    success: function (data) {
                        if (data === "true") {
                            $("#registrarForm").trigger("reset");
                            ingresar();
                        } else if (data === "false") {
                            $("#codigo").val("");
                            $("#codigo").focus();
                            $("#codigo").tooltip("show");
                            $("#correo").val("");
                            $("#correo2").val("");
                            $("#correo2").prop("disabled","true");
                        }
                    },
                    error: function (data) {
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
                    var e = '<span id="sContrasena2" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sContrasena" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sApellido" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sNombre" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sCodigo" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sCorreo" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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
                    var e = '<span id="sCorreo2" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
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

    function ingresar() {
        location.href = "../Control?go=true";
    }

    if ($("#formIniciarSesion").length > 0) {
        $("#formIniciarSesion").bind("submit", function () {
            if ($("#codigo").val() === "") {
                $("#codigo").focus();
                $("#codigo").tooltip("show");
            } else if ($("#contrasena").val() === "") {
                $("#contrasena").focus();
                $("#contrasena").tooltip("show");
            } else {
                $.ajax({
                    type: "POST",
                    url: "../Control",
                    data: $("#formIniciarSesion").serialize(),
                    success: function (data) {
                        if (data === "false") {
                            $("#contrasena").val("");
                            $("#codigo").tooltip("destroy");
                            $("#codigo").prop("title", "Datos Incorrectos");
                            $("#codigo").focus();
                            $("#codigo").tooltip("show");
                        } else if (data === "true") {
                            $("#formIniciarSesion").trigger("reset");
                            ingresar();
                        }
                    },
                    error: function (data) {
                    }
                });
            }
            return false;
        });

        $("#codigo").focusout(function () {
            if ($("#codigo").val() === "") {
                if ($("#sCodigo").length === 0) {
                    $("#divCodigo").addClass("has-error has-feedback");
                    var e = '<span id="sCodigo" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                    $("#divCodigo").append(e);
                    $("#codigo").tooltip("destroy");
                    $("#codigo").prop("title", "\u00BFCu\u00E1l es tu c\u00F3digo?");
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

        $("#contrasena").focusout(function () {
            if ($("#contrasena").val() === "") {
                if ($("#sContrasena").length === 0) {
                    $("#divContrasena").addClass("has-error has-feedback");
                    var e = '<span id="sContrasena" style="padding-top: 7px" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>';
                    $("#divContrasena").append(e);
                    $("#contrasena").tooltip("destroy");
                }
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

        function iniciarSesion() {
            location.href = "../Control?ini=true";
        }
    }

});
