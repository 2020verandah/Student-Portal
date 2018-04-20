<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BestStudent.aspx.cs" Inherits="NoteBook.BestStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
            width: 136px;
            text-align: right;
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
        .auto-style17 {
            text-align: center;
            font-size: x-large;
            color: #6600CC;
            width: 998px;
        }
        .auto-style18 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FF9900;
            width: 998px;
        }
        .auto-style19 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF9933;
            width: 998px;
            text-align: right;
        }
        .auto-style21 {
            text-align: center;
            width: 136px;
        }
        .auto-style22 {
            font-size: xx-large;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style2" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style22">&nbsp;&nbsp;&nbsp; </span>Best Student</strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student ID&nbsp;&nbsp; </td>
                    <td>
                        <asp:Label ID="lbl_StudentID" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style4">Student First Name</td>
                    <td>
                        <asp:Label ID="lbl_StudentFirstName" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">Student LastName</td>
                    <td>
                        <asp:Label ID="lbl_StudentLastName0" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style4">Check Your Greetings</td>
                    <td>
                        <asp:DropDownList ID="ddl_Greetings" runat="server" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style4">Send Greeting</td>
                    <td>
                        <asp:TextBox ID="txt_Greeting" runat="server" Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="btn_SendGreeting" runat="server" OnClick="btn_SendGreeting_Click" Text="Send Greeting" CssClass="auto-style8" Height="30px" Width="150px"/>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Label ID="lbl_GreetingStatus" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</asp:Content>
