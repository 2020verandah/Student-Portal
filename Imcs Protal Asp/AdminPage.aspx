<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Imcs_Protal_Asp.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div id="container">
        <div id="leftdiv">
            <div>
                <span class="menuheadings">Overview</span><br />
                
                <span> <asp:Button ID="Button1" type="button" class="submenuHeadings"  runat="server" Text="Profile" /></span>
                <br />
                <span> <asp:Button ID="Button2" type="button" class="submenuHeadings"  runat="server" Text="View Feedback" /></span>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <div>
                <span class="menuheadings">Manage User</span><br />
                <span><asp:Button ID="Button3" type="button" class="submenuHeadings"  runat="server" Text="Manage Users" OnClick="Button3_Click" /></span><br /><br />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div>
                <span class="menuheadings">Roles</span><br />
                <span><asp:Button ID="Button4" type="button" class="submenuHeadings"  runat="server" Text="Manage Roles" OnClick="Button4_Click" /></span><br />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div>
                
                <span class="menuheadings">Course</span><br />
                <span><asp:Button ID="Button5" type="button" class="submenuHeadings"  runat="server" Text="Manage Courses" OnClick="Button5_Click" /></span>
            </div>
        </div>
        <div id="rightdiv">
            <div id="admindiv">
                <h2 style=" color:royalblue">WELCOME ADMIN</h2><hr />
                <h3 style="font-weight:bold; color:darkblue">Roles of the Admin:</h3> <br />
                <h4>Admin can Click on the "Profile" to view this page.</h4><br />
                <h4>Admin can Click on the "View Feedback" to view the feedback from submitted by the student.</h4><br />
                <h4>Admin can Click on the "Add New Course" to add courses in the course table.</h4><br />
                <h4>Admin can Click on the "Add New Student" to insert the details of the new student.</h4><br />
                <h4>Admin can Click on the "Add New Trainer" to insert the details of the new trainer.</h4><br />
                <h4>Admin can Click on the "List Student" to view, update and delete the students from a table.</h4><br />
                <h4>Admin can Click on the "List Trainer" to view, update and delete the tariners from a table.</h4><br />
            </div>

          
       </div>
    </div>
    <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
</asp:Content>
