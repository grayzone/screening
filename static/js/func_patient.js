
function get_patient_info(patientid){
	
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

function fill_patient_info(patientinfo){
	$("#input_patient_name").val(patientinfo["Name"]);
	$("#input_patient_age").val(patientinfo["Age"]);
	$("#select_patient_gender").val(patientinfo["Gender"]);
	$("#input_patient_city").val(patientinfo["City"]);
	$("#input_patient_height").val(patientinfo["Height"]);
	$("#input_patient_weight").val(patientinfo["Weight"]);

}

function init_patient_page() {
	var patientid = $.cookie("patientid");
	var patientinfo = get_patient_info(patientid);
	fill_patient_info(patientinfo);




}