<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="Imcs_Protal_Asp.CreateAssessment" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link href="Content/file-upload.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/file-upload.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {

            $('.file-upload').file_upload();

            $('#txtAssessDate').datepicker();


        })
    </script>

    <style type="text/css">
        .topspace {
            margin-top: 46px;
        }

        .txt {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="col-md-12" style="border: solid lightgray; width: 50%; margin-left: 25%;">

        <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />


            <div class="container">
                <form id="Assessment" class="form-horizontal" runat="server" role="form">
                    <h2>CREATE ASSESSMENT</h2>
                    <div class="form-group topspace">
                        <span style="width: 30%; float: left">
                            <label class="control-label">Assessment Name</label></span>
                        <div class="col-sm-9 txt">
                            <asp:TextBox ID="TxtAssessName" CssClass="form-control" runat="server"></asp:TextBox>
                            <span class="help-block">eg.: Web API, Database</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <span style="width: 30%; float: left">
                            <label id="LblMode" class="control-label">Assessment Mode</label>
                        </span>
                        <div class="col-sm-9 txt">
                            <asp:DropDownList ID="DDLAssessMode" CssClass="form-control " runat="server">
                            </asp:DropDownList>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <span style="width: 30%; float: left">
                            <label id="LblAssessDate" class="control-label">Date</label>
                        </span>
                        <div class="col-sm-9 txt">
                            <asp:TextBox ID="txtAssessDate" class="form-control" runat="server"></asp:TextBox>
                            <span class="help-block"></span>
                        </div>

                    </div>

                    <div class="form-group">
                        <span style="width: 30%; float: left">
                            <label id="LblLink" class="control-label">Link</label>
                        </span>
                        <div class="col-sm-9 txt">
                            <label class="file-upload btn btn-primary">
                                Browse for file ...
                                    <%--<input type="file" />--%>
                                <asp:FileUpload ID="FileUploadLink"  CssClass="btn-primary" runat="server" />
                            </label>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <span style="width: 30%; float: left">
                            <label id="LblMarks" class="control-label">Marks</label>
                        </span>
                        <div class="col-sm-9 txt">
                            <asp:TextBox ID="TxtMarks" class="form-control" runat="server"></asp:TextBox>
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group topspace">
                        <div class="col-sm-6 col-sm-offset-3">
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

