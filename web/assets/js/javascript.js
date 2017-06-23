/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#rem").bind("click", function () {
        $("#remp").empty();
        $("#remp").load("herencia01.jsp");
        $("#rem").blur();

    });

});

function anadirPregunta(tema) {
    $.ajax({
        type: "GET",
        url: "../Actividad",
        data: {lstPreg: "true", tema: tema},
        success: function (data) {
            var i = 0;
            var array = new Array();
            var xx = 4;
            if (tema == 'Mecanismos') {
                xx = 10;
            }
            if (tema == 'Jdbc') {
                xx = 10;
            }
            while (i < xx) {
                var x = Math.floor(Math.random() * (data.length - 0)) + 0;
                function calc(element) {
                    return element === x;
                }
                if (array.findIndex(calc) < 0) {
                    array[i] = x;
                    i++;
                }
            }
            i = 0;
            var xy = 4;
            if (tema == 'Mecanismos') {
                xy = 10;
            }
            if (tema == 'Jdbc') {
                xy = 10;
            }
            while (i < xy) {
                var lbla = "#lblP" + (+i + 1) + "a";
                var lblb = "#lblP" + (+i + 1) + "b";
                var lblc = "#lblP" + (+i + 1) + "c";
                var lbld = "#lblP" + (+i + 1) + "d";
                var ra = "#p" + (+i + 1) + "a";
                var rb = "#p" + (+i + 1) + "b";
                var rc = "#p" + (+i + 1) + "c";
                var rd = "#p" + (+i + 1) + "d";
                var divc = "#divp" + (i + 1) + "c";
                var divd = "#divp" + (i + 1) + "d";
                $("#divp" + (i + 1)).prop("hidden", false);
                $("#p" + (i + 1)).append(data[array[i]].nombre);
                $(lbla).append(data[array[i]].opcion1);
                $(lblb).append(data[array[i]].opcion2);
                if (data[array[i]].opcion3 === "-") {
                    $(divc).prop("hidden", true);
                    $(divd).prop("hidden", true);
                }
                $(lblc).append(data[array[i]].opcion3);
                $(lbld).append(data[array[i]].opcion4);
                $("#iP" + (i + 1)).val(data[array[i]].respuesta);

                $(ra).val(data[array[i]].opcion1);
                $(rb).val(data[array[i]].opcion2);
                $(rc).val(data[array[i]].opcion3);
                $(rd).val(data[array[i]].opcion4);

                i++;
            }
        },
        error: function (data) {

        }
    });
}

function calificar(ex) {
    $("#calificar").bind("click", function () {
        var porcentaje = 0;
        var a = $("#iP1").val().toLowerCase();
        var b = $("#iP2").val().toLowerCase();
        var c = $("#iP3").val().toLowerCase();
        var d = $("#iP4").val().toLowerCase();
        var e = $("#iP5").val().toLowerCase();
        var f = $("#iP6").val().toLowerCase();
        var g = $("#iP7").val().toLowerCase();
        var h = $("#iP8").val().toLowerCase();
        var i = $("#iP9").val().toLowerCase();
        var j = $("#iP10").val().toLowerCase()
        if ($("#p1" + a).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p2" + b).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p3" + c).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p4" + d).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p5" + e).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p6" + f).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p7" + g).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p8" + h).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p9" + i).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        if ($("#p10" + j).is(':checked')) {
            porcentaje = porcentaje + 10;
        }
        $("#remp").empty();
        if (ex == 'Ex1') {
            $("#remp").empty();
            $("#remp").load('jdbc.jsp', function () {
                $.ajax({
                    type: "GET",
                    url: "../Control",
                    data: {insEx01: "true", porcentaje: porcentaje},
                    success: function (data) {
                        if (data == 'true') {
                            asd(porcentaje);
                        }
                    },
                    error: function (data) {

                    }
                });

            });
        } else if (ex == 'Ex2') {
            $("#remp").empty();
            $("#remp").load('herencia00.jsp', function () {
                $.ajax({
                    type: "GET",
                    url: "../Control",
                    data: {insEx02: "true", porcentaje: porcentaje},
                    success: function (data) {
                        if (data == 'true') {
                            asd(porcentaje);
                        }
                    },
                    error: function (data) {

                    }
                });

            });
        }

    });

}

function asd(porcentaje) {
    $("#jdSec").css("padding-top", "3em");
    $("#jdSec").prepend('<div class="alert alert-success"><strong>Calificaci\u00F3n obtenida:  </strong>' + porcentaje + '% </div>');

}

function comprobarRespuestas(tipo) {
    $("#comprobar").bind("click", function () {
        var a = $("#iP1").val().toLowerCase();
        var b = $("#iP2").val().toLowerCase();
        var c = $("#iP3").val().toLowerCase();
        var d = $("#iP4").val().toLowerCase();
        if (tipo == 'Examen') {
            var e = $("#iP5").val().toLowerCase();
            var f = $("#iP6").val().toLowerCase();
            var g = $("#iP7").val().toLowerCase();
            var h = $("#iP8").val().toLowerCase();
            var i = $("#iP9").val().toLowerCase();
            var j = $("#iP10").val().toLowerCase();
            $("#lblP5" + e).css("color", "green");
            if ($("#true5").length === 0) {
                $('#divp5' + e).append('<span id="true5" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }
            $("#lblP6" + f).css("color", "green");
            if ($("#true6").length === 0) {
                $('#divp6' + f).append('<span id="true6" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }
            $("#lblP7" + g).css("color", "green");
            if ($("#true7").length === 0) {
                $('#divp7' + g).append('<span id="true7" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }
            $("#lblP8" + h).css("color", "green");
            if ($("#true8").length === 0) {
                $('#divp8' + h).append('<span id="true8" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }
            $("#lblP9" + i).css("color", "green");
            if ($("#true9").length === 0) {
                $('#divp9' + i).append('<span id="true9" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }
            $("#lblP10" + j).css("color", "green");
            if ($("#true10").length === 0) {
                $('#divp10' + j).append('<span id="true10" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
            }

        }

        $("#lblP1" + a).css("color", "green");
        if ($("#true").length === 0) {
            $('#divp1' + a).append('<span id="true" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
        }
        $("#lblP2" + b).css("color", "green");
        if ($("#true2").length === 0) {
            $('#divp2' + b).append('<span id="true2" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
        }
        $("#lblP3" + c).css("color", "green");
        if ($("#true3").length === 0) {
            $('#divp3' + c).append('<span id="true3" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
        }
        $("#lblP4" + d).css("color", "green");
        if ($("#true4").length === 0) {
            $('#divp4' + d).append('<span id="true4" style="color:green;font-size:1.5em" class="fa fa-check-circle-o"></span>');
        }
        $("#comprobar").blur();
    });
}

function add() {
    $("#actForm").bind("submit", function () {
        var form = $("#actForm")[0];
        var formData = new FormData(form);
        $.ajax({
            type: "POST",
            url: "../Control",
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
        if (("#actForm").length > 0) {
            add();
        }
        if (url === 'config.jsp') {
            addActualizarC();
        } else if (url === 'ActH01.jsp') {
            anadirPregunta("H01");
            comprobarRespuestas();
        } else if (url === 'ActH02.jsp') {
            anadirPregunta("H02");
            comprobarRespuestas();
        } else if (url === 'ActH03.jsp') {
            anadirPregunta("H03");
            comprobarRespuestas();
        } else if (url === 'ActH04.jsp') {
            anadirPregunta("H04");
            comprobarRespuestas();
        } else if (url === 'ActH05.jsp') {
            anadirPregunta("H05");
            comprobarRespuestas();
        } else if (url === 'ActH06.jsp') {
            anadirPregunta("H06");
            comprobarRespuestas();
        } else if (url === 'ActI01.jsp') {
            anadirPregunta("I01");
            comprobarRespuestas();
        } else if (url === 'ActCru.jsp') {
            cru();
        } else if (url === 'ActJdbc.jsp') {
            anadirPregunta("JDBC00");
            comprobarRespuestas();
        } else if (url === 'ActJdbc_7.jsp') {
            anadirPregunta("JDBC07");
            comprobarRespuestas();
        } else if (url === 'Examen00.jsp') {
            anadirPregunta("Mecanismos");
            calificar("Ex1");
            comprobarRespuestas("Examen");
        } else if (url === 'Examen01.jsp') {
            anadirPregunta("Jdbc");
            calificar("Ex2");
            comprobarRespuestas("Examen");
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
                url: "../Control",
                data: $("#actContra").serialize(),
                success: function (data) {
                    if (data === "true") {
                        $("#actContra").trigger("reset");
                        if ($("#msg").length > 0) {
                            $("#msg").remove();
                        }
                        $("#bodyM").prepend('<div id="msg"><h4 style="color:green"><i class="icon fa fa-ban"></i> Exito!</h4><p style="color:green"> Tu contrase\u00F1a se ha actualizado.</p></div>');

                    } else if (data === "false") {
                        if ($("#msg").length > 0) {
                            $("#msg").remove();
                        }
                        $("#bodyM").prepend('<div id="msg"><h4 style="color:#F56A6A"><i class="icon fa fa-ban"></i> Error!</h4> <p style="color:#F56A6A"> La contrase\u00F1a actual no coincide.</p></div>');
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

