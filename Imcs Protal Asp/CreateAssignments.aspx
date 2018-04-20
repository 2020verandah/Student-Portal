<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssignments.aspx.cs" Inherits="NoteBook.Assignments" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script> 
        function clientFunction() {
            var isValid = true;
            $('#txt_AssignmentID,#txt_AssignmentName,#txt_AssignmentDeadline,#txt_Assignment_Marks,#txt_TrainerID,#FileUpload_SelectAssignmentLink').each(function () {
                if ($.trim($(this).val()) == '') {
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
            if (isValid == false) {
                return false;
            }
            else {
                return true;
            }
        }
//$(document).ready(function(){

//    });
    //$(document).ready(function () {
    //    $("#btn_AssignmentView").click(function () {
    //        $("#GridView_GetAssignmentsData").hide(5000); 
    //    });
    //    //$("#btn_AssignmentView").click(function () {
    //    //    $("#GridView_GetAssignmentsData").show();
    //    //});
    //    //$("#btn_AssignmentView").click(function () {
    //    //    $("#GridView_GetAssignmentsData").slideDown('50000');
    //    //});
    //    $(document).ready(function () {
    //        $("#btn_AssignmentView").click(function () {
    //            $("#GridView_GetAssignmentsData").css("color", "red").slideUp(2000).slideDown(2000);
    //        });
    //    });

    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 26px;
        }

        .auto-style3 {
            height: 26px;
            width: 143px;
        }

        .auto-style4 {
            width: 143px;
        }

        .auto-style5 {
            height: 26px;
            font-size: x-large;
            color: #660066;
            text-align: left;
        }

        .auto-style6 {
            width: 143px;
            height: 29px;
        }

        .auto-style7 {
            height: 29px;
        }

        .auto-style8 {
            height: 26px;
            width: 353px;
        }

        .auto-style9 {
            width: 353px;
        }

        .auto-style10 {
            height: 29px;
            width: 353px;
            text-align: right;
        }

        .auto-style11 {
            width: 353px;
            text-align: right;
        }

        .auto-style12 {
            color: #FFFFFF;
            background-color: #009933;
        }

        .auto-style13 {
            color: #FF0000;
        }

        .auto-style14 {
            text-align: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style5" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Assignments</strong></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style8"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style11">AssignmentID</td>
                        <td>
                            <asp:TextBox ID="txt_AssignmentID" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style10">Assignment Name</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_AssignmentName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style10">Select Assignment Link</td>
                        <td class="auto-style7">
                            <asp:FileUpload ID="FileUpload_SelectAssignmentLink" runat="server" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style11">Deadline</td>
                        <td>
                            <asp:TextBox ID="txt_AssignmentDeadline" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style10">Marks</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_Assignment_Marks" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style10">TrainerID</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_TrainerID" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td><strong>
                            <asp:Label ID="lbl_AssignmentStatus" runat="server" CssClass="auto-style13"></asp:Label>
                        </strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_AssignmentPost" OnClientClick="return clientFunction()" runat="server" CssClass="auto-style12" Height="30px" OnClick="btn_AssignmentPost_Click" Text="Post" Width="80px" />
                            <asp:Button ID="btn_AssignmentView" runat="server" CssClass="auto-style12" Height="30px" Text="View" Width="80px" OnClick="btn_AssignmentView_Click" />
                            <asp:Button ID="btn_AssignmentUpdate" OnClientClick="return clientFunction()" runat="server" CssClass="auto-style12" Height="30px" Text="Update" Width="80px" OnClick="btn_AssignmentUpdate_Click" />
                            <asp:Button ID="btn_AssignmentDelete" runat="server" CssClass="auto-style12" Height="30px" Text="Delete" Width="80px" OnClick="btn_AssignmentDelete_Click" />
                            <asp:Button ID="btn_Clear" runat="server" CssClass="auto-style12" Height="30px" OnClick="btn_Clear_Click" Text="Clear" Width="80px" />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td colspan="2" class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView_GetAssignmentsData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="60px" Width="100px">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</asp:Content>