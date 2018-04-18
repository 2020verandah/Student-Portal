<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Imcs_Protal_Asp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

   
    <h1 class="text-success text-center">Login Page</h1><br/>
    <div class="container">


     <div class="col-lg-8 m-auto d-block">

				
				  <div class="form-group">
                      <asp:TextBox ID="emailid"  type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control" autocomplete="off" runat="server" ></asp:TextBox>
                    <span id="semailid" class="text-danger font-weight-bold"> </span>

                </div>

                <div class="form-group">
                    <asp:TextBox ID="passwords" type="password" name="passwords" placeholder="Password" class="form-control" autocomplete="off" runat="server"></asp:TextBox>
                    <span id="spassword" class="text-danger font-weight-bold"> </span>

                </div>     
        <asp:Button ID="Button1" runat="server" type="submit" name="submit"  class="btn btn-success"   Text="Log In" OnClientClick="return javaScriptValidation()" />
        <asp:Button ID="Button2" runat="server" type="button"  name="cancel" class="btn btn-danger"   Text="Cancel" OnClientClick="alert()" />

    </div>
        </div>
</asp:Content>


