$(function() {
    var patienttable = $('#patient').DataTable({
        stateSave: true,
        "ajax": {
            "url": "/getpatients",
            "dataSrc": ''
        },
        columns: [{
            data: 0
        }, {
            data: 1
        }, {
            data: 2
        }, {
            data: 3
        }, {
            data: 4
        }, {
            data: 5
        }, {
            "data": null,
            "defaultContent": "<button  class='btn btn-link'>More</button>"
        }]

    });

    $('#patient tbody').on('click', 'button', function() {
        var pdata = patienttable.row($(this).parents('tr')).data();
        $.cookie("patientid", pdata[0]);

        window.location.href = "/patient";
    });
});