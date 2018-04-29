$(document).ready(function () {

    $("#Button_Feedback").click(function () {
        Button_Feedback_Click();
    });

    $("#Button_ManageUsers").click(function () {
        Button_ManageUsers_Click();
    });

    $("#Button_ManageRoles").click(function () {
        Button_ManageRoles_Click();
    });

    $("#Button_ManageCourses").click(function () {
        Button_ManageCourses_Click();
    });

});


function Button_Feedback_Click() {
    window.location.href = "Feedbackcontentpage.aspx";
}

function Button_ManageUsers_Click() {
    window.location = "Manageusers.aspx";
}

function Button_ManageRoles_Click() {
    window.location = "ManageRoles.aspx";
}

function Button_ManageCourses_Click() {
    window.location = "ManageCourses.aspx";
}






