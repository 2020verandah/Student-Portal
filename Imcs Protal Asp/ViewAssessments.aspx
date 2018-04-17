<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAssessments.aspx.cs" Inherits="Imcs_Protal_Asp.ViewAssessments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
        </div>
    </form>
</body>
</html>
