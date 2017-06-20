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

function anadirPreguntaH01() {
    $.ajax({
        type: "GET",
        url: "../Actividad",
        data: {lstPreg: "true", tema: "H01"},
        success: function (data) {
            var i = 0;
            var array = new Array();
            while (i < 4) {
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
            while (i < 4) {
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

function anadirPreguntaH02() {
    $.ajax({
        type: "GET",
        url: "../Actividad",
        data: {lstPreg: "true", tema: "H02"},
        success: function (data) {
            var i = 0;
            var array = new Array();
            while (i < 4) {
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
            while (i < 4) {
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

function comprobarRespuestas() {
    $("#comprobar").bind("click", function () {
        var a = $("#iP1").val().toLowerCase();
        var b = $("#iP2").val().toLowerCase();
        var c = $("#iP3").val().toLowerCase();
        var d = $("#iP4").val().toLowerCase();

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
            anadirPreguntaH01();
            comprobarRespuestas();
        
        } else if (url === 'ActH02.jsp') {
            alert("ASD");
            anadirPreguntaH02();
            comprobarRespuestas();
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

