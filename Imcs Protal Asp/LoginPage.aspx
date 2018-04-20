<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Imcs_Protal_Asp.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="loginform" runat="server">
        <h1 class="text-info text-center">Login Page</h1>
        <br />
        <div class="container">
            <div class="col-lg-8 m-auto d-block">
                <div class="form-group">
                    <asp:TextBox ID="emailid" runat="server" type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control" ClientIDMode="static"></asp:TextBox>
                    <span id="error_email" class="error_form"></span>

                </div>

                <div class="form-group">
                    <asp:TextBox ID="password" runat="server" type="password" name="passwords" placeholder="Password" class="form-control"  ClientIDMode="static"></asp:TextBox>
                    <span id="error_pwd" class="error_form"></span>

                </div>




                <div class="col-xs-4 text-center ">

                    <div>

                        <asp:Label ID="Label1" runat="server" class="text text-danger" Text="User with provided Email and Password doesn't exist in the database"></asp:Label>
                    </div>
                    <br />
                    <asp:Button ID="Button_LogIn" runat="server" type="submit" name="submit" class="btn btn-success" Text="Log In" ClientIDMode="Static" OnClick="Button_LogIn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;


        <asp:Button ID="Button_CancelLogIn" runat="server" type="button" name="cancel" class="btn btn-danger" Text="Cancel" ClientIDMode="static" OnClick="Button_CancelLogIn_Click" />
                </div>
            </div>
        </div>
    </form>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>--%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>

    <%--    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>--%>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery-1.10.2.intellisense.js"></script>
    <script src="Scripts/LoginScript.js"></script>
</asp:Content>
