function javaScriptValidation() {

    var emailid = document.getElementById('emailid').value;
    var passwords = document.getElementById('passwords').value;

    if (emailid === "") {
        document.getElementById('semailid').innerHTML = " *Please Enter Email";
        return false;
    }
    if (emailid.indexOf('@') <= 0) {
        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
        return false;

    }
    if ((emailid.charAt(emailid.length - 4) !== '.') && (emailid.charAt(emailid.length - 3) !== '.')) {
        document.getElementById('semailid').innerHTML = " *Invalid Email Address";
        return false;

    }


    if (passwords === "") {


        document.getElementById('spassword').innerHTML = " *Please enter Password";
        return false;
    }
    if ((passwords.length <= 5) || (passwords.length > 20)) {
        document.getElementById('spassword').innerHTML = " *Password must be between 5 and 20 characters";
        return false;
    }


}

function cancellation() {

    if (confirm("Do you want to cancel Logging in?")) {

        document.getElementById('emailid').value = "";
        document.getElementById('passwords').value = "";

        document.getElementById('emailid').focus();
    }
    else {
        document.getElementById('emailid').focus();
    }
}



