<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="Imcs_Protal_Asp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 681px;
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
        .auto-style18 {
            margin-left: 0px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#pnlAssessment").hide();

            $("#active").click(function () {
                $("#pnlAssignment").show();
                $("#pnlAssessment").hide();

                //$("active").css({ backgroundColor: 'cornflowerblue', color: 'white' });
                //$("active1").css({ backgroundColor: 'white', color: 'black' });
                //$("#active").style.backgroundColor = "cornflowerblue";
                //$("#active").style.color = "white";
                //$("#active1").style.backgroundColor = "white";
                //$("#active1").style.color = "black";
            });

            $("#active1").click(function () {
                $("#pnlAssessment").show();
                $("#pnlAssignment").hide();

                //$("active1").css({ backgroundColor: 'cornflowerblue', color: 'white' });
                //$("active").css({ backgroundColor: 'white', color: 'black' });
                //$("#active1").style.backgroundColor = "cornflowerblue";
                //$("#active1").style.color = "white";
                //$("#active").style.backgroundColor = "white";
                //$("#active").style.color = "black";
            });
        });
    </script>
    <script>
        function clickAssignments() {
            document.getElementById("active").style.backgroundColor = "cornflowerblue";
            document.getElementById("active").style.color = "white";

            document.getElementById("active1").style.backgroundColor = "white";
            document.getElementById("active1").style.color = "black";
        }

        function clickAssessments() {
            document.getElementById("active1").style.backgroundColor = "cornflowerblue";
            document.getElementById("active1").style.color = "white";

            document.getElementById("active").style.backgroundColor = "white";
            document.getElementById("active").style.color = "black";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="navbar">
                <a id="active" onclick="clickAssignments()">Assignments</a>
                <a id="active1" onclick="clickAssessments()">Assessments</a>
            </div>
        </div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style17"></td>
                <td>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>
                    <asp:Label ID="lblGrades" runat="server" Text="Grades" Font-Size="Medium" ForeColor="#284E98" Font-Bold="True"></asp:Label>
                    <div id="pnlAssignment">
                    <asp:Panel ID="pnlAssignments" runat="server">
                        <asp:GridView ID="gvAssignmentGrades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style18">
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
