<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewAssessments.aspx.cs" Inherits="Imcs_Protal_Asp.ViewAssessments" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="Scripts/Assessments/jsgrid-theme.min.css" rel="stylesheet" />
    <link href="Scripts/Assessments/jsgrid.min.css" rel="stylesheet" />
    <script src="Scripts/Assessments/jsgrid.min.js"></script>
    <script>
        $(document).ready(function () {

            var assessmentslist;
           
            $.ajax({
                type: "POST",
                url: "WebService1.asmx/GetAllAssessments",
                data: '',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data, status)
                
                {
                    assessmentslist= data.d

                    var clients = [
                        {
                            "AssessName": "Otto Clay",
                            "StudentName": "shashi",
                            "AssessLink": "Ap #897-1459 Quam Avenue",
                            "StudentMarks": 35

                        },
                        { "AssessName": "Connor Johnston", "Age": 45, "Country": 2, "Address": "Ap #370-4647 Dis Av.", "Married": true },
                        { "AssessName": "Lacey Hess", "Age": 29, "Country": 3, "Address": "Ap #365-8835 Integer St.", "Married": false },
                        { "AssessName": "Timothy Henson", "Age": 56, "Country": 1, "Address": "911-5143 Luctus Ave", "Married": true },
                        { "AssessName": "Ramona Benton", "Age": 32, "Country": 3, "Address": "Ap #614-689 Vehicula Street", "Married": false }
                    ];
                    
                    var countries = [
                        { Name: "", Id: 0 },
                        { Name: "United States", Id: 1 },
                        { Name: "Canada", Id: 2 },
                        { Name: "United Kingdom", Id: 3 }
                    ];

                    $("#jsGrid").jsGrid({
                        width: "100%",
                        height: "400px",

                        inserting: true,
                        editing: true,
                        sorting: true,
                        paging: true,

                        data: assessmentslist,

                        fields: [
                            { name: "AssessName", type: "text", width: 150, validate: "required" },
                            { name: "StudentName", type: "text", width: 50 },
                            { name: "AssessLink", type: "text", width: 200 },
                            { name: "StudentMarks", type: "number", width: 200 },
                            //{ name: "StudentMarks", type: "checkbox", title: "Is Married", sorting: false },
                            { type: "control" }
                        ]
                    });
                },
                error: function (request, status, error)
                {
                    alert(request.responseText);
                }
            });
            
            


        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="jsGrid"></div>
    <div id="viewAssess">
        <br />
        <br />
        <br />

        <%--<asp:GridView ID="GridView1" runat="server" CellPadding="4" EnableSortingAndPagingCallbacks="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField />
                </Columns>

                <EditRowStyle BackColor="#2461BF" ForeColor="Black" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />

                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>--%>


        <%--  <form id="viewAssessment" class="form-horizontal" runat="server" role="form">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="AssessmentName"
                OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="AssessmentName" HeaderText="Exam Name" />
                    <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                    <asp:BoundField DataField="Link" HeaderText="Link" />
                    <asp:BoundField DataField="AssessmentMarks" HeaderText="Marks" />
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="false" />

                </Columns>
            </asp:GridView>


            <br />
            <br />
            <br />
            <br />
        </form>--%>
    </div>

</asp:Content>
