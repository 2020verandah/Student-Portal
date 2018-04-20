<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BestFaculty.aspx.cs" Inherits="NoteBook.BestFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
            font-size: medium;
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
        .auto-style17 {
            font-family: "Times New Roman", Times, serif;
            color: #6600CC;
        }
        .auto-style18 {
            color: #FFFFFF;
            background-color: #009933;
        }
        .auto-style19 {
            text-align: center;
            width: 540px;
            height: 33px;
        }
        .auto-style20 {
            text-align: left;
            width: 178px;
            height: 33px;
        }
        .auto-style21 {
            height: 33px;
        }
        .auto-style22 {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            color: #FF0000;
        }
        .auto-style23 {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            width: 178px;
            text-align: left;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style25 {
            text-align: right;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            color: #FF9933;
            width: 540px;
            height: 29px;
        }
        .auto-style26 {
            text-align: center;
            width: 540px;
            font-size: medium;
        }
        .auto-style27 {
            text-align: left;
            width: 178px;
            font-size: medium;
        }
        .auto-style28 {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            color: #FF9900;
            text-align: left;
        }
        .auto-style29 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style28" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style28" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style29">&nbsp;<strong> </strong></span><span class="auto-style17"><strong><span class="auto-style29">Best Faculty</span></strong></span></td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style23">Faculty ID&nbsp; </td>
                    <td>
                        <span class="auto-style24">&nbsp;&nbsp;&nbsp;
                        </span>
                        <strong>
                        <asp:Label ID="lbl_FacultyID" runat="server" CssClass="auto-style22"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style23">Faculty Name</td>
                    <td>
                        <span class="auto-style24">&nbsp;&nbsp;&nbsp;
                        </span>
                        <strong>
                        <asp:Label ID="lbl_FacultyFirstName" runat="server" CssClass="auto-style22"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style23">Last Name</td>
                    <td>
                        <strong><span class="auto-style24">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Label ID="lbl_FacultyLastName0" runat="server" CssClass="auto-style22"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">Check Your Greetings</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="ddl_Greetings" runat="server" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px" AutoPostBack="true" CssClass="auto-style24">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style15">Send Greetings</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txt_Greeting" runat="server" Height="75px" TextMode="MultiLine" Width="200px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21">
                        <asp:Button ID="btn_SendGreeting" runat="server" CssClass="auto-style18" Height="30px" Text="Send Greetings" Width="150px" />
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
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</asp:Content>
