$(function() {
    var patienttable = $('#patient').DataTable({
        "stateSave": true,
        "fnRowCallback": function(nRow, aData, iDIsplayIndex, iDisplayIndexFull) {
            switch (aData[5]) {
                case "0":
                    $(nRow).addClass("success");
                    break;
                case "1":
                case "2":
                    $(nRow).addClass("info");
                    break;
                case "3A":
                case "3B":
                case "3C":
                    $(nRow).addClass("warning");
                    break;
                case "4A":
                case "4B":
                    $(nRow).addClass("danger");
                    break;

            }
        },
        "ajax": {
            "url": "/getpatients",
            "dataSrc": ''
        },
        "columns": [{
            "data": 0,
             "searchable": false
        }, {
            "data": 1,
            "searchable": false
        }, {
            "data": 2,
            "searchable": false
        }, {
            "data": 3,
            "searchable": false
        }, {
            "data": 4,
            "searchable": false
        }, {
            "data": 5
        }, {
            "data": null,
            "searchable": false,
            "defaultContent": "<button  class='btn btn-link'>More</button>"
        }]

    });

    patienttable.column(0).visible(false);

    $('#patient tbody').on('click', 'button', function() {
        var pdata = patienttable.row($(this).parents('tr')).data();
        $.cookie("patientid", pdata[0]);

        window.location.href = "/patient";
    });
});