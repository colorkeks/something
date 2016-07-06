/**
 * Created by pavel on 06.07.16.
 */


function remove_fields(link) {
    $(link).prev("input[type=hidden]").val("true");
    $(link).closest(".fields").remove();
    off_on();
}

function add_fields(link, association, content, table_name) {
    var new_id = (parseInt($("." + table_name + " tr:visible:last td:first ").text()) + 1);
    new_id = new_id || 1;
    var regexp = new RegExp("new_" + association, "g");
    $('#' + table_name).children('#' + table_name + '_body').append(content.replace(regexp, new_id));
    off_on(table_name);
}

function off_on(table_name) {
    // навешивать обработчики(если они будут) при добавлении полей
}