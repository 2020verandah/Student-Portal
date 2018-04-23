$(document).ready(function () {
    $("#pnlAssessment").hide();

    $("#active").click(function () {
        $("#pnlAssignment").show();
        $("#pnlAssessment").hide();

        //$("active").css({backgroundColor: 'cornflowerblue', color: 'white' });
        //$("active1").css({backgroundColor: 'white', color: 'black' });
    });

    $("#active1").click(function () {
        $("#pnlAssessment").show();
        $("#pnlAssignment").hide();

        //$("active1").css({backgroundColor: 'cornflowerblue', color: 'white' });
        //$("active").css({backgroundColor: 'white', color: 'black' });
    });
});

function clickAssignments() {
    document.getElementById("active").style.backgroundColor = "cornflowerblue";
    document.getElementById("active").style.color = "white";

    document.getElementById("active1").style.backgroundColor = "white";
    document.getElementById("active1").style.color = "black";
}

function clickAssessments() {
    document.getElementById("active1").style.backgroundColor = "cornflowerblue";
    document.getElementById("active1").style.color = "white";

    document.getElementById("active").style.backgroundColor = "white";
    document.getElementById("active").style.color = "black";
}