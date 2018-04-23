<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAssignment.aspx.cs" Inherits="Imcs_Protal_Asp.PostAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:600px;margin-top:100px; height:500px;width:400px; text-align:center;">
            <h2>Post Assignment</h2>
            <table>
                <tr>
                    <td>Assignment ID</td>
                    <td>
                        <input id="txt_AID" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment Name</td>
                    <td>
                        <input id="txt_AName" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment Deadline</td>
                    <td>
                        <input id="txt_Deadline" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment ALink</td>
                    <td>
                        <input id="txt_ALink" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment Marks</td>
                    <td>
                        <input id="txt_Marks" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment Trainer ID</td>
                    <td>
                        <input id="txt_TrainerID" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Assignment Trainer ID</td>
                    <td>
                        <label id="lbl_TrainerID"></label></td>
                </tr>
                <tr>
                    <td>
                        <input id="btn_View" type="button" name="name" value="View Assignment" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
     <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery-1.10.2.intellisense.js"></script>
    <script src="Scripts/LoginScript.js"></script>
        <script>
            $(document).ready(function () {
                $('#btn_View').click(function (){
                    //alert('ready')
                    $.ajax({
                        url: 'PostAssignment.aspx/ViewAssignment',
                        method: 'post',
                        contentType: 'application/json',
                        data: '',
                        dataType: 'json',
                        success: function (data) {
                            alert(data.d)
                            $("#txt_AID").val(data.d.AssignmentID);
                            $("#txt_AName").val(data.d.AssignmentName);
                            $("#txt_Deadline").val(data.d.AssignmentDeadline);
                            //$("#lbl_TrainerID").text(data.d.AssignmentDeadline);
                            $("#txt_ALink").val(data.d.AssignmentLink);
                            $("#txt_Marks").val(data.d.AssignmentMarks);
                            $("#txt_TrainerID").val(data.d.TrainerID);
                        },
                        error: function (error) {
                            alert('error');
                        }
                    });
                });
            });
    </script>
</html>
