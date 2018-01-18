<%@ Page Language="C#" AutoEventWireup="true" CodeFile="useraction.aspx.cs" Inherits="useraction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 1012px;
            font-size: x-large;
        }
        .style6
        {
            width: 1012px;
            font-size: large;
        }
        .style7
        {
            width: 1012px;
            font-size: large;
            height: 40px;
        }
        .style8
        {
            height: 40px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body background="blue1back.jpg">
    <form id="form1" runat="server" class="style1">
    <div class="style4">
        <strong>User Actions</strong></div>
    <table class="style3">
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Panel ID="Panel1" runat="server" style="text-align: center">
                    Welcome
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC3300" 
                        style="text-align: left; font-size: x-large" Text="Label"></asp:Label>
                    !</asp:Panel>
            </td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" 
                    Width="124px" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/viewuserdetails.aspx">1. View User Details</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/updateform.aspx">2. Update User Details</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Search.aspx">3. Search for a Book</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/SearchMagazine.aspx">4. Search for a Magazine</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    NavigateUrl="~/SearchJournal.aspx">5. Search for a Journal</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/ViewBookDetails.aspx">6. View Book Details</asp:HyperLink>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Download.aspx">7. Download E-Books</asp:HyperLink>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
