<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
        .style4
        {
            text-align: left;
            height: 65px;
            width: 956px;
            float:left;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:AdRotator ID="AdRotator1" runat="server" BorderColor="White" 
            BorderStyle="Solid" BorderWidth="2px" DataSourceID="XmlSlider" Height="300px" 
            style="text-align: center" Width="950px" />
        <asp:XmlDataSource ID="XmlSlider" runat="server" 
            DataFile="~/SliderImageXML.xml"></asp:XmlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1500">
        </asp:Timer>
        <br />
    </ContentTemplate>
</asp:UpdatePanel>
    </asp:Content>
