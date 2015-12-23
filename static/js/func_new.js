function add_question_into_section(groupid, questionid, content) {
    var component = '<li class="list-group-item"><div class="row"><label class="control-label  col-xs-10" for="input_question_' + questionid + '">' + content + '</label><div class="col-xs-2"><div class="btn-group" data-toggle="buttons"><label class="btn btn-default"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_yes" value="1">Yes</label><label class="btn btn-default active"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_no" value="0" checked="checked">No</label></div></div></div></li>';
    $("#ul_new_" + groupid).append(component);
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


function display_screening_section(groupid) {
    init_screening_section(groupid);
    $('#divscreening' + groupid).show();
}

function init_screening_section(groupid) {
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

function get_question_result(questionid) {
    var result = $('input:radio[name=' + 'inlineRadioOptions_' + questionid + ']:checked').val();
    return result;
}

function get_all_answers(){
	var result = {};
	var questions = get_question_list();
    if (questions != null) {
        $.each(questions, function(index, value) {
            var questionid = value[0];
            var answer = get_question_result(questionid);
            result[questionid] = answer;
        });
    }
    return result;
}

function save_patient_info(){
    var result = null;
    $.ajax({
        type: "POST",
        async: false,
        url: "/insertpatient",
        data: {
            "name": $("#iname").val(),
            "age": $("#iage").val(),
            "gender": $("#sgender").val(),
            "city": $("#icity").val(),
            "height": $("#iheight").val(),
            "weight": $("#iweight").val(),
        },
        success: function(r) {
            result = r;
        }
    });
    return result;
}


function save_patient_answers(patientid, answers){
	$.ajax({
        type: "POST",
        async: false,
        url: "/insertpatientanswer",
        data: {
            "patientid": patientid,
            "answers":answers
        },
        success: function(r) {
            result = r;
        }
    });


}