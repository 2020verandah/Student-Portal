
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="Imcs_Protal_Asp.CreateAssessment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 402px;
        }

        .auto-style2 {
            width: 259px;
        }

        .auto-style3 {
            width: 402px;
            height: 31px;
        }

        .auto-style4 {
            width: 259px;
            height: 31px;
        }

        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 263px;
        }
        .auto-style7 {
            width: 263px;
            height: 31px;
        }
        .ddl
        {
            border:2px solid #7d6754;
            border-radius:5px;
            padding:3px;
            -webkit-appearance: none; 
            background-image:url('Images/Arrowhead-Down-01.png');
            background-position:88px;
            background-repeat:no-repeat;
            text-indent: 0.01px;/*In Firefox*/
            text-overflow: '';/*In Firefox*/
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-6" style="border: solid lightgray;width:80%;margin-left:10%;">
            <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style6">
                        <asp:Label  ID="LblAssessName" CssClass="control-label col-sm-2" runat="server" Text="Assessment Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtAssessName" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvAssessName0" runat="server" ControlToValidate="TxtAssessName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RevAssessName" runat="server" ControlToValidate="TxtAssessName" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="[A-Za-z0-9]{6,15}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="LblMode" runat="server" Text="Assessment Mode"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DDLAssessMode" CssClass="dll" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvAssessMode" runat="server" ControlToValidate="DDLAssessMode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="LblAssessDate" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Calendar ID="calenderAssessDate" runat="server" OnSelectionChanged="calenderAssessDate_SelectionChanged" Visible="False"></asp:Calendar>
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>

                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">PickDate...</asp:LinkButton>


                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="LblLink" runat="server" Text="Link"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUploadLink" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="LblMarks" runat="server" Text="Marks"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtMarks" runat="server" ></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="BtnCreateAssess" runat="server" CausesValidation="False" OnClick="BtnCreateAssess_Click" Text="Create Assessment" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
        </div>
        
    </form>
</body>
</html>
