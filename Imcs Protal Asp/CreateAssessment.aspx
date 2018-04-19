<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="Imcs_Protal_Asp.CreateAssessment" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        /*.auto-style17 {
            text-align: center;
            font-weight: normal;
            width: 326px;
        }
        .auto-style18 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF9900;
            width: 326px;
        }
        .auto-style19 {
            text-align: center;
            font-weight: normal;
            width: 446px;
        }
        .auto-style20 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF9900;
            width: 446px;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="col-md-12" style="border: solid lightgray; width: 50%; margin-left: 25%;">
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />
            <div style="width: 100%;">

                <div class="container">
                    <form class="form-horizontal" role="form">
                        <h2>CREATE ASSESSMENT</h2>
                        <div class="form-group">
                            <label for="firstName" class="col-sm-3 control-label">Assessment Name</label>

                            <div class="col-sm-9">
                                <asp:TextBox ID="TxtAssessName" CssClass="form-control" runat="server"></asp:TextBox>
                                <span class="help-block">eg.: Web API, Database</span>
                            </div>
                            <asp:RequiredFieldValidator ID="RfvAssessName0" runat="server" ControlToValidate="TxtAssessName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LblMode" class="col-sm-3 control-label" runat="server" Text="Assessment Mode"></asp:Label>

                            <div class="col-sm-9">
                                <asp:DropDownList ID="DDLAssessMode" class="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LblAssessDate" class="col-sm-3 control-label" runat="server" Text="Date"></asp:Label>

                            <div class="col-sm-9">
                                <asp:Calendar ID="calenderAssessDate" runat="server" OnSelectionChanged="calenderAssessDate_SelectionChanged" Visible="False"></asp:Calendar>
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">PickDate...</asp:LinkButton>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LblLink" class="col-sm-3 control-label" runat="server" Text="Link"></asp:Label>
                            <div class="col-sm-9">
                                <asp:FileUpload ID="FileUploadLink" class="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LblMarks" class="col-sm-3 control-label" runat="server" Text="Marks"></asp:Label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TxtMarks" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3">
                                <asp:Button ID="BtnCreateAssess" class="btn btn-primary btn-block" runat="server" CausesValidation="False" OnClick="BtnCreateAssess_Click" Text="Create Assessment" />
                            </div>
                        </div>
                    </form>

                </div>
            <br />
            <br />
        </asp:Panel>
    </div>

</asp:Content>

