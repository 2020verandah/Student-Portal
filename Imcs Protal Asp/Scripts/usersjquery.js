
$(document).ready(function () {
    $('#div_getall_users').hide();
    $('#div_get_user').hide();
    $('#div_insert_user').hide();
    $('#div_update_user').hide();
    $('#div_get_user_update').hide();
    $('#div_update_user').hide();
    $('#div_update_userblock').hide();
    $('#div_btns_updateblock').hide();
    $('#div_delete_user').hide();
    $('#div_btns_updateblock').hide();
    $('#error_id').hide();
    $('#div_btn_getuser_u').hide();
    clear_textboxes();


    $("#Button_GetAllUsers").click(function () {
        $('#error_id').hide();
        $('#div_get_user').hide();
        $('#div_insert_user').hide();
        $('#div_update_user').hide();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_btn_getuser_u').hide();
        $('#div_delete_user').hide();
        Button_GetAllUsers_Click();
        $('#div_getall_users').show();
        clear_textboxes();
    });

    $("#Button_GetUserDiv").click(function () {
        $('#error_id').hide();
        $('#div_getall_users').hide();
        $('#div_get_user').show();
        $('#div_insert_user').hide();
        $('#div_update_user').hide();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_btn_getuser_u').hide();
        $('#div_delete_user').hide();
        clear_textboxes();

    });

    $("#Button_InsertUserDiv").click(function () {
        $('#error_id').hide();
        $('#div_getall_users').hide();
        $('#div_get_user').hide();
        $('#div_btn_insert').show();
        $('#div_insert_user').show();
        $('#div_update_user').hide();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_btn_getuser_u').hide();
        $('#div_delete_user').hide();
        clear_textboxes();

    });

    $("#Button_UpdateUserDiv").click(function () {
        $('#error_id').hide();
        $('#div_getall_users').hide();
        $('#div_get_user').hide();
        $('#div_btn_insert').hide();
        $('#div_insert_user').hide();
        $('#div_update_user').show();
        $('#div_get_user_update').show();
        $('#div_btn_getuser_u').show();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_delete_user').hide();
        clear_textboxes();

    });

    $("#Button_DeleteUserDiv").click(function () {
        $('#error_id').hide();
        $('#div_getall_users').hide();
        $('#div_get_user').hide();
        $('#div_insert_user').hide();
        $('#div_update_user').hide();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_btn_getuser_u').hide();
        $('#div_delete_user').show();
        clear_textboxes();

    });


    $("#btn_getuser").click(function () {
        Button_GetUser_Click();
        $('#div_getall_users').show();
    });

    $("#btn_insertuser").click(function () {
        Button_InsertUser_Click();
    });

    $("#btn_getuser_u").click(function () {
        Button_GetUser_Update_Click();
        $('#div_btn_getuser_u').hide();
        $('#error_id').show();
        $('#div_update_userblock').show();
        $('#div_btns_updateblock').show();
        $('#div_update_user').show();
    });

    $("#btn_updateuser").click(function () {

        Button_UpdateUser_Click();
    });

    $("#btn_deleteuser").click(function () {
        Button_DeleteUser_Click();
    });

    $("#btn_cancelinsert").click(function () {
        clear_textboxes();
    });

    $("#btn_cancelupdate").click(function () {
        clear_textboxes();
        $('#div_update_userblock').hide();
        $('#div_btns_updateblock').hide();
        $('#div_btn_getuser_u').show();




    });
    $("#btn_canceldelete").click(function () {
        clear_textboxes();
    });
    

});


function clear_textboxes() {
    $("#tbox_fname").val('');
    $("#tbox_lname").val('');
    $("#tbox_email").val('');
    $("#tbox_password").val('');
    $("#tbox_gender").val('');
    $("#tbox_rid").val('');
    $("#tbox_cid").val('');
    $("#tbox_u_uid").val('');
    $("#box_fname").val('');
    $("#box_lname").val('');
    $("#box_email").val('');
    $("#box_password").val('');
    $("#box_gender").val('');
    $("#box_rid").val('');
    $("#box_cid").val('');
    $("#tbox_d_uid").val('');
    $("#tbox_i_uid").val('');
    $("#div_update_userblock").empty();
}


function Button_GetAllUsers_Click() {
    $('#error_id').hide();
    $.ajax({
        type: 'POST',
        url: 'ManageUsers.aspx/GetAllUsers_Click',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: {},
        success: tablepopulate
    });
}


function Button_GetUser_Click() {
    var Params = {
        UserId: $('#tbox_i_uid').val(),
    };
    $.ajax({
        type: 'POST',
        url: 'ManageUsers.aspx/GetUser_Click',
        data: JSON.stringify({ usersInfo: Params }),
        contentType: 'application/json; charset-utf-8',
        dataType: 'json',
        success: tablepopulate,
        error: function (request, status, error) {
        }
    });
}


function Button_InsertUser_Click() {

    var Params = {
        FirstName: $("#tbox_fname").val(),
        LastName: $("#tbox_lname").val(),
        Email: $("#tbox_email").val(),
        Password: $("#tbox_password").val(),
        Gender: $("#tbox_gender").val(),
        RoleId: $("#tbox_rid").val(),
        CourseId: $("#tbox_cid").val(),
    };


    $.ajax({
        type: "POST",
        url: "ManageUsers.aspx/InsertUser_Click",
        data: JSON.stringify({ usersInfo: Params }),
        contentType: "application/json; charset-utf-8",
        dataType: "json",
        success: function (data) {

            if ((data.d) == 1) {

                $('#error_id').text("User Successfully Inserted.");
                $('#error_id').show();
            }

            else {
                $('#error_id').text("No such User exists in the database");
                $('#error_id').show();


            }

        },
        error: function (request, status, error) {

        }

    });
}

function Button_GetUser_Update_Click() {
    var Params = {
        UserId: $('#tbox_u_uid').val(),
    };
    $.ajax({
        type: 'POST',
        url: 'ManageUsers.aspx/GetUserForUpdate_Click',
        data: JSON.stringify({ usersInfo: Params }),
        contentType: 'application/json; charset-utf-8',
        dataType: 'json',
        success: function (data) {
            var xmlDoc = $.parseXML(data.d);
            var User = $(xmlDoc).find('Table');

            if ((data.d) == 0) {
                $('#error_id').text("No such User exists in the database");
                $('#error_id').show();
            }
            else {
                $(xmlDoc).find('Table').each(function () {
                    $("#div_update_userblock").append(
                        '<input id= "box_fname" type= "text" placeholder= "First Name" class="form-control" value=' + $(this).find('FirstName').text() + '><br />' +
                        '<input id="box_lname" type="text" placeholder="Last Name" class="form-control" value=' + $(this).find('LastName').text() + '><br />' +
                        '<input id="box_email" type="text" placeholder="Email (example: a@a.com)" class="form-control" value=' + $(this).find('Email').text() + '><br />' +
                        '<input id="box_password" type="text" placeholder="Password" class="form-control"value=' + $(this).find('Password').text() + '><br />' +
                        '<input id="box_gender" type="text" placeholder="Gender" class="form-control" value=' + $(this).find('Gender').text() + '><br />' +
                        '<input id="box_rid" type="text" placeholder="Role Id" class="form-control" value=' + $(this).find('RoleId').text() + '><br />' +
                        '<input id="box_cid" type="text" placeholder="Course Id" class="form-control" value=' + $(this).find('CourseId').text() + '><br />')
                });
            }
        },
        error: function (request, status, error) {
            $('#error_id').text("No such User exists in the database");
            $('#error_id').show();
        }
    });
}

function Button_UpdateUser_Click() {

    var Params = {
        UserId: $('#tbox_u_uid').val(),
        FirstName: $("#box_fname").val(),
        LastName: $("#box_lname").val(),
        Email: $("#box_email").val(),
        Password: $("#box_password").val(),
        Gender: $("#box_gender").val(),
        RoleId: $("#box_rid").val(),
        CourseId: $("#box_cid").val(),
    };


    $.ajax({
        type: "POST",
        url: "ManageUsers.aspx/UpdateUser_Click",
        data: JSON.stringify({ usersInfo: Params }),
        contentType: "application/json; charset-utf-8",
        dataType: "json",
        success: function (data) {
            if ((data.d) == 1) {
                $('#error_id').text("User Successfully Updated.");
                $('#error_id').show();

            }
            else {
                $('#error_id').text("No such User exists in the database");
                $('#error_id').show();

            }
        },
        error: function (request, status, error) {

        }
    });
}

function Button_DeleteUser_Click() {

    var Params = {
        UserId: $("#tbox_d_uid").val(),
    };


    $.ajax({
        type: "POST",
        url: "ManageUsers.aspx/DeleteUser_Click",
        data: JSON.stringify({ usersInfo: Params }),
        contentType: "application/json; charset-utf-8",
        dataType: "json",
        success: function (data) {

            if ((data.d) == 1) {
                $('#error_id').text("User Successfully Deleted. Sorry to see the User Go");
                $('#error_id').show();
            }

            else {
                $('#error_id').text("No such User exists in the database");
                $('#error_id').show();
            }
        },
        error: function (request, status, error) {
        }

    });
}


function tablepopulate(data) {
    if ((data.d) == 0) {
        $('#error_id').text("No such User exists in the database");
        $('#error_id').show();
    }
    else {
        var xmlDoc = $.parseXML(data.d);
        var Users = $(xmlDoc).find("Table");
        var table = $("<table/>");
        //Adding the header row.
        var row = $(table[0].insertRow(-1));
        Users.eq(0).children().each(function () {
            var headerCell = $("<th />");
            headerCell.html(this.nodeName);
            row.append(headerCell);
        });
        //Adding the data rows.
        $(Users).each(function () {
            row = $(table[0].insertRow(-1));
            $(this).children().each(function () {
                var cell = $("<td />");
                cell.html($(this).text());
                row.append(cell);
            });
        });
        var dvTable = $("#div_tbl_getall_users");
        dvTable.html("");
        dvTable.append(table);
        dvTable.setAttribute("class", "tbl_dgusers");

    }
}



