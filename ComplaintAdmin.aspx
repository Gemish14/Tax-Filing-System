<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="ComplaintAdmin.aspx.cs" Inherits="ComplaintAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ComplaintNo" 
    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
    Height="185px" Width="570px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="ComplaintNo" HeaderText="ComplaintNo" 
            InsertVisible="False" ReadOnly="True" SortExpression="ComplaintNo" />
        <asp:BoundField DataField="ComplaintMsg" HeaderText="ComplaintMsg" 
            SortExpression="ComplaintMsg" />
        <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
        <asp:BoundField DataField="SelectedRadBtn" HeaderText="SelectedRadBtn" 
            SortExpression="SelectedRadBtn" />
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
    SelectCommand="SELECT * FROM [ClientComplaint]"></asp:SqlDataSource>
</asp:Content>

