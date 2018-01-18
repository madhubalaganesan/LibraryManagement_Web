<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

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
        #form1
        {}
        .style2
        {
            font-size: x-large;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body background="Blue_computer_background.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>STOCK MAINTENANCE</strong></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label1" runat="server" 
        style="font-weight: 700; font-size: x-large" Text="1) Books"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource1" style="text-align: center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
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
                SortExpression="Issuedate"/>
            <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" 
                SortExpression="ReturnDate"/>
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
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="style3">
            <strong><em><span class="style2">Total Number of Books :&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label5" runat="server" 
                style="font-size: x-large; color: #990000" Text="Label"></asp:Label>
            </em></strong>
        </div>
    </asp:Panel>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [book]">
    </asp:SqlDataSource>
&nbsp;<asp:Label ID="Label2" runat="server" 
        style="font-weight: 700; font-size: x-large; text-align: center" 
        Text="2) Journals"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" 
                SortExpression="ISSN" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [Journal]"></asp:SqlDataSource>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="style3">
            <strong><em><span class="style2">Total Number of Journals :&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label6" runat="server" 
                style="font-size: x-large; color: #990000" Text="Label"></asp:Label>
            </em></strong>
        </div>
    </asp:Panel>
    <br />
    <asp:Label ID="Label3" runat="server" 
        style="font-weight: 700; font-size: x-large" Text="3) Magazines"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [Magazine]"></asp:SqlDataSource>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <div class="style3">
            <strong><em><span class="style2">Total Number of Magazines :&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label7" runat="server" 
                style="font-size: x-large; color: #990000" Text="Label"></asp:Label>
            </em></strong>
        </div>
    </asp:Panel>
    <br />
    <asp:Label ID="Label4" runat="server" 
        style="font-weight: 700; font-size: x-large" Text="4) E-Books"></asp:Label>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [download]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click1" 
        style="font-weight: 700; text-align: center" Text="Back" Width="79px" />
    </form>
</body>
</html>
