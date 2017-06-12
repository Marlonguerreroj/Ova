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
                if(data === "true"){
                    location.reload();
                }else if(data === "false"){
                    
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
    });

}

