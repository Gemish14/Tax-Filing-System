<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxFiling2.aspx.cs" Inherits="TaxFiling2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
    <title>Tax Filing Page 2</title>
    <style type="text/css">
        .style1
        {
            width: 267px;
        }
        .style2
        {
            width: 270px;
        }
        .style3
        {
            width: 1862px;
            height: 392px;
            margin-right: 0px;
        }
        .style4
        {
            width: 280px;
        }
        .style5
        {
            text-align: right;
            width: 820px;
        }
        .style6
        {
            width: 820px;
        }
        .style9
        {
            text-align: right;
            width: 820px;
            height: 70px;
        }
        .style10
        {
            width: 820px;
            height: 70px;
        }
        .style11
        {
            text-align: right;
            width: 820px;
            height: 79px;
        }
        .style12
        {
            width: 820px;
            height: 79px;
        }
        .style13
        {
            text-align: right;
            width: 820px;
            height: 89px;
        }
        .style14
        {
            width: 820px;
            height: 89px;
        }
        .style15
        {
            text-align: right;
            width: 820px;
            height: 71px;
        }
        .style16
        {
            width: 820px;
            height: 71px;
        }
        .style17
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div style="font-size: 50PX; width: 1859px" class="style4">
    
        <img alt="GOI LOGO" class="style1" src="Photos/Goi%20logo.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        INCOME&nbsp;&nbsp; TAX&nbsp;&nbsp; FILING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="ITD LOGO" class="style2" height="186px" src="Photos/ITD%20logo.png" 
            width="217px" />
      </div>
     <table cellpadding="2" class="style3">
         <tr>
             <td class="style11">
                 Company Name</td>
             <td class="style12">
                 <asp:TextBox ID="TBCompNm" runat="server" Height="52px" Width="265px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style9">
                 Company Type</td>
             <td class="style10">
                 <asp:DropDownList ID="DDCompType" runat="server">
                     <asp:ListItem>Regular</asp:ListItem>
                     <asp:ListItem>Composition</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style13">
                 Address ( Main Office )</td>
             <td class="style14">
                 <asp:TextBox ID="TBAdd" runat="server" Height="57px" Width="261px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style15">
                 Owner&#39;s Name</td>
             <td class="style16">
                 <asp:TextBox ID="TBOwnNm" runat="server" Height="56px" Width="264px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style5">
                 Company Income ( Quarterly Incomes )</td>
             <td class="style6">
                 <asp:TextBox ID="TBInc" runat="server" Height="56px" Width="264px"></asp:TextBox>
             </td>
         </tr>
     </table>
     <div class="style17">
     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button2" runat="server" Text="Clear" />
     </div>
    </form>
</body>
</html>
