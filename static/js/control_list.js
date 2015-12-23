$(function() {
    init_list_page();


    $('button[name=btn_list_add]').click(function() {
        var btnid = $(this).attr('id');
        var id = btnid.substr(btnid.lastIndexOf("_") + 1);
        add_one_question(id);

    });

    $('button[name=btn_list_remove]').click(function() {
        var btnid = $(this).attr('id');
        var id = btnid.substr(btnid.lastIndexOf("_") + 1);
        remove_one_question(id);

    });

    $('button[name=btn_list_edit]').click(function() {
        var btnid = $(this).attr('id');
        var id = btnid.substr(btnid.lastIndexOf("_") + 1);
        $("#question_edit_id").val(id);
        $("#question_edit").val($("#span_list_question_" + id).text());

    });

    $('#btn_list_question_save_change').click(function(){
        update_one_question($("#question_edit_id").val(), $("#question_edit").val());
    });


});