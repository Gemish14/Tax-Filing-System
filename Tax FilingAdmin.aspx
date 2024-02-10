<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Tax FilingAdmin.aspx.cs" Inherits="Tax_FilingAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Height="161px" Width="732px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" 
                SortExpression="OwnerName" />
            <asp:BoundField DataField="CompName" HeaderText="CompName" 
                SortExpression="CompName" />
            <asp:BoundField DataField="CompType" HeaderText="CompType" 
                SortExpression="CompType" />
            <asp:BoundField DataField="Income" HeaderText="Income" 
                SortExpression="Income" />
            <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST" />
            <asp:BoundField DataField="PaidTax" HeaderText="PaidTax" 
                SortExpression="PaidTax" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [OwnerName], [CompName], [CompType], [Income], [GST], [PaidTax] FROM [TaxFiling]">
    </asp:SqlDataSource>
</asp:Content>

