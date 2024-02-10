<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Customer Details</h1>
    <p>
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="ClientDataSource" GridLines="Both" 
            RepeatDirection="Horizontal" Height="251px" Width="711px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Mobile:
                <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Eval("CompanyName") %>' />
                <br />
                GST:
                <asp:Label ID="GSTLabel" runat="server" Text='<%# Eval("GST") %>' />
                <br />
                PAN:
                <asp:Label ID="PANLabel" runat="server" Text='<%# Eval("PAN") %>' />
                <br />
                District:
                <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="ClientDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [UserDetails]"></asp:SqlDataSource>
    <br /><br />

    </p>
</asp:Content>

