<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
    <title>ITD SignUp</title>
    <script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style type="text/css">

        .style2
        {
            width: 78%;
            height: 426px;
        }
        .style13
        {
            text-align: center;
            width: 400px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            height: 3px;
        }
        .style19
        {
            width: 400px;
            text-align: center;
            height: 213px;
        }
        .style21
        {
            text-align: center;
            width: 1422px;
            margin-top: 12px;
        }
        .style27
        {
            font-size: x-large;
        }
        .style30
        {
            text-align: center;
            width: 186px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
            height: 70px;
        }
        .style32
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            width: 372px;
        }
        .style34
        {
            text-align: center;
            width: 186px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
            height: 3px;
        }
        .style37
        {
            font-family: Arial;
            font-size: medium;
            border-radius:40px;
        }
        .style49
        {
            width: 227px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
        }
        .style51
        {
            width: 282px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
            height: 70px;
        }
        .style52
        {
            width: 400px;
            text-align: center;
            height: 70px;
        }
        #form1
        {
            height: 889px;
            width: 1509px;
        }
        .style55
        {
            width: 282px;
            font-size: x-large;
            height: 213px;
        }
        .style11
        {
            height: 164px;
            text-align: center;
        }
   
        .style8
        {
            width: 138px;
            height: 102px;
            margin-left: 23px;
            margin-top: 13px;
            margin-bottom: 0px;
        }
        .style57
        {
            text-align: center;
            height: 70px;
            width: 359px;
        }
        .style58
        {
            text-align: center;
            width: 372px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            height: 3px;
        }
        .style59
        {
            width: 372px;
            text-align: center;
            height: 70px;
        }
        .style60
        {
            width: 88%;
            border: 1px solid #000000;
        }
        .style61
        {
            width: 282px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
            height: 3px;
        }
        .style62
        {
            font-size: x-large;
            height: 222px;
            text-align: center;
            width: 244px;
        }
        .style63
        {
            height: 129px;
            text-align: center;
        }
        .style64
        {
            text-align: center;
            width: 244px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
            height: 129px;
        }
        .style66
        {
            width: 282px;
            font-size: x-large;
            height: 222px;
        }
        .style67
        {
            height: 222px;
            text-align: center;
        }
        .style68
        {
            text-align: center;
            height: 102px;
        }
        .style69
        {
            width: 244px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
            height: 102px;
        }
        .style70
        {
            width: 282px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
            height: 102px;
        }
        </style>
</head>
<body style="height: 861px; width: 1505px">
    <form id="form1" runat="server">
    <div style="width: 1502px; height: 820px;">
    
    <div>
    &nbsp;<div class="style11" 
            style="background-color: #5398FF; color: #000000; margin-bottom: 22px; width: 1502px;">
            <strong style="font-size: xx-large">
            
        <img alt="Logo" class="style8" src="Photos/ITD%20logo.png" style="border-radius:10px;"/><br />
            <span class="style21" style="color: #000000">Income Tax Department</span></strong><br />
        </div>
       
        <br />
        <table align="center" cellspacing="1" class="style60" 
            style="border-color: #000000; border-width: 2px">
            <tr>
                <td class="style69">
                    First Name</td>
                <td class="style68">
                    <asp:TextBox ID="TextBoxFN" runat="server" Height="42px" Width="209px" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="First Name Required" ControlToValidate="TextBoxFN" 
                        Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style70">
                    Last Name</td>
                <td class="style68">
                    <asp:TextBox ID="TextBoxLN" runat="server" Height="42px" Width="209px" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Last Name Required" ControlToValidate="TextBoxLN" 
                        Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style62">
                    <strong>Upload Photo</strong></td>
                <td class="style67">
                    <asp:Image ID="ImageDP" runat="server" Height="106px" style="text-align: left" 
                        Width="119px" BorderStyle="Solid" BorderWidth="1px" />
                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Red" 
                        Visible="False"></asp:Label>
                    <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Upload Image" Height="32px" Width="155px" />
&nbsp;<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"/>
                </td>
                <td class="style66">
                    <strong>&nbsp;&nbsp; Email (Username)</strong></td> 
                    <td class="style67">
                    <asp:TextBox ID="TextboxUser" runat="server" Width="211px" Height="43px" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter email" ForeColor="Red" ControlToValidate="TextboxUser"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style64">
                    Password</td>
                <td class="style63">
                    <asp:TextBox ID="TextBoxPwd" runat="server" Width="210px" TextMode="Password" 
                        Height="42px" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Password" ForeColor="Red" 
                        ControlToValidate="TextBoxPwd"></asp:RequiredFieldValidator>
                </td>
                <td class="style51">
                    Confirm Password</td>
                <td class="style52">
                    <asp:TextBox ID="TextBoxCNFRM" runat="server" TextMode="Password" Height="35px" 
                        Width="209px" style="border-top:5px solid black; border-left: 0px none; border-right:0px none; border-top: 0px none;"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Password Mismatch" ForeColor="Red" 
                        ControlToCompare="TextBoxPwd" ControlToValidate="TextBoxCNFRM"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxCNFRM" ErrorMessage="Enter Confirmed Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
        <p class="style21">
                    <asp:Button ID="SignUpBtn" runat="server" Text="SignUp" Font-Bold="True" 
            Font-Italic="True" ForeColor="#3333FF" onclick="SignUpBtn_Click" 
            CssClass="style37" Height="41px" Width="109px" />
                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" Font-Bold="True" 
            Font-Italic="True" ForeColor="#3333FF" onclick="Button2_Click" 
            Height="42px" Width="96px" CssClass="style37" />
        <br />
    <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" Font-Bold="True"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Already Registered ? " 
        CssClass="style27"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
        ForeColor="#3399FF" NavigateUrl="~/Login.aspx" CssClass="style27">Login here.</asp:HyperLink>
    </p>
    
    </div>
    </form>
</body>
</html>
