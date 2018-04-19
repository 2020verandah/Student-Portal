<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Imcs_Protal_Asp.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <form runat="server">
    <div id="container">      
        <div id="leftdiv">  
            <div><span class="menuheadings">Overview</span><br /></div><br /><br />
            <div><span><asp:Button ID="btn_gau" type="button" class="submenuHeadings" runat="server" Text="Get All Users" OnClick="btn_gau_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_gu" type="button" class="submenuHeadings" runat="server" Text="Get User" OnClick="btn_gu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_iu" type="button" class="submenuHeadings" runat="server" Text="Insert Users" OnClick="btn_iu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_uu" type="button" class="submenuHeadings" runat="server" Text="Update Users" OnClick="btn_uu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_du" type="button" class="submenuHeadings" runat="server" Text="Delete Roles" OnClick="btn_du_Click" /></span></div><br /><br />
     </div>       
        <div id="rightdiv">
            <asp:Panel ID="pnl_getallusers" runat="server"> 
                <div><asp:GridView ID="grd_getallusers" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="511px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView></div></asp:Panel>

            <asp:Panel ID="pnl_getuser" runat="server">
            <div><asp:Label ID="lbl_getuser" runat="server" Text="Enter User Id to get details: "></asp:Label> <asp:TextBox ID="tbox_i_uid" runat="server"></asp:TextBox>
              &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_getuser" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_getuser_Click" />&nbsp; &nbsp; &nbsp;
            </div><br />
                  <asp:GridView ID="grd_getuser" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
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

            <asp:Panel ID="pnl_insertuser" runat="server">
                <asp:TextBox ID="tbox_ifname" type="text" placeholder="First Name" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_ilname" type="text" placeholder="Last Name" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_iemail" type="text" placeholder="Email" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_ipwd" type="password" placeholder="Password" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_igender" type="text" placeholder="Gender"  runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_irid" type="text" placeholder="Role Id"  runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_icid" type="text" placeholder="Course Id"  runat="server"></asp:TextBox><br /><br />
                <asp:Button ID="btn_insertuser" runat="server" class="btn btn-success" Text="Insert" OnClick="btn_insertuser_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_insertuser" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_insertuser_Click" /> <br /> <br />
                <asp:Label ID="lbl_result_insertuser" runat="server" class="text-danger" Text=""></asp:Label>
               </asp:Panel>

            <asp:Panel ID="pnl_updateuser" runat="server">              
                     <asp:Panel ID="updateuser_get" runat="server">
                <asp:Label ID="lbl_updateuser" runat="server" Text="Enter User Id to Update: "></asp:Label> <asp:TextBox ID="tbox_u_uid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_updateuser_get" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_updateuser_get_Click" />&nbsp; &nbsp; &nbsp;          
                         </asp:Panel><br />
                <asp:Panel ID="pnl_updateuser_update" runat="server">
                <asp:GridView ID="grd_updateuser" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
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
                    <asp:Panel ID="pnl_updateuser_tboxes" runat="server">
                <asp:TextBox ID="tbox_ufname" type="text" placeholder="First Name" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_ulname" type="text" placeholder="Last Name" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_uemail" type="text" placeholder="Email" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_upwd" type="password" placeholder="Password" runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_ugender" type="text" placeholder="Gender"  runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_urid" type="text" placeholder="Role Id"  runat="server"></asp:TextBox><br /><br />
                <asp:TextBox ID="tbox_ucid" type="text" placeholder="Course Id"  runat="server"></asp:TextBox><br /><br />


                    <br />
                <asp:Button ID="btn_updateuser" runat="server" class="btn btn-success" Text="Update" OnClick="btn_updateuser_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_updateuser" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_updateuser_Click" /><br /><br />
                <asp:Label ID=" lbl_result_updateuser" runat="server" class="text-danger" Text=""></asp:Label>

           </asp:Panel>
                    </asp:Panel>


            <asp:Panel ID="pnl_deleteuser" runat="server">
                 <asp:Label ID="lbl_deleteuser" runat="server" Text="Enter User Id to delete: "></asp:Label> <asp:TextBox ID="tbox_d_uid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_deleteuser" runat="server" class=" btn btn-danger" Text="Delete" OnClick="btn_deleteuser_Click" />&nbsp; &nbsp; &nbsp;
                 <asp:Button ID="btn_cancel_deleteuser" runat="server" class="btn btn-success" Text="Cancel" OnClick="btn_cancel_deleteuser_Click" /><br />
                   <asp:Label ID="lbl_result_deleteuser" runat="server" class="text-danger" Text=""></asp:Label>
                </asp:Panel>

            <%--<asp:Panel ID="pnl_courses_and_roles" runat="server">
                <asp:GridView ID="grd_courses_and_roles" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                     </asp:GridView>
            </asp:Panel>--%>

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
