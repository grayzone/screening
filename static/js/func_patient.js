function add_question_into_section(groupid, questionid, content) {
	var component = '<li class="list-group-item"><div class="row"><label class="control-label  col-xs-10" for="input_patient_question_' + questionid + '">' + content + '</label><div class="col-xs-2"><div class="btn-group" data-toggle="buttons"><label class="btn btn-default"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_yes" value="1">Yes</label><label class="btn btn-default active"><input type="radio" name="inlineRadioOptions_' + questionid + '" id="inlineradio_' + questionid + '_no" value="0" checked="checked" readonly>No</label></div></div></div></li>';
	$("#ul_patient_question_" + groupid).append(component);
}

function get_patient_info(patientid) {

	var result = null;
	$.ajax({
		type: "POST",
		async: false,
		url: "/getpatientbyid",
		data: {
			"patientid": patientid,
		},
		success: function(r) {
			result = r;
		}
	});
	return result;
}

function fill_patient_info(patientinfo) {
	$("#input_patient_name").val(patientinfo["Name"]);
	$("#input_patient_age").val(patientinfo["Age"]);
	$("#select_patient_gender").val(patientinfo["Gender"]);
	$("#input_patient_city").val(patientinfo["City"]);
	$("#input_patient_height").val(patientinfo["Height"]);
	$("#input_patient_weight").val(patientinfo["Weight"]);

}

function get_patient_latest_answers(patientid, questionid){
	var result = null;
	$.ajax({
		type: "POST",
		async: false,
		url: "/getlastestanswer",
		data: {
			"patientid": patientid,
			"questionid": questionid,
		},
		success: function(r) {
			result = r;
		}
	});
	return result;

}

function init_patient_page() {
	var patientid = $.cookie("patientid");
	var patientinfo = get_patient_info(patientid);
	fill_patient_info(patientinfo);

	// show question section
	for (var i = 1; i < 7; i++) {
		init_question_section(i);
	}

	// update the radio value
	var result = [];
	questionlist = get_question_list();
	if (questionlist != null) {
        $.each(questionlist, function(index, value) {
            var questionid = value[0];
            var answer = get_patient_latest_answers(patientid,questionid);
            result[questionid] = answer["Answer"];
        });
    }
    
}