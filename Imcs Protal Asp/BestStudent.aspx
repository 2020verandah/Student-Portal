<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BestStudent.aspx.cs" Inherits="NoteBook.BestStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            font-size: x-large;
            color: #6600CC;
        }
        .auto-style3 {
            width: 178px;
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
        .auto-style26 {
            text-align: center;
            font-size: x-large;
            color: #6600CC;
        }
        .auto-style21 {
            text-align: center;
            width: 99px;
        }
        .auto-style27 {
            width: 467px;
        }
        .auto-style4 {
            width: 99px;
            text-align: left;
            font-size: medium;
        }
        .auto-style25 {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0000;
        }
        .auto-style23 {
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        color: #FFFFFF;
        font-weight: bold;
        background-color: #009933;
    }
        .auto-style1 {
            width: 100%;
        }
        </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        ID:
        <input id="txt_Id" type="text" name="name" value="" /><br />
        <input id="txt_Fname" type="text" name="name" value="" /><br />
        <input id="txt_Lname" type="text" name="name" value="" /><br />
        <input id="btn_Getdetails" type="button" name="name" value="Get Details" /><br />
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Best Student</strong></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Student ID&nbsp;&nbsp; </td>
                    <td class="auto-style27">
                        <asp:Label ID="lbl_StudentID" runat="server" CssClass="auto-style25"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Student First Name</td>
                    <td class="auto-style27">
                        <asp:Label ID="lbl_StudentFirstName" runat="server" CssClass="auto-style25"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Student LastName</td>
                    <td class="auto-style27">
                        <asp:Label ID="lbl_StudentLastName0" runat="server" CssClass="auto-style25"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Check Your Greetings</td>
                    <td class="auto-style27">
                        <asp:DropDownList ID="ddl_Greetings" runat="server" Height="30px" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Send Greeting</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txt_Greeting" runat="server" Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style27">
                        <strong>
                        <asp:Button ID="btn_SendGreeting" runat="server" OnClick="btn_SendGreeting_Click" Text="Send Greeting" CssClass="auto-style23" Height="40px" Width="150px"/>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style27">
                        <asp:Label ID="lbl_GreetingStatus" runat="server" CssClass="auto-style25"></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</asp:Content>
