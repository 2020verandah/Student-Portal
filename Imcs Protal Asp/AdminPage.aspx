<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Imcs_Protal_Asp.AdminPage" %>
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
                <span> <asp:Button ID="Button1" type="button" class="submenuHeadings"  runat="server" Text="Profile" /></span><br />
               </div>
            <br />
            <br />
            <div>
                <span> <asp:Button ID="Button2" type="button" class="submenuHeadings"  runat="server" Text="View Feedback" OnClick="Button2_Click" /></span><br />
            </div>
            <br />
            <br />
         
            <div>
                <span><asp:Button ID="Button3" type="button" class="submenuHeadings"  runat="server" Text="Manage Users" OnClick="Button3_Click" /></span><br />
            </div>
            <br />
            <br />
        
            <div>
                <span><asp:Button ID="Button4" type="button" class="submenuHeadings"  runat="server" Text="Manage Roles" OnClick="Button4_Click" /></span><br />
            </div>
            <br />
            <br />
      
            <div>
                
                <span><asp:Button ID="Button5" type="button" class="submenuHeadings"  runat="server" Text="Manage Courses" OnClick="Button5_Click" /></span><br />
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
        </form>
 

        <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>
