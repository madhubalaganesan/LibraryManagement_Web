<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewBookDetails.aspx.cs" Inherits="ViewBookDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="font-weight: 700; font-size: xx-large; text-align: center" 
    background="pictures-for-website-background-2.jpg">
    <form id="form1" runat="server">
    <p>
        Details of Books Taken</p>
    <p>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="140px" 
            Visible="False"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p style="font-size: large">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="font-size: medium">
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
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT [ID], [BookName], [Author], [Category], [Publisher], [Edition], [Issuedate], [ReturnDate] FROM [book] WHERE ([MemberID] = @MemberID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MemberID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/useraction.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
