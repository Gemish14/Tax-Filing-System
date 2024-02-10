<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxPayersChart.aspx.cs" Inherits="TaxPayersChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tax Payer's Chart</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align ="center" style="background-color:#668cff; color: white; font-size:30px"> Tax Payer's Chart</div>
    <div style="padding: 0 5% 0 5%">
    <embed src ="PDF Files/TaxPayerChart.pdf" type="application/pdf" style="width:100%; height:600px;"></embed>    
    </div>
    </form>
</body>
</html>
