<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Imcs_Protal_Asp.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-success text-center">Login Page</h1>
    <br />
    <div class="container">
        <div class="col-lg-8 m-auto d-block">
            <div class="form-group">
                <asp:TextBox ID="emailid" runat="server" type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control"></asp:TextBox>
                <span id="semailid" class="text-danger font-weight-bold"></span>

            </div>

            <div class="form-group">
                <asp:TextBox ID="passwords" runat="server" type="password" name="passwords" placeholder="Password" class="form-control" autocomplete="off"></asp:TextBox>
                <span id="spassword" class="text-danger font-weight-bold"></span>

            </div>

            <div>

                <asp:Label ID="Label1" runat="server" class="text text-danger" Text=""></asp:Label>
            </div>
            <br />

            <div class="col-xs-4 text-center ">



                <asp:Button ID="Button_LogIn" runat="server" type="submit" name="submit" class="btn btn-success" Text="Log In" OnClientClick="return javaScriptValidation()" OnClick="Button_LogIn_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            

        <asp:Button ID="Button_CancelLogIn" runat="server" type="button" name="cancel" class="btn btn-danger" Text="Cancel" OnClientClick="cancellation()" OnClick="Button_CancelLogIn_Click" />
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="~/Scripts/LoginScript.js"></script>
</asp:Content>
