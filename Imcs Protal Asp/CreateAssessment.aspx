<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="Imcs_Protal_Asp.CreateAssessment" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            text-align: center;
            font-weight: normal;
            width: 326px;
        }
        .auto-style18 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF9900;
            width: 326px;
        }
        .auto-style19 {
            text-align: center;
            font-weight: normal;
            width: 446px;
        }
        .auto-style20 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF9900;
            width: 446px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

        <div class="col-md-6" style="border: solid lightgray; width: 80%; margin-left: 10%;">
            <asp:Panel ID="Panel1" runat="server">
                <br />
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="LblAssessName" CssClass="control-label col-sm-2" runat="server" Text="Assessment Name"></asp:Label>
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
                        <td class="auto-style20"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
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
                        <td class="auto-style20"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="LblAssessDate" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Calendar ID="calenderAssessDate" runat="server" OnSelectionChanged="calenderAssessDate_SelectionChanged" Visible="False"></asp:Calendar>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">PickDate...</asp:LinkButton>


                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="LblLink" runat="server" Text="Link"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:FileUpload ID="FileUploadLink" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="LblMarks" runat="server" Text="Marks"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TxtMarks" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
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
   
</asp:Content>

