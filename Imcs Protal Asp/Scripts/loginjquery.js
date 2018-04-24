
$(document).ready(function () {
$("#Button_LogIn").click(function () {

    var counter = 1;
    var emailid = $('#emailid').val();
    var password = $('#password').val();
    var emailregex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    var passwordregex = /^(?=.*\d).{6,15}$/;


    if (!emailid.match(emailregex) || emailid.length == 0) {
        $('#error_email').text(" Please Enter Valid Email in the format abc@gmail.com");
        counter = 0;

    }

    if (!password.match(passwordregex) || password.length == 0) {
        $('#error_pwd').text(" Please Enter Valid Password between 6-15 length with atleast a letter, a number ");
        counter = 0;
    }

    if (counter == 1) {
        $('#error_email').text("");
        $('#error_pwd').text("");
        Button_LogIn_Click();
    }

    });


$("#Button_CancelLogIn").click(function () {
    $('#emailid').val("");
    $('#password').val("");
    $('#error_email').text("");
    $('#error_pwd').text("");
});


$('#emailid').blur(function () {

    $('#error_email').text("");

});

$('#password').blur(function () {

    $('#error_pwd').text("");

});
});


function Button_LogIn_Click() {
    var Params = {

        Email: $("#emailid").val(),
        Password: $("#password").val()


    };


    $.ajax({
        type: "POST",
        url: "LoginPage.aspx/validateUser_Click",
        data: JSON.stringify({ usersInfo: Params }),
        contentType: "application/json; charset-utf-8",
        dataType: "json",
        success: function (data, status) {

            if ((data.d) == 1) {
                window.location = "AdminPage.aspx";
            }
            else if ((data.d) == 2) {
                window.location = "TrainerPage.aspx";
            }

            else if ((data.d) == 3) {
                window.location = "StudentPage.aspx";
            }

            else {
                $('#error_login').text("No such email and password exists in the database");
                $('#emailid').focus();
            }

        },
        error: function (request, status, error) {


        }

    });


}




$(document).ready(function () {
    //alert('ready')
    $.ajax({
        url: 'LoginPage.aspx/GetBestStudentFaculty',
        method: 'post',
        contentType: 'application/json',
        data: '',
        dataType: 'json',
        success: function (data) {
            //alert(data.d)
            $("#lbl_SID").text(data.d.SID);
            $("#lbl_SFName").text(data.d.SFirstName);
            $("#lbl_SLname").text(data.d.SLastName);

            $("#lbl_FID").text(data.d.FID);
            $("#lbl_FFName").text(data.d.FFirstName);
            $("#lbl_FLName").text(data.d.FLastName);
        },
        error: function (error) {
            alert('error');
        }
    });
});
