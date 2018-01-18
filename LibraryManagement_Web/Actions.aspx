<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Actions.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
        }
        .style2
        {
            width: 60%;
            font-size: large;
        }
        .style3
        {
            width: 225px;
            text-align: left;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 225px;
            text-align: left;
            height: 23px;
        }
        .style6
        {
            width: 182px;
            text-align: left;
            height: 23px;
        }
        .style7
        {
            width: 182px;
            text-align: left;
        }
    </style>
</head>
<body background="checkedgreenback.jpg">
    <form id="form1" runat="server">
    <div class="style4">
    <div class="style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="font-weight: 700" Text="LogOut" />
&nbsp;&nbsp;&nbsp;&nbsp;
    
        <strong style="font-size: x-large">
        <br />
        </strong>
    
        <strong>
        <em>ACTIONS</em></strong><strong style="font-size: x-large"><br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
        </div>
        <table align="center" class="style2">
            <tr>
                <td class="style6">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Issue.aspx">1. Issue Books</asp:HyperLink>
                </td>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Magazine.aspx">10. Add Magazines</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Return.aspx">2. Return Books</asp:HyperLink>
                </td>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Upload.aspx">11. Upload E-Books</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:HyperLink ID="HyperLink11" runat="server" 
                        NavigateUrl="~/SearchMember.aspx">3. Search a Member</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Orderbooks.aspx">12. Place Order for Books</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Search.aspx">4. Search for a Book</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/DailyReport.aspx">13. Generate Daily Report</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                <asp:HyperLink ID="HyperLink18" runat="server" 
                    NavigateUrl="~/SearchMagazine.aspx">5. Search for a Magazine</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink20" runat="server" 
                        NavigateUrl="~/ListofIssued.aspx">14. List of Books Issued</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                <asp:HyperLink ID="HyperLink19" runat="server" 
                    NavigateUrl="~/SearchJournal.aspx">6. Search for a Journal</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink21" runat="server" 
                        NavigateUrl="~/ListAvailable.aspx">15. List of Books Available</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewCategory.aspx">7. Add Book Category</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Stock.aspx">14. Stock Maintenance</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:HyperLink ID="HyperLink5" runat="server" 
                        NavigateUrl="~/addremovebooks.aspx">8. Add / Remove Books</asp:HyperLink>
                </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/NoDueCert.aspx">15. No Due Verification </asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Journals.aspx">9. Add Journals</asp:HyperLink>
                </td>
                <td class="style3">
        <asp:HyperLink ID="HyperLink16" runat="server" 
            NavigateUrl="~/Notification.aspx" style="font-size: large">16. Send Return Notifications</asp:HyperLink>
                </td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
