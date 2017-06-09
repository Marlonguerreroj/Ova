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

function redirect(url) {
    $("#remp").empty();
    $("#remp").load(url);
    $("#rem").blur();
}

