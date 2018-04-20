<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssignments.aspx.cs" Inherits="NoteBook.Assignments" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script> 
        function clientFunction() {
            //alert('huuu');
            //debugger;
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
            //alert('please enter details');
            if (isValid == false) {
                return false; 
            }
            else {
                return true;
            }
        }
            //$(document).ready(function () {
            //$("#btn_AssignmentView").click(function () {
            //    $("#GridView_GetAssignmentsData").css("color", "red").slideUp(2000).slideDown(2000);
            //});
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
        width: 666px;
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
    .auto-style17 {
        font-size: small;
        font-family: "Times New Roman", Times, serif;
        height: 26px;
        width: 2146px;
    }
    .auto-style19 {
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        color: #000000;
        height: 29px;
        width: 2146px;
        text-align: right;
    }
    .auto-style20 {
        text-align: left;
        width: 2146px;
    }
    .auto-style21 {
        text-align: center;
        height: 26px;
        width: 666px;
    }
    .auto-style22 {
        text-align: center;
        font-weight: normal;
        width: 666px;
        height: 29px;
    }
    .auto-style23 {
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        color: #FFFFFF;
        background-color: #009933;
    }
    .auto-style24 {
        text-align: center;
        font-weight: normal;
        width: 666px;
    }
    .auto-style25 {
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        color: #000000;
        width: 2146px;
        text-align: right;
    }
    .auto-style26 {
        font-size: large;
        font-family: Arial, Helvetica, sans-serif;
        color: #FF9900;
    }
        .auto-style27 {
            width: 86%;
            text-align: center;
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style5" colspan="2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"></td>
                        <td class="auto-style5" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create Assignments</strong></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style21"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style27"></td>
                        <td class="auto-style27"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style25">AssignmentID</td>
                        <td>
                            <asp:TextBox ID="txt_AssignmentID" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style19">Assignment Name</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_AssignmentName" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style19">Select Assignment Link</td>
                        <td class="auto-style7">
                            <asp:FileUpload ID="FileUpload_SelectAssignmentLink" ClientIDMode="Static" runat="server" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style25">Deadline</td>
                        <td>
                            <asp:TextBox ID="txt_AssignmentDeadline" ClientIDMode="Static" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style19">Marks</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_Assignment_Marks" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24"></td>
                        <td class="auto-style25">TrainerID</td>
                        <td class="auto-style26">
                            <asp:TextBox ID="txt_TrainerID" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style26"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td><strong>
                            <asp:Label ID="lbl_AssignmentStatus" runat="server" CssClass="auto-style13"></asp:Label>
                        </strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style15"> </span>
                        <asp:Button ID="btn_AssignmentPost" OnClientClick="return clientFunction()" runat="server" CssClass="auto-style23" Height="30px" OnClick="btn_AssignmentPost_Click" Text="Post" Width="80px" />
                            <asp:Button ID="btn_AssignmentView" runat="server" CssClass="auto-style23" Height="30px" Text="View" Width="80px" OnClick="btn_AssignmentView_Click" />
                            <asp:Button ID="btn_AssignmentUpdate" OnClientClick="return clientFunction()" runat="server" CssClass="auto-style23" Height="30px" Text="Update" Width="80px" OnClick="btn_AssignmentUpdate_Click" />
                            <asp:Button ID="btn_AssignmentDelete" runat="server" CssClass="auto-style23" Height="30px" Text="Delete" Width="80px" OnClick="btn_AssignmentDelete_Click" />
                            <asp:Button ID="btn_Clear" runat="server" CssClass="auto-style23" Height="30px" OnClick="btn_Clear_Click" Text="Clear" Width="80px" />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td>
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
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</asp:Content>