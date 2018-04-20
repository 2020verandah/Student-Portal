<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="Imcs_Protal_Asp.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
      <div id="container">      
        <div id="leftdiv">  
            <div><span class="menuheadings">Overview</span><br /></div><br /><br />
            <div><span><asp:Button ID="btn_gar" type="button" class="submenuHeadings" runat="server" Text="Get All Roles" OnClick="btn_gar_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_gr" type="button" class="submenuHeadings" runat="server" Text="Get Role" OnClick="btn_gr_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_ir" type="button" class="submenuHeadings" runat="server" Text="Insert Roles" OnClick="btn_ir_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_ur" type="button" class="submenuHeadings" runat="server" Text="Update Roles" OnClick="btn_ur_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_dr" type="button" class="submenuHeadings" runat="server" Text="Delete Roles" OnClick="btn_dr_Click" /></span></div><br /><br />
     </div>       
        <div id="rightdiv">
            <asp:Panel ID="pnl_getallroles" runat="server"> 
                <div><asp:GridView ID="grd_getallroles" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="511px">
                    <EmptyDataTemplate>
                          No record found
                      </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView></div></asp:Panel>

            <asp:Panel ID="pnl_getrole" runat="server">
            <div><asp:Label ID="lbl_getrole" runat="server" Text="Enter Role Id to get details: "></asp:Label> <asp:TextBox ID="tbox_i_rid" runat="server"></asp:TextBox>
              &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_getrole" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_getrole_Click" />&nbsp; &nbsp; &nbsp;
            </div><br />
                  <asp:GridView ID="grd_getrole" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
                      <EmptyDataTemplate>
                          No record found
                      </EmptyDataTemplate>
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

            <asp:Panel ID="pnl_insertrole" runat="server">
         
                <asp:TextBox ID="tbox_irname" type="text" placeholder="Role Name" runat="server"></asp:TextBox><br /><br />
              
                <asp:Button ID="btn_insertrole" runat="server" class="btn btn-success" Text="Insert" OnClick="btn_insertrole_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_insertrole" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_insertrole_Click" /> <br /> <br />
               </asp:Panel>

            <asp:Panel ID="pnl_updaterole" runat="server">              
                     <asp:Panel ID="updaterole_get" runat="server">
                <asp:Label ID="lbl_updaterole" runat="server" Text="Enter Role Id to Update: "></asp:Label> <asp:TextBox ID="tbox_u_rid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_updaterole_get" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_updaterole_get_Click" />&nbsp; &nbsp; &nbsp;          
                         </asp:Panel><br />

                <br />
                    <asp:Panel ID="pnl_updaterole_tboxes" runat="server">
                <asp:TextBox ID="tbox_urname" type="text" placeholder="Role Name" runat="server"></asp:TextBox><br />
              


                    <br />
                <asp:Button ID="btn_updaterole" runat="server" class="btn btn-success" Text="Update" OnClick="btn_updaterole_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_updaterole" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_updaterole_Click" /><br /> <br />

           </asp:Panel>
                    </asp:Panel>


            <asp:Panel ID="pnl_deleterole" runat="server">
                 <asp:Label ID="lbl_deleterole" runat="server" Text="Enter Role Id to delete: "></asp:Label> <asp:TextBox ID="tbox_d_rid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_deleterole" runat="server" class=" btn btn-danger" Text="Delete" OnClick="btn_deleterole_Click" />&nbsp; &nbsp; &nbsp;
                 <asp:Button ID="btn_cancel_deleterole" runat="server" class="btn btn-success" Text="Cancel" OnClick="btn_cancel_deleterole_Click" /><br />
                </asp:Panel>

            <asp:Label ID="lbl_result" class="text-danger" runat="server" Text=""></asp:Label>

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
