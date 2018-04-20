<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="Imcs_Protal_Asp.ManageCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
      <div id="container">      
        <div id="leftdiv">  
            <div><span class="menuheadings">Overview</span><br /></div><br /><br />
            <div><span><asp:Button ID="btn_gar" type="button" class="submenuHeadings" runat="server" Text="Get All Courses" OnClick="btn_gac_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_gr" type="button" class="submenuHeadings" runat="server" Text="Get Course" OnClick="btn_gc_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_ir" type="button" class="submenuHeadings" runat="server" Text="Insert Courses" OnClick="btn_ic_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_ur" type="button" class="submenuHeadings" runat="server" Text="Update Courses" OnClick="btn_uc_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_dr" type="button" class="submenuHeadings" runat="server" Text="Delete Courses" OnClick="btn_dc_Click" /></span></div><br /><br />
     </div>       
        <div id="rightdiv">
            <asp:Panel ID="pnl_getallcourses" runat="server"> 
                <div><asp:GridView ID="grd_getallcourses" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="511px">
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

            <asp:Panel ID="pnl_getcourse" runat="server">
            <div><asp:Label ID="lbl_getcourse" runat="server" Text="Enter Course Id to get details: "></asp:Label> <asp:TextBox ID="tbox_i_cid" runat="server"></asp:TextBox>
              &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_getcourse" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_getcourse_Click" />&nbsp; &nbsp; &nbsp;
            </div><br />
                  <asp:GridView ID="grd_getcourse" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
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

            <asp:Panel ID="pnl_insertcourse" runat="server">
         
                <asp:TextBox ID="tbox_icname" type="text" placeholder="Course Name" runat="server"></asp:TextBox><br /><br />
              
                <asp:Button ID="btn_insertcourse" runat="server" class="btn btn-success" Text="Insert" OnClick="btn_insertcourse_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_insertcourse" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_insertcourse_Click" /> <br /> <br />
               </asp:Panel>

            <asp:Panel ID="pnl_updatecourse" runat="server">              
                     <asp:Panel ID="updatecourse_get" runat="server">
                <asp:Label ID="lbl_updatecourse" runat="server" Text="Enter Course Id to Update: "></asp:Label> <asp:TextBox ID="tbox_u_cid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_updatecourse_get" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_updatecourse_get_Click" />&nbsp; &nbsp; &nbsp;          
                         </asp:Panel><br />

                <br />
                    <asp:Panel ID="pnl_updatecourse_tboxes" runat="server">
                <asp:TextBox ID="tbox_ucname" type="text" placeholder="Course Name" runat="server"></asp:TextBox><br />
              


                    <br />
                <asp:Button ID="btn_updatecourse" runat="server" class="btn btn-success" Text="Update" OnClick="btn_updatecourse_Click" />&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_cancel_updatecourse" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_updatecourse_Click" /><br /> <br />

           </asp:Panel>
                    </asp:Panel>


            <asp:Panel ID="pnl_deletecourse" runat="server">
                 <asp:Label ID="lbl_deletecourse" runat="server" Text="Enter Course Id to delete: "></asp:Label> <asp:TextBox ID="tbox_d_cid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_deletecourse" runat="server" class=" btn btn-danger" Text="Delete" OnClick="btn_deletecourse_Click" />&nbsp; &nbsp; &nbsp;
                 <asp:Button ID="btn_cancel_deletecourse" runat="server" class="btn btn-success" Text="Cancel" OnClick="btn_cancel_deletecourse_Click" /><br />
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
