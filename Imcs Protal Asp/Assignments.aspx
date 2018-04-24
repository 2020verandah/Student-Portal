<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assignments.aspx.cs" Inherits="Imcs_Protal_Asp.Assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="Scripts/StudentAssignments/StudentAssignments.js"></script>
    <link rel="stylesheet" type="text/css" href="Content/StudentAssignments.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td>
                    <asp:Label ID="lblAssignments" runat="server" Text="Assignments" Font-Size="Large" ForeColor="#284E98" Font-Bold="True"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <table style="width:100%;">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style28">
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style28">
                    <asp:Panel ID="pnlView" runat="server">
                        <asp:GridView ID="gvAssignments" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="gvAssignments_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="true" />
                                <asp:BoundField DataField="Assignment" HeaderText="Name" />
                                <asp:BoundField DataField="Deadline" Visible="false" />
                                <asp:BoundField DataField="Marks" Visible="false" />
                                <asp:BoundField DataField="Info" Visible="false" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <br />
        <asp:Panel ID="pnlAssignment" runat="server" Visible="False" CssClass="auto-style31">
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style29">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblAID" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                    &nbsp;<asp:Label ID="lblAName" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Info</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAInfo" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lblDeadline" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Deadline</asp:Label>
                                </td>
                                <td class="auto-style19">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblADeadline" runat="server" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lblMarks" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Total marks</asp:Label>
                                </td>
                                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAMarks" runat="server" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td class="auto-style19">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Status</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblAStatus" runat="server" Font-Size="Medium" ForeColor="#284E98"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="lblLink" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#284E98">Submission link</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;<input id="tbALink" type="text" />
                                    <%--<asp:TextBox ID="tbALink" runat="server" ValidationGroup="vgSubmit"></asp:TextBox>--%>
                                    &nbsp;<%--<asp:RequiredFieldValidator ID="rfvLink" runat="server" ErrorMessage="Please enter your submission link." ForeColor="Red" ControlToValidate="tbALink" ValidationGroup="vgSubmit"></asp:RequiredFieldValidator>--%></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="vgSubmit" />--%>
                                    <input id="btnSubmit" type ="button" value="Submit" onclick="btnSubmit_Click();" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
    <br />
    </form>
</asp:Content>
