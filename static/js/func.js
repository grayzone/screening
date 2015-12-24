function get_question_list() {
    var result = null;
    $.ajax({
        type: "GET",
        async: false,
        url: "/getquestions",
        data: {

        },
        success: function(r) {
            result = r;
        }
    });

    return result;
}


function get_question_list_by_group(groupid) {
    var result = null;
    $.ajax({
        type: "POST",
        async: false,
        url: "/getquestionsbygroup",
        data: {
            "groupid": groupid,
        },
        success: function(r) {
            result = r;
        }
    });

    return result;
}

function init_question_section(groupid) {
    var questions = get_question_list_by_group(groupid);
    if (questions != null) {
        $.each(questions, function(index, value) {
            var questionid = value[0];
            var groupid = value[1];
            var content = value[2];
            add_question_into_section(groupid, questionid, content);
        });
    }
}