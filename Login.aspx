<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
    <title>Login</title>
     <script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style type="text/css">
         .Loginbtn:hover
    {
        background: blue;
        border: solid 1px blue;
        color: white;   
        height: 25px;   
    }
        .style8
        {
            width: 138px;
            height: 102px;
            margin-left: 23px;
            margin-top: 13px;
            margin-bottom: 0px;
        }
        .style2
        {
            border-color:Black;
        }
        .style11
        {
            height: 182px;
            text-align: center;
        }
   
        .style19
        {
            text-align: center;
            width: 329px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            height: 152px;
        }
        .style20
        {
            width: 335px;
            text-align: center;
            height: 152px;
        }
        .style21
        {
            font-family: "Times New Roman", Times, serif;
            color: #3366FF;
            font-size: Larger;
        }
     
           
        
        #form1
        {
            height: 778px;
            width: 1514px;
        }
        .style26
        {
            text-align: center;
            width: 329px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            height: 132px;
        }
        .style37
        {
            width: 335px;
            text-align: center;
            height: 132px;
        }
        .style41
        {
            text-align: center;
            width: 650px;
        }
       
        .style42
        {
            font-style: normal;
        }
       
        </style>
</head>
<body style="width: 1512px; height: 779px; margin-right: 0px;">
    <form id="form1" runat="server">
    <div style="height: 759px; width: 1515px; margin-right: 0px;">
        <div class="style11" 
            
            
            
            style="background-color: #5398FF; color: #000000; margin-bottom: 22px; width: 1516px;">
            <strong style="font-size: xx-large">
            
        <img alt="Logo" class="style8" src="Photos/ITD%20logo.png" style="border-radius:10px;"/><br />
            <span class="style21" style="color: #000000">Income Tax Department</span></strong><br />
        </div>
        <table class="style2" align="center" frame="border" style="border-color: #000000; height: 438px; width: 655px;">
            <tr>
                <td class="style19" 
                    style="font-style: italic; font-size: x-large; color: #333333">
                    Username (Email)</td>
                <td class="style20">
                    <asp:TextBox ID="TextboxUser" runat="server" Width="190px" Height="35px" style="border-top:5px solid black; border-left: 0px none white; border-right:0px none white; border-top: 0px none white;"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Username" ForeColor="Red" style="text-align: left" 
                        ControlToValidate="TextboxUser"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style26" 
                    style="font-style: italic; font-size: x-large; color: #333333">
                    Password</td>
                <td class="style37">
                    <asp:TextBox ID="TextBoxPwd" runat="server" Width="190px" TextMode="Password" 
                        Height="35px" style="border-top:5px solid black; border-left: 0px none white; border-right:0px none white; border-top: 0px none white;"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Password" ForeColor="Red" 
                        ControlToValidate="TextBoxPwd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style26" 
                    style="font-style: italic; font-size: x-large; color: #333333" colspan="2">
                <p class="style41" style="font-size: large; height: 127px;">
    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
            Font-Italic="True" ForeColor="#3333FF" onclick="Button1_Click" BackColor="White" BorderColor="Black" 
            BorderWidth="2px" Height="41px" 
            Width="126px" CssClass="Loginbtn" style="border-radius:40px;"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Clear" Font-Bold="True" 
            Font-Italic="True" ForeColor="#3333FF" onclick="Button2_Click" 
                BackColor="White" BorderColor="Black" BorderWidth="2px" CssClass="Loginbtn" style="border-radius:30px" 
                        Height="41px" Width="125px"/>
    <br/><br/><span class="style42"><asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="New to this website ? "></asp:Label>
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" 
        ForeColor="#3399FF" NavigateUrl="~/SignUp.aspx">SignUp Here</asp:HyperLink>
                    </span>
       </p>
                    </td>
            </tr>
        </table>
       <br />
    </div>
    </form>
</body>
</html>
