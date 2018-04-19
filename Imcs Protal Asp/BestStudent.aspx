<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestStudent.aspx.cs" Inherits="NoteBook.BestStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
            font-size: x-large;
            color: #6600CC;
        }
        .auto-style3 {
            width: 178px;
        }
        .auto-style4 {
            width: 178px;
            text-align: left;
        }
        .auto-style5 {
            width: 178px;
            text-align: left;
            height: 78px;
        }
        .auto-style6 {
            height: 78px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            color: #FFFFFF;
            background-color: #339966;
            font-weight: bold;
        }
        .auto-style9 {
            text-align: center;
            font-size: x-large;
            color: #6600CC;
            width: 526px;
        }
        .auto-style10 {
            width: 526px;
        }
        .auto-style11 {
            width: 526px;
            text-align: right;
        }
        .auto-style12 {
            width: 526px;
            text-align: right;
            height: 78px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Best Student</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">Student ID</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_StudentID" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">Student First Name</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_StudentFirstName" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style4">Student LastName</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_StudentLastName0" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">Check Your Greetings</td>
                    <td>
                        <asp:DropDownList ID="ddl_Greetings" runat="server" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style5">Send Greeting</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_Greeting" runat="server" Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="btn_SendGreeting" runat="server" OnClick="btn_SendGreeting_Click" Text="Send Greeting" CssClass="auto-style8" Height="30px" Width="150px"/>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_GreetingStatus" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
