<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="Imcs_Protal_Asp.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome Students</h1>
    <form runat="server">
    <asp:HiddenField ID="hdn_srole" ClientIDMode="static" runat="server" />
        </form>
        <script src="Scripts/LoginScript.js"></script>

</asp:Content>
