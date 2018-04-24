function btnSubmit_Click()
{
    debugger;
    var AsgData = {
        AsgID: $("#lblAID").text(),
        AsgLink: $("#tbALink").val()
    };

    alert(AsgData.AsgID);

    $.ajax({
        type: "POST",
        url: "Assignments.aspx/btnSubmit_Click",
        data: JSON.stringify({ objSInfo: AsgData }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) { alert(data.d); },
        error: function (request, status, error) { alert(request.responseText); }
    });
    
}