//function javaScriptValidation() {

//    var emailid = document.getElementById('emailid').value;
//    var passwords = document.getElementById('passwords').value;

//    if (emailid === "") {
//        document.getElementById('semailid').innerHTML = " *Please Enter Email";
//        return false;
//    }
//    if (emailid.indexOf('@') <= 0) {
//        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
//        return false;

//    }
//    if ((emailid.charAt(emailid.length - 4) !== '.') && (emailid.charAt(emailid.length - 3) !== '.')) {
//        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
//        return false;

//    }


//    if (passwords === "") {


//        document.getElementById('spassword').innerHTML = " *Please enter Password";
//        return false;
//    }
//    if ((passwords.length <= 5) || (passwords.length > 20)) {
//        document.getElementById('spassword').innerHTML = " *Password must be between 5 and 20 characters";
//        return false;
//    }


//}

//function cancellation() {
//    var emailid = document.getElementById('emailid').value;
//    var passwords = document.getElementById('passwords').value;

//    if (confirm("Do you want to cancel Logging in?")) {

//        document.getElementById('emailid').value = "";
//        document.getElementById('passwords').value = "";

//        document.getElementById('emailid').focus();
//    }
//    else {
//        document.getElementById('emailid').focus();
//    }
//}



//$(document).ready(function () {

//    $.validator.addMethod("emailmatch", function (value, element) {
//        return this.optional(element) || /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/i.test(value);
//    }, "Please enter a valid email address");
//    $("#loginform").validate({

//        rules: {
//            <%=emailid.UniqueID %> :{

//        }

//        }
//    })

//})

//$(document).ready(function () {
//    $("#Button_LogIn").click(function(){
//        var EmailId = $("emailid").val();
//        if ($.trim(emailid).length === 0) {
//            alert("please enter email address");
//            return false
//        }

//        if (ValidEmailAddress(EmailId)) {
//            return true;
//        }
//        else {
//            alert("Please enter correct email format. For example: 'akhil@imcs.com' or ' akhil12@imcs.co' or 'akhil.k@imcs.edu' ");
//            return false;
//        }

//    });

//});


//function ValidEmailAddress(EmailId) {
//    var emailregex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ ;
//    if (emailregex.test(EmailId)) {
//        return true;
//    }
//    else {
//        return false;
//    }
//}

//}
//$("#error_pwd").hide();

//var error_email = false;
//var error_pwd = false;

//$("#emailid").focusout(function () {
//    alert("hello");

//});

//});

//$(document).ready(function () {
//    $('#Button_LogIn').onclientclick(function () {
//        alert("button is clicked")
//    });
//});






//$(document).ready(function () {
//    $('#Button_LogIn').onclientclick(function javaScriptValidation () {
//        alert("button is clicked")

//    });

//});

//function javaScriptValidation() {
//    // your cool stuff
//    alert("button is clicked")
//}

//$('document').ready(function () {
//    $('#Button_LogIn').click(function () {
//        if ($('#emailid').val() == "") {
//            error_email.text = "Email Required";
//            return false;
//        }
//    if ($('#password').val() == "") {
//        alert("Password Required");
//        return false;
//    }
//    });   

//var EmailId = $("emailid").val();

//function ValidEmailAddress(EmailId) {
//    var emailregex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ ;
//    if (emailregex.test(EmailId)) {
//        return true;
//    }
//    else {
//        return false;
//    }
//    }

//});







$(document).ready(function () {

    //$(".myprofile").attr("onclick", "TrainerPage.aspx");


    if ($('#hdn_arole').val() == '1') {
        $('.myprofile').attr('href', 'AdminPage.aspx');
    }
     if ($('#hdn_trole').val() == '2') {
        $('.myprofile').attr('href', 'TrainerPage.aspx');
    }
     if ($('#hdn_srole').val() == '3') {
        $('.myprofile').attr('href', 'StudentPage.aspx');
    }
    //else {
    //    $('.myprofile').attr('href', 'LoginPage.aspx');
    //}

});


