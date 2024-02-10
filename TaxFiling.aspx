<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxFiling.aspx.cs" Inherits="TaxFiling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
    <title>Tax Filing Page 1</title>
    <style type="text/css">
        .style1
        {
            width: 168px;
            height: 152px;
        }
        .style2
        {
            width: 173px;
            height: 136px;
            margin-bottom: 0px;
        }
        .style3
        {
            width: 36%;
            height: 303px;
            margin-top: 25px;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            width: 820px;
            text-align: right;
            font-weight: bold;
        }
        .style6
        {
            width: 820px;
        }
       
        #form1
        {
            width: 1396px;
            height: 657px;
        }
       
    </style>
</head>
<body style="height: 655px; width: 1860px">
    <form id="form1" runat="server">
    <div style="font-size: 50PX; width: 1399px; height: 181px; color: #0066FF;" 
        class="style4">
    
        <img alt="GOI LOGO" class="style1" src="Photos/Goi%20logo.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INCOME&nbsp;&nbsp; TAX&nbsp;&nbsp; FILING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="ITD LOGO" class="style2" src="Photos/ITD%20logo.png" /></div>

    <table cellpadding="2" class="style3" align="center" 
        style="border-color: #000000; border-width: thin">
        <tr>
            <td class="style5">
                PAN NUMBER</td>
            <td class="style6">
                <asp:TextBox ID="TBPAN" runat="server" Height="52px" Width="265px" 
                    MaxLength="15"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                GST NUMBER</td>
            <td class="style6">
                <asp:TextBox ID="TBGST" runat="server" Height="56px" Width="264px" 
                    MaxLength="15"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                AADHAR CARD NUMBER</td>
            <td class="style6">
                <asp:TextBox ID="TBAadNo" runat="server" Height="57px" Width="261px" 
                    MaxLength="12"></asp:TextBox>
            </td>
        </tr>
        </table>
        <div align="center" style="margin-top: 19px">
    <asp:Button ID="ITFBtn1" runat="server" Text="Next Page" Height="45px" 
                onclick="Button1_Click" Width="163px" BackColor="White" 
                BorderColor="#0066FF" style="Border-Radius:30px;"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Clear" runat="server" Text="Clear" Height="39px" Width="89px" 
                BackColor="White" BorderColor="#0066FF" style="Border-Radius:30px;"/>
            <br />
   <br />
   <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" 
        Font-Underline="False" ForeColor="#3366FF" NavigateUrl="~/Default.aspx" 
                style="font-size: large">Want To Go Back?</asp:HyperLink>
    </div>
    </form>
    </body>
</html>
