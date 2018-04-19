<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedbackcontentpage.aspx.cs" Inherits="Imcs_Protal_Asp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            font-weight: normal;
            color: #009933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="form1" runat="server"> 

        <asp:Panel ID="Panel1" runat="server">
        <div>
           
                
                <table  class="auto-style2">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Trainer:"></asp:Label>
                            <asp:DropDownList ID="DDLtrainer" runat="server" CssClass="auto-style15">
                                <asp:ListItem Value="0">-Select-</asp:ListItem>
                                <asp:ListItem Value="1">Trainer1</asp:ListItem>
                                <asp:ListItem Value="2">Trainer2</asp:ListItem>
                                <asp:ListItem Value="3">Trainer3</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <div class="auto-style9">
                                <strong><span class="auto-style7">1. </span>
                                <asp:Label ID="Lblquestion1" runat="server" CssClass="auto-style10" Text="The Trainer thoroughly covered the material in the course"></asp:Label>
                                <asp:HiddenField ID="HFQ1" runat="server" Value="1" />
                                <br />
                                <asp:RadioButtonList ID="RBL1" runat="server" CssClass="auto-style8">
                                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                                    <asp:ListItem Value="4">Good</asp:ListItem>
                                    <asp:ListItem Value="3">Average</asp:ListItem>
                                    <asp:ListItem Value="2">Bad</asp:ListItem>
                                    <asp:ListItem Value="1">Very Bad</asp:ListItem>
                                </asp:RadioButtonList>
                                </strong>
                            </div>
                            </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><span class="auto-style11"><strong>2.</strong></span><strong><span class="auto-style11"> </span></strong><span class="auto-style11"><strong>The Trainer was knowledgeable on the course content<asp:HiddenField ID="HFQ2" runat="server" Value="2" />
                            <asp:RadioButtonList ID="RBL2" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong></span></td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>3. The Trainer spoke clearly - not too slow, not too fast<span class="auto-style11"><asp:HiddenField ID="HFQ3" runat="server" Value="3" />
                            </span></strong><span class="auto-style11"><strong><asp:RadioButtonList ID="RBL3" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong></span></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>4. The session started and ended on time<span class="auto-style11"><asp:HiddenField ID="HFQ4" runat="server" Value="4" />
                            <asp:RadioButtonList ID="RBL4" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>5. The session was interactive<span class="auto-style11"><asp:HiddenField ID="HFQ5" runat="server" Value="5" />
                            <asp:RadioButtonList ID="RBL5" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>6. The session content that was presented was what I expected based on the course description<span class="auto-style11"><asp:HiddenField ID="HFQ6" runat="server" Value="6" />
                            <asp:RadioButtonList ID="RBL6" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>7. The Trainer provided opportunities for the participants to ask questions<span class="auto-style11"><asp:HiddenField ID="HFQ7" runat="server" Value="7" />
                            <asp:RadioButtonList ID="RBL7" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>8. I would recommend this course to other employees<span class="auto-style11"><asp:HiddenField ID="HFQ8" runat="server" Value="8" />
                            <asp:RadioButtonList ID="RBL8" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>9. I would take another course from this Trainer<span class="auto-style11"><asp:HiddenField ID="HFQ9" runat="server" Value="9" />
                            <asp:RadioButtonList ID="RBL9" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
               
            <asp:ScriptManager runat="server">
            <Scripts>
               
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                
            </Scripts>
        </asp:ScriptManager>

        </div>
      </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
          <h3><em>
              <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text="Feedback Submitted...."></asp:Label>
          </em></h3>
          
          <h3><em>
              <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
              </em></h3>
          
      </asp:Panel>
    </form>
    

</asp:Content>
