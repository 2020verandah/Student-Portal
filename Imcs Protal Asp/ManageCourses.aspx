<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="Imcs_Protal_Asp.ManageCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
     <div id="container">
        <div id="leftdiv">
            <div>
                <span>
                    <asp:Button ID="btn_gac" type="button" class="submenuHeadings" runat="server" Text="Get All Courses" OnClick="btn_gac_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
    

            <div>
                <span>
                    <asp:Button ID="btn_gc" type="button" class="submenuHeadings" runat="server" Text="Get Course" OnClick="btn_gc_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />


            <div>
                <span>
                    <asp:Button ID="btn_ic" type="button" class="submenuHeadings" runat="server" Text="Insert Course" OnClick="btn_ic_Click" /></span><br />
                <br />
            </div>
            <br />
            <br />
  
            <div>
                <span>
                    <asp:Button ID="btn_uc" type="button" class="submenuHeadings" runat="server" Text="Update Course" OnClick="btn_uc_Click" /></span><br />
            </div>
            <br />
            <br />
 
            <div>

                <span>
                    <asp:Button ID="btn_dc" type="button" class="submenuHeadings" runat="server" Text="Delete Course" OnClick="btn_dc_Click" /></span>
            </div>
            <br />
            <br />

        </div>
        <div id="rightdiv">
            <div id="admindiv">

 <asp:GridView ID="grdCourses" runat="server"></asp:GridView>

            </div>
        </div>
    </div>
        </form>
    <script src="Scripts/AdminScript.js"></script>
    <link href="Content/AdminStyles.css" rel="stylesheet" />

   
</asp:Content>
