<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Imcs_Protal_Asp.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <form runat="server">
    <div id="container">
        <div id="leftdiv">
            <div>
                <span>
                    <asp:Button ID="btn_gau" type="button" class="submenuHeadings" runat="server" Text="Get All Users" OnClick="btn_gau_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
           

            <div>
                <span>
                    <asp:Button ID="btn_gu" type="button" class="submenuHeadings" runat="server" Text="Get User" OnClick="btn_gu_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
           

            <div>
                <span>
                    <asp:Button ID="btn_iu" type="button" class="submenuHeadings" runat="server" Text="Insert Users" OnClick="btn_iu_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
           
            <div>
                <span>
                    <asp:Button ID="btn_uu" type="button" class="submenuHeadings" runat="server" Text="Update Users" OnClick="btn_uu_Click" /></span><br />
            </div>
            <br />
            <br />
     
            <div>

                <span>
                    <asp:Button ID="btn_du" type="button" class="submenuHeadings" runat="server" Text="Delete Roles" OnClick="btn_du_Click" /></span>
            </div>
            <br />
            <br />
     
        </div>
        <div id="rightdiv">
            <div id="admindiv">

                <asp:GridView ID="grdUsers" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
      </form>
    <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
</asp:Content>
