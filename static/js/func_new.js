function add_question_into_section(groupid, questionid, content) {
    var component = '<li class="list-group-item"><div class="row"><label class="control-label  col-xs-10" for="input_question_' + questionid + '">' + content + '</label><div class="col-xs-2"><div class="btn-group" data-toggle="buttons"><label class="btn btn-default"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_yes" value="1">Yes</label><label class="btn btn-default active"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_no" value="0" checked="checked">No</label></div></div></div></li>';
    $("#ul_new_" + groupid).append(component);
}

function display_screening_section(groupid) {
    init_question_section(groupid);
    $('#divscreening' + groupid).show();
}



function get_question_result(questionid) {
    var result = $('input:radio[name=' + 'inlineRadioOptions_' + questionid + ']:checked').val();
    return result;
}

function get_all_answers_from_new_page(){
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