<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="Imcs_Protal_Asp.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
     <div id="container">
        <div id="leftdiv">
            <div>
                <span class="menuheadings">Overview</span><br />
                </div>
            <br />
            <br />
            <div>
                <span>
                    <asp:Button ID="btn_gar" type="button" class="submenuHeadings" runat="server" Text="Get All Roles" OnClick="btn_gar_Click" /></span><br />
            </div>
            <br />
            <br />
    

            <div>
                <span>
                    <asp:Button ID="btn_gr" type="button" class="submenuHeadings" runat="server" Text="Get Role" OnClick="btn_gr_Click" /></span><br />
            </div>
            <br />
            <br />
    

            <div>
                <span>
                    <asp:Button ID="btn_ir" type="button" class="submenuHeadings" runat="server" Text="Insert Role" OnClick="btn_ir_Click" /></span><br />
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
            <asp:Panel ID="pnl_getallroles" runat="server">        
                <div >

    <asp:GridView ID="grd_getallroles" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="494px">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
                </asp:Panel>

              <asp:Panel ID="pnl_getrole" runat="server">
            <div>

                <asp:Label ID="Label1" runat="server" Text="Enter Role Id: "></asp:Label> <asp:TextBox ID="tbox_rid" runat="server"></asp:TextBox>
              &nbsp; &nbsp; &nbsp;

                <asp:Button ID="btn_ok" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_ok_Click" />&nbsp; &nbsp; &nbsp;
            </div>
                <br />

                <asp:GridView ID="grd_getrole" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>

                </asp:Panel>


        </div>
        </div>
        </form>
    <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>
