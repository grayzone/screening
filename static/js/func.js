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
