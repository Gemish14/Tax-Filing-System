<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 225px;
            text-align: right;
        }
        .style6
        {
            width: 228px;
            text-align: left;
        }
        .style4
        {
            width: 200px;
            text-align: right;
        }
        .style8
        {
            width: 225px;
            text-align: right;
            height: 44px;
        }
        .style9
        {
            width: 228px;
            text-align: left;
            height: 44px;
        }
        .style10
        {
            width: 200px;
            text-align: right;
            height: 44px;
        }
        .style11
        {
            height: 44px;
        }
        .style12
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1" style="width: 877px; height: 403px">
        <tr>
            <td class="style7" 
                    style="font-size: medium;">
                    First
                    Name</td>
            <td class="style6" style="font-size: medium">
                <asp:TextBox ID="TBFN" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBFN" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4" 
                    style="font-size: medium;">
                    Last Name</td>
            <td style="font-size: medium">
                <asp:TextBox ID="TBLN" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBLN" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="1" rowspan="1" 
                    style="font-size: medium;">
                    Address</td>
            <td class="style6" 
                    style="font-size: medium;">
                <asp:TextBox ID="TBADD" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TBADD" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4" 
                    style="font-size: medium;">
                    &nbsp;Mobile Number</td>
            <td style="font-size: medium">
                <asp:TextBox ID="TBMOB" runat="server" BorderColor="#999999" MaxLength="10"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TBMOB" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8" 
                    style="font-size: medium;">
                    Company Name</td>
            <td class="style9" style="font-size: medium">
                <asp:TextBox ID="TBCO" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TBCO" ErrorMessage="Enter Company Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" 
                    style="font-size: medium;">
                    Company&nbsp; GST Number</td>
            <td class="style11" style="font-size: medium">
                <asp:TextBox ID="TBGST" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TBGST" ErrorMessage="Enter GST Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" 
                    style="font-size: medium;">
                    Owner&#39;s PAN Number</td>
            <td class="style6" style="font-size: medium">
                <asp:TextBox ID="TBPAN" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TBPAN" ErrorMessage="Enter PAN Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4" 
                    style="font-size: medium;">
                    District</td>
            <td style="font-size: medium">
                <asp:TextBox ID="TBDIST" runat="server" BorderColor="#999999"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TBDIST" ErrorMessage="Enter District" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" 
                    style="font-size: medium;">
                    &nbsp;</td>
            <td class="style6" style="font-size: medium">
                &nbsp;</td>
            <td class="style7" 
                    style="font-size: medium;">
                    State</td>
            <td class="style6" style="font-size: medium">
                <asp:DropDownList ID="DDLState" runat="server" Height="27px" 
                        style="margin-left: 0px" Width="129px">
                    <asp:ListItem>Select State</asp:ListItem>
                    <asp:ListItem>Andra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhatisgarh</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DDLState" ErrorMessage="Select State" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <div style="height: 119px; width: 1060px; font-size: medium;" class="style12">
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            BackColor="#99CCFF" Height="44px" Width="112px" 
            style="border-radius:50px "/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" BackColor="#99CCFF"
            Height="44px" Width="113px" style="border-radius:50px" />
        <br />
        <asp:Label ID="DisplayRegister" runat="server" Font-Bold="True" 
            Font-Names="Arial" Font-Size="Small" ForeColor="#3333FF"></asp:Label>
        <br />
        Already a registered Tax Payer ? 
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" 
            Font-Names="Arial" Font-Size="Medium" ForeColor="#3333FF" 
            Font-Underline="False" NavigateUrl="~/TaxFiling.aspx"> Continue Here</asp:HyperLink>
        <br />
    
    </div>
</asp:Content>

