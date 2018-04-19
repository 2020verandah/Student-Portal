<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestFaculty.aspx.cs" Inherits="NoteBook.BestFaculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            width: 540px;
        }
        .auto-style3 {
            width: 540px;
        }
        .auto-style4 {
            width: 540px;
            text-align: right;
        }
        .auto-style5 {
            width: 540px;
            text-align: right;
            height: 78px;
        }
        .auto-style6 {
            height: 78px;
        }
        .auto-style7 {
            width: 178px;
            text-align: left;
            height: 78px;
        }
        .auto-style8 {
            width: 178px;
            text-align: left;
        }
        .auto-style9 {
            width: 178px;
        }
        .auto-style10 {
            text-align: left;
            font-size: x-large;
        }
        .auto-style11 {
            color: #6600CC;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #339933;
            margin-right: 0px;
        }
        .auto-style14 {
            width: 540px;
            text-align: right;
            height: 29px;
        }
        .auto-style15 {
            width: 178px;
            text-align: left;
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> </strong><span class="auto-style11"><strong>Best Faculty</strong></span></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">Faculty ID&nbsp; </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Label ID="lbl_FacultyID" runat="server" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">Faculty Name</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Label ID="lbl_FacultyFirstName" runat="server" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">Last Name</td>
                    <td>
                        <strong>&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_FacultyLastName0" runat="server" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">Check Your Greetings</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="ddl_Greetings" runat="server" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">Send Greeting</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_Greeting" runat="server" Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="btn_SendGreeting" runat="server" OnClick="btn_SendGreeting_Click" Text="Send Greeting" CssClass="auto-style13" Height="30px" Width="120px" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_GreetingStatus" runat="server" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
