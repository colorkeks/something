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
    var regexp = new RegExp("new_" + association, "g");
    $('#' + table_name).children('#' + table_name + '_body').append(content.replace(regexp, new_id));
    off_on(table_name);
}


function add_item_fields(link, association, content, table_name) {
    var new_id = (parseInt($("." + table_name + " .item_content:last ").attr('id')) + 1);
    new_id = new_id || 1;
    $('#' + table_name).append("<div class='item_content avatar' id='" + new_id + "'> " +
                                    "<div class='preview img-wrapper'></div>" +
                                    "<div class='item_fields hidden'>" + content + "</div>" +
                                "</div>");
    off_on(table_name);
}

function item_click() {
    $(".item_content").click(function () {
        var body = $(".item-modal-body");
        body.children().remove();
        var fields = $(this).children(".item_fields").clone().html();
        body.append(fields);
        $("#myModal").modal()
    });
}

function off_on(table_name) {
    $(".item_content").off();
    slider($("." + table_name).find(".slider").last());
    item_click();

    // навешивать обработчики(если они будут) при добавлении полей
}

function slider(name) {
    (name == undefined ? $(".slider") : $(name)).slider({
        min: 1,
        max: 50,
        step: 1,
        value: [10, 25],
        handle: 'custom'
    });

}
