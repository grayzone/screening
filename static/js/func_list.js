function new_question_item(groupid, questionid, content, badge) {
    var component = '<li class="list-group-item"><div class="input-group"><span class="badge">' + badge + '</span><span id="span_list_question_' + questionid + '">' + content + '</span><span class="input-group-btn"><button name="btn_list_edit" id="btn_list_edit_' + questionid +
        '" class="btn btn-default" data-toggle="modal" data-target="#patientmodal">Edit</button></span><span class="input-group-btn"><button name="btn_list_remove" id="btn_list_remove_' + questionid + '"class="btn btn-default">Remove</buton></span></div></li>';
    $("#ul_list_" + groupid).append(component);
}


function add_one_question(groupid) {
    var content = $("#question_list_" + groupid).val();
    if (content.length == 0) {
        return;
    }
    $.ajax({
        type: "POST",
        async: false,
        url: "/insertquestion",
        data: {
            "groupid": groupid,
            "content": content
        },
        success: function(r) {
            location.reload();
        }
    });
}

function update_one_question(questionid, content) {
    $.ajax({
        type: "POST",
        async: false,
        url: "/updatequestion",
        data: {
            "questionid": questionid,
            "content": content
        },
        success: function(r) {
            location.reload();
        }
    });
}


function remove_one_question(id) {
    $.ajax({
        type: "POST",
        async: false,
        url: "/removequestion",
        data: {
            "questionid": id,
        },
        success: function(r) {
            location.reload();
   //         alert(r);
        }
    });
}




function init_list_page() {
    var questions = get_question_list();
    if (questions != null) {
        $.each(questions, function(index, value) {
            var questionid = value[0];
            var groupid = value[1];
            var content = value[2];
            new_question_item(groupid, questionid, content, 0);
        });
    }

}