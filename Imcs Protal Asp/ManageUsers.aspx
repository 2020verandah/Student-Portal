<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Imcs_Protal_Asp.ManageUsers" %>

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
                <%-- <div><span><asp:Button ID="btn_gau" type="button" class="submenuHeadings" runat="server" Text="Get All Users" OnClick="btn_gau_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_gu" type="button" class="submenuHeadings" runat="server" Text="Get User" OnClick="btn_gu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_iu" type="button" class="submenuHeadings" runat="server" Text="Insert Users" OnClick="btn_iu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_uu" type="button" class="submenuHeadings" runat="server" Text="Update Users" OnClick="btn_uu_Click" /></span><br /></div><br /><br />
           <div><span><asp:Button ID="btn_du" type="button" class="submenuHeadings" runat="server" Text="Delete Users" OnClick="btn_du_Click" /></span></div><br /><br />--%>

                <div>
                    <span>
                        <input id="Button_GetAllUsers" type="button" value="Get All Users" class="submenuHeadings" /></span><br />
                </div>
                <br />
                <br />
                <div>
                    <span>
                        <input id="Button_GetUserDiv" type="button" value="Get User" class="submenuHeadings" /></span><br />
                </div>
                <br />
                <br />
                <div>
                    <span>
                        <input id="Button_InsertUserDiv" type="button" value="Insert Users" class="submenuHeadings" /></span><br />
                </div>
                <br />
                <br />
                <div>
                    <span>
                        <input id="Button_UpdateUserDiv" type="button" value="Update Users" class="submenuHeadings" /></span><br />
                </div>
                <br />
                <br />
                <div>
                    <span>
                        <input id="Button_DeleteUserDiv" type="button" value="Delete Users" class="submenuHeadings" /></span><br />
                </div>
                <br />
                <br />

            </div>
            <div id="rightdiv">


                <div id="div_get_user">
                    <input id="tbox_i_uid" type="text" placeholder="Enter User Id: " class="form-control" /><br />
                    <input id="btn_getuser" type="button" value="Ok" class="btn btn-success" /><br />
                    <br />
                </div>


                <div id="div_getall_users">
                    <div id="div_tbl_getall_users">
                    </div>
                    <br />
                </div>


                <div id="div_insert_user">
                    <div id="div_textboxes_insert">
                        <input id="tbox_fname" type="text" placeholder="First Name" class="form-control" /><br />
                        <input id="tbox_lname" type="text" placeholder="Last Name" class="form-control" /><br />
                        <input id="tbox_email" type="text" placeholder="Email (example: a@a.com)" class="form-control" /><br />
                        <input id="tbox_password" type="password" placeholder="Password" class="form-control" /><br />
                        <input id="tbox_gender" type="text" placeholder="Gender" class="form-control" /><br />
                        <input id="tbox_rid" type="text" placeholder="Role Id" class="form-control" /><br />
                        <input id="tbox_cid" type="text" placeholder="Course Id" class="form-control" /><br />
                    </div>

                    <div style="float: left">
                        <div id="div_btn_insert">
                            <input id="btn_insertuser" type="button" value="Insert" class="btn btn-success" />
                        </div>

                    </div>
                    <div id="div_btn_cancel_insert">
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        <input id="btn_cancelinsert" type="button" value="Cancel" class="btn btn-danger" /><br />
                    </div>

                </div>

                <div id="div_update_user">
                    <div id="div_get_user_update">
                        <input id="tbox_u_uid" type="text" placeholder="Enter User Id to get the details of the User to update: " class="form-control" /><br />
                        <div id="div_btn_getuser_u">
                            <input id="btn_getuser_u" type="button" value="Ok" class="btn btn-success" /><br />
                        </div>
                         </div>
                        <div id="div_update_userblock">

                          
                        </div>
                    
                    </div>
                <div id="div_btns_updateblock">
                      <div style="float: left">
                                <div id="div_btn_update">
                                    <input id="btn_updateuser" type="button" value="Update" class="btn btn-success" />
                                </div>
                            </div>

                            <div id="div_btn_cancel_update">
                                &nbsp; &nbsp; &nbsp; &nbsp;
                        <input id="btn_cancelupdate" type="button" value="Cancel" class="btn btn-danger" /><br />
                            </div>
                        </div>
               


                <div id="div_delete_user">
                    <input id="tbox_d_uid" type="text" placeholder="Enter User Id to delete the User: " class="form-control" /><br />
                    <input id="btn_deleteuser" type="button" value="Delete" class="btn btn-danger" />&nbsp; &nbsp; &nbsp; &nbsp;
                    <input id="btn_canceldelete" type="button" value="Cancel" class="btn btn-success" /><br />
                </div>


                <div>
                    <br />
                    <span id="error_id" class="text-danger"></span>
                </div>

                <%--<asp:Panel ID="pnl_getallusers" runat="server"> 
                <div><asp:GridView ID="grd_getallusers" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="511px">
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

            <asp:Panel ID="pnl_getuser" runat="server">
            <div><asp:Label ID="lbl_getuser" runat="server" Text="Enter User Id to get details: "></asp:Label> <asp:TextBox ID="tbox_i_uid" runat="server"></asp:TextBox>
              &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_getuser" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_getuser_Click" />&nbsp; &nbsp; &nbsp;
            </div><br />
                  <asp:GridView ID="grd_getuser" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="512px">
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
               </asp:Panel>

            <asp:Panel ID="pnl_updateuser" runat="server">              
                     <asp:Panel ID="updateuser_get" runat="server">
                <asp:Label ID="lbl_updateuser" runat="server" Text="Enter User Id to Update: "></asp:Label> <asp:TextBox ID="tbox_u_uid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_updateuser_get" runat="server" class="btn btn-success" Text="Ok" OnClick="btn_updateuser_get_Click" />&nbsp; &nbsp; &nbsp;          
                         </asp:Panel><br />

                <br />
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
                <asp:Button ID="btn_cancel_updateuser" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btn_cancel_updateuser_Click" /><br />

           </asp:Panel>
                    </asp:Panel>


            <asp:Panel ID="pnl_deleteuser" runat="server">
                 <asp:Label ID="lbl_deleteuser" runat="server" Text="Enter User Id to delete: "></asp:Label> <asp:TextBox ID="tbox_d_uid" runat="server"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_deleteuser" runat="server" class=" btn btn-danger" Text="Delete" OnClick="btn_deleteuser_Click" />&nbsp; &nbsp; &nbsp;
                 <asp:Button ID="btn_cancel_deleteuser" runat="server" class="btn btn-success" Text="Cancel" OnClick="btn_cancel_deleteuser_Click" /><br /><br />
                </asp:Panel>

            <asp:Label ID="lbl_result" class="text-danger" runat="server" Text=""></asp:Label>--%>
            </div>
        </div>
    </form>


    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
    <script src="Scripts/usersjquery.js"></script>
</asp:Content>
