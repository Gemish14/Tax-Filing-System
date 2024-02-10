<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxFiling3.aspx.cs" Inherits="TaxFiling3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
    <title>Tax Filing Page 3</title>
    <style type="text/css">
        .style4
        {
            width: 1473px;
            text-align: center;
        }
        .style1
        {
            width: 166px;
            height: 130px;
        }
        .style2
        {
            width: 166px;
            height: 110px;
        }
        .style3
        {
            width: 1476px;
            height: 330px;
            margin-right: 0px;
        }
        .style11
        {
            text-align: right;
            width: 776px;
            height: 54px;
            font-weight: bold;
            font-size: large;
        }
        .style12
        {
            width: 819px;
            height: 54px;
        }
        .style16
        {
            text-align: right;
            width: 776px;
            height: 51px;
            color: #000000;
            font-weight: bold;
            font-size: large;
            background-color: #FFFFFF;
        }
        .style17
        {
            width: 819px;
            height: 51px;
        }
        .style19
        {
            text-align: right;
            width: 776px;
            height: 60px;
            color: #000000;
            font-weight: bold;
            font-size: large;
            background-color: #FFFFFF;
        }
        .style20
        {
            width: 819px;
            height: 60px;
        }
        .style21
        {
            text-align: right;
            width: 776px;
            height: 58px;
            color: #000000;
            font-weight: bold;
            font-size: large;
            background-color: #FFFFFF;
        }
        .style22
        {
            width: 819px;
            height: 58px;
        }
        </style>
</head>
<body style="width: 1526px">
    <form id="form2" runat="server">
     <div style="font-size: 50PX; color: Black; height: 145px;" 
         class="style4">
    
        <img alt="GOI LOGO" class="style1" src="Photos/Goi%20logo.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        INCOME&nbsp;&nbsp; TAX&nbsp;&nbsp; FILING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="ITD LOGO" class="style2" src="Photos/ITD%20logo.png" />
      </div>
     <table cellpadding="2" class="style3">
         <tr>
             <td class="style11">
                 Pay Calculated Amount (In Rs.)</td>
             <td class="style12">
                 <asp:TextBox ID="TBPay" runat="server" Height="52px" Width="265px" 
                     ReadOnly="True"></asp:TextBox>
             </td>
             
            
             
         </tr>
         <tr>
             <td class="style16" bgcolor="#3399FF" 
                 style="border-collapse: collapse;">
                 Card Number</td>
             <td class="style17">
                 <asp:TextBox ID="TBCard" runat="server" Height="57px" Width="261px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="CardNoValidator" runat="server" 
                     ErrorMessage="Enter Card Number" ForeColor="Red" 
                     ControlToValidate="TBCard"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style19">
                 &nbsp;&nbsp;Card Validity</td>
             <td class="style20">
                 <asp:TextBox ID="TBValidity" runat="server" Height="55px" Width="260px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="CardValidityValidator2" runat="server" 
                     ErrorMessage="Enter Card Validity" ForeColor="Red" 
                     ControlToValidate="TBValidity"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style21">
                 CVV</td>
             <td class="style22">
                 <asp:TextBox ID="TBCVV" runat="server" Height="56px" Width="265px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="CvvValidator" runat="server" 
                     ErrorMessage="Enter CVV" ForeColor="Red" ControlToValidate="TBCVV"></asp:RequiredFieldValidator>
             </td>
         </tr>
         </table>
     <br />
     <asp:FormView ID="FormView1" runat="server" BackColor="White" 
         BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
         DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" 
         Height="144px" Width="310px">
         <EditItemTemplate>
             OwnerName:
             <asp:TextBox ID="OwnerNameTextBox" runat="server" 
                 Text='<%# Bind("OwnerName") %>' />
             <br />
             PAN:
             <asp:TextBox ID="PANTextBox" runat="server" Text='<%# Bind("PAN") %>' />
             <br />
             GST:
             <asp:TextBox ID="GSTTextBox" runat="server" Text='<%# Bind("GST") %>' />
             <br />
             CompName:
             <asp:TextBox ID="CompNameTextBox" runat="server" 
                 Text='<%# Bind("CompName") %>' />
             <br />
             Income:
             <asp:TextBox ID="IncomeTextBox" runat="server" Text='<%# Bind("Income") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                 CommandName="Update" Text="Update" />
             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                 CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
         <InsertItemTemplate>
             OwnerName:
             <asp:TextBox ID="OwnerNameTextBox" runat="server" 
                 Text='<%# Bind("OwnerName") %>' />
             <br />
             PAN:
             <asp:TextBox ID="PANTextBox" runat="server" Text='<%# Bind("PAN") %>' />
             <br />
             GST:
             <asp:TextBox ID="GSTTextBox" runat="server" Text='<%# Bind("GST") %>' />
             <br />
             CompName:
             <asp:TextBox ID="CompNameTextBox" runat="server" 
                 Text='<%# Bind("CompName") %>' />
             <br />
             Income:
             <asp:TextBox ID="IncomeTextBox" runat="server" Text='<%# Bind("Income") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                 CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                 CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
         <ItemTemplate>
             OwnerName:
             <asp:Label ID="OwnerNameLabel" runat="server" Text='<%# Bind("OwnerName") %>' />
             <br />
             PAN:
             <asp:Label ID="PANLabel" runat="server" Text='<%# Bind("PAN") %>' />
             <br />
             GST:
             <asp:Label ID="GSTLabel" runat="server" Text='<%# Bind("GST") %>' />
             <br />
             CompName:
             <asp:Label ID="CompNameLabel" runat="server" Text='<%# Bind("CompName") %>' />
             <br />
             Income:
             <asp:Label ID="IncomeLabel" runat="server" Text='<%# Bind("Income") %>' />
             <br />

         </ItemTemplate>
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
     </asp:FormView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT [OwnerName], [PAN], [GST], [CompName], [Income] FROM [TaxFiling] WHERE ([PAN] = @PAN)">
         <SelectParameters>
             <asp:SessionParameter Name="PAN" SessionField="PAN" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
     <br />
     <br />
     <asp:Button ID="PayBtn" runat="server" Text="Pay" Height="43px" Width="83px" 
         onclick="PayBtn_Click" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Cancel" runat="server" Text="Cancel" Height="42px" 
         Width="89px" onclick="Cancel_Click" />
    </form>
    </body>
</html>
