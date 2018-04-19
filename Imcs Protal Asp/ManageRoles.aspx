<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="Imcs_Protal_Asp.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
     <div id="container">
        <div id="leftdiv">
            <div>
                <span>
                    <asp:Button ID="btn_gar" type="button" class="submenuHeadings" runat="server" Text="Get All Roles" OnClick="btn_gar_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
    

            <div>
                <span>
                    <asp:Button ID="btn_gr" type="button" class="submenuHeadings" runat="server" Text="Get Role" OnClick="btn_gr_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
    

            <div>
                <span>
                    <asp:Button ID="btn_ir" type="button" class="submenuHeadings" runat="server" Text="Insert Role" OnClick="btn_ir_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
      
            <div>
                <span>
                    <asp:Button ID="btn_ur" type="button" class="submenuHeadings" runat="server" Text="Update Role" OnClick="btn_ur_Click" /></span><br />
            </div>
            <br />
            <br />

            <div>

                <span>
                    <asp:Button ID="btn_dr" type="button" class="submenuHeadings" runat="server" Text="Delete Role" OnClick="btn_dr_Click" /></span>
            </div>
            <br />
            <br />
           
        </div>
        <div id="rightdiv">
            <div id="admindiv">

    <asp:GridView ID="grdRoles" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
        </form>
    <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
</asp:Content>
