/**
 * Created by pavel on 06.07.16.
 */


function remove_fields(link) {
    $(link).prev("input[type=hidden]").val("true");
    $(link).closest(".fields").remove();
}

function add_fields(link, association, content, table_name) {
    var new_id = (parseInt($("." + table_name + " tr:visible:last td:first ").text()) + 1);
    new_id = new_id || 1;
    var table = "#" + table_name;
    var regexp = new RegExp("new_" + association, "g");
    $(table).children('#' + table_name + '_body').append(content.replace(regexp, new_id));
    off_on($(table).find(".fields:last"));
}


function add_item_fields(link, association, content, table_name) {
    if ($("." + table_name).children(".item_content").length >= 12)
        return;
    
    var new_id = (parseInt($("." + table_name + " .item_content:last ").attr('data-target')) + 1);
    new_id = new_id || 1;
    var table = "." + table_name;
    $(table).append(content);
    $(table).children(".modal:last").attr("id", new_id);
    $(table).children(".item_content:last").attr("data-target", new_id);
    off_on($(table).find(".fields:last"));
    item_click();
}

function item_click() {
    $(".item_content").click(function () {
        var id = $(this).attr("data-target");
        $("#" + id).modal();
    });
}

function off_on(clazz) {
    $(".item_content").off();
    // $(clazz).slider("destroy");
    slider(clazz);
    item_click();

    // навешивать обработчики(если они будут) при добавлении полей
}

function slider(clazz) {
    (clazz == undefined ? $(".slider") : $(clazz).find(".slider")).slider({
        min: 1,
        max: 50,
        step: 1,
        value: [10, 25],
        handle: 'custom'
    });

}
