<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="Imcs_Protal_Asp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 735px;
        }
        .navbar {
            background-color: white;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
         }
         .navbar a:hover {
             background-color: #ddd;
             color: black;
         }
        .container {
            height: 100%;
            width: 100%;
            text-align: left;
            margin-left: 40%;
            height: 40%;
            float: left;
        }
         #active {
             background-color: cornflowerblue;
             color: white;
         }
         #pnlAssessment {
             display: none;
         }
         #pnlAssignment {
             display: none;
         }
    </style>
    <script>
        function clickAssignments() {
            document.getElementById("pnlAssignment").style.display = "block";
            document.getElementById("active").style.backgroundColor = "cornflowerblue";
            document.getElementById("active").style.color = "white";

            document.getElementById("pnlAssessment").style.display = "none";
            document.getElementById("active1").style.backgroundColor = "white";
            document.getElementById("active1").style.color = "black";
        }

        function clickAssessments() {
            document.getElementById("pnlAssessment").style.display = "block";
            document.getElementById("active1").style.backgroundColor = "cornflowerblue";
            document.getElementById("active1").style.color = "white";

            document.getElementById("pnlAssignment").style.display = "none";
            document.getElementById("active").style.backgroundColor = "white";
            document.getElementById("active").style.color = "black";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="navbar">
                <a id="active" onclick="clickAssignments();">Assignments</a>
                <a id="active1" onclick="clickAssessments();">Assessments</a>
            </div>
        </div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>
                    <%--<asp:Menu ID="menuMain" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <Items>
                            <asp:MenuItem Text="Assignments" Value="Assignments" NavigateUrl="~/Assignments.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Grades" Value="Grades" NavigateUrl="~/Grades.aspx">
                                <asp:MenuItem Text="Assignments" Value="Assignments">
                                    <asp:MenuItem Text="Assessments" Value="Assessments"></asp:MenuItem>
                                </asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#507CD1" />
                    </asp:Menu>--%>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>
                    <asp:Label ID="lblGrades" runat="server" Text="Grades" Font-Size="Medium" ForeColor="#284E98" Font-Bold="True"></asp:Label>
                    <div id="pnlAssignment">
                    <asp:Panel ID="pnlAssignments" runat="server">
                        <asp:GridView ID="gvAssignmentGrades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                        </asp:GridView>
                    </asp:Panel>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>
                    <div id="pnlAssessment">
                    <asp:Panel ID="pnlAssessments" runat="server" >
                        <asp:GridView ID="gvAssessmentGrades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                        </asp:GridView>
                    </asp:Panel>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
    </table>
    <br />
    </form>
</asp:Content>
