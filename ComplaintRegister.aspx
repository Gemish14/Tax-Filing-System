<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ComplaintRegister.aspx.cs" Inherits="ComplaintRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 style="font-family: 'Arial Unicode MS'; font-weight: bolder">Register your Grievances</h1>
    <div style="font-family: 'Arial Unicode MS'; font-weight: bolder; height: 69px; width: 762px;">Select Your Choice<br />
        <br />
        <asp:RadioButton ID="Tax" runat="server" Text="TAX RELATED" 
            GroupName="CHOICE" />
&nbsp;<asp:RadioButton ID="Service" runat="server" Text="OUR SERVICE RELATED" 
            GroupName="CHOICE" />
&nbsp;<asp:RadioButton ID="OTHER" runat="server" GroupName="CHOICE" 
            Text="OTHER GRIEVANCES" />
    </div>
    <p class="p2" style="font-family: 'Arial Unicode MS'; font-weight: bolder; text-align: left;">
        YOUR MOBILE NUMBER<br />
        <asp:TextBox ID="TBPHN" runat="server" Height="44px" 
            Width="200px" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TBPHN" ErrorMessage="Enter Valid Number" ForeColor="Red" 
            ValidationExpression="[7-9][0-9]{9}"></asp:RegularExpressionValidator>
        <br />

        YOUR GRIEVANCE HERE<br />
        <asp:TextBox ID="TBMSG" runat="server" Height="83px" Width="268px"></asp:TextBox>
    </p>
    <span style="color: rgb(0, 0, 0); font-family: Roboto, Verdana, sans-serif; font-size: large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
    
    
        <asp:Button ID="Button1" runat="server" 
            ForeColor="Black" Height="42px" Text="Submit" Width="109px" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Height="45px" 
            Text="Clear" Width="114px" onclick="Button4_Click" />
    <br /><asp:Label ID="LBMSG" runat="server"></asp:Label>
    </p>
    
   
    </asp:Content>

