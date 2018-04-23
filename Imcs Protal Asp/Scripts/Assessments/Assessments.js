function clientValidation_Click() {

    if ($.trim($("#DDLAssessMode").val()) == -1) {
        $("#DDLAssessMode").css({
            "border": "1px solid red",
            "background": "#FFCECE"
        });
    }
    else {
        $("#DDLAssessMode").css({
            "border": "",
            "background": ""
        });
    }
    var isValid = true;
    $('input[type="text"],input[type="file"]').each(function () {
        if ($.trim($(this).val()) == '' || $.trim($(this).val()) == -1) {
            isValid = false;
            $(this).css({
                "border": "1px solid red",
                "background": "#FFCECE"
            });
        }
        else {
            $(this).css({
                "border": "",
                "background": ""
            });
        }
    });
    if (isValid == false)
        return false;
    else { }

    // emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
}

$(document).ready(function () {
   
        //$("#txtAssessDate").datepicker();
    //$('#datetimepicker1').datetimepicker();

    $('#datetimepicker1').datetimepicker();

    $("#TxtAssessName").focusout(function () {
        clientValidation_Click();
    });
});


function CreateAssessmentClient() {
    debugger;
    var path = '/WebService1.asmx/GetData';
    var Assessdata = {
        name: $('#TxtAssessName').val(),
        mode: $('#DDLAssessMode').val(),
        date: $('#txtAssessDate').val(),
        link: $('#FileUploadLink').val(),
        marks: $('#TxtMarks').val()
    };
  
    $.ajax({
        type: "POST",
        url: "WebService1.asmx/HelloWorld",
        data:JSON.stringify({ objAssess: Assessdata }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) { alert(data.d); },
        error: function (request, status, error) { alert(request.responseText); }
    });
}


