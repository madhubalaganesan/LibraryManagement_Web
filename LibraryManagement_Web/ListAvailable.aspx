<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListAvailable.aspx.cs" Inherits="ListAvailable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            font-size: x-large;
            color: #000000;
        }
        .style2
        {
            font-size: x-large;
            color: #990000;
        }
    </style>
</head>
<body background="background2.jpg">
    <form id="form1" runat="server">
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <strong>LIST OF AVAILABLE BOOKS</strong></p>
    <p class="style1">
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource1" style="font-size: medium">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" 
                SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                SortExpression="Publisher" />
            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                SortExpression="Edition" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                SortExpression="MemberID" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Issuedate" HeaderText="Issuedate" 
                SortExpression="Issuedate" />
            <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" 
                SortExpression="ReturnDate" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False">Available</asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [book] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="status" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="style3">
            <strong><em><span class="style4">Total number of Books Available :</span><span 
                class="style2"> </span>
            <asp:Label ID="Label1" runat="server" CssClass="style2" Text="Label"></asp:Label>
            </em></strong>
        </div>
    </asp:Panel>
    <p style="text-align: center">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
    </p>
    </form>
</body>
</html>
