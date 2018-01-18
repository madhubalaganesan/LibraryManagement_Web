<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DailyReport.aspx.cs" Inherits="DailyReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 100%;
        }
        .style5
        {
            font-size: x-large;
            text-align: left;
        }
        .style6
        {
            font-size: x-large;
            text-align: right;
            width: 369px;
        }
        .style7
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</head>
<body background="background9.jpg">
    <form id="form1" runat="server">
    <div class="style2">
    
        <strong><span class="style1">
        <br />
        Daily Report</span>
        <br />
        </strong>
    
    </div>
    <p>
&nbsp;<table class="style3">
            <tr>
                <td class="style6">
                    <strong style="text-align: right">Enter the Date:</strong></td>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" 
                        style="text-align: center" Width="154px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" 
                        style="font-size: large"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </p>
    <p class="style7">
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            style="font-weight: 700" Text="Generate" Width="103px" />
    </p>
    <p class="style7">
        <strong>1) Books Issued</strong></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource1">
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
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                    SortExpression="MemberID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
            SelectCommand="SELECT [ID], [BookName], [Author], [Category], [Publisher], [Edition], [MemberID], [ReturnDate] FROM [book] WHERE ([Issuedate] = @Issuedate)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="Issuedate" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="style7">
        <strong>2) Books to be Returned</strong></p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource2">
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
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                    SortExpression="MemberID" />
                <asp:BoundField DataField="Issuedate" HeaderText="Issuedate" 
                    SortExpression="Issuedate" />
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
            
            SelectCommand="SELECT [ID], [BookName], [Author], [Category], [Publisher], [Edition], [MemberID], [Issuedate] FROM [book] WHERE ([ReturnDate] = @ReturnDate2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="ReturnDate2" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="style7">
        <strong>3) Fine Collected</strong></p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" />
                <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
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
            
            SelectCommand="SELECT [MID], [Fine] FROM [DateFine] WHERE ([Date] = @Date2)">
            <SelectParameters>
                <asp:SessionParameter Name="Date2" SessionField="Date" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <strong><span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total 
        Fine Collected : Rs. </span>
        <asp:Label ID="Label1" runat="server" ForeColor="#990000" 
            style="font-size: x-large" Text="Label"></asp:Label>
        </strong>
    </asp:Panel>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" 
            style="font-weight: 700; font-size: x-large" Text="No Report for Today!" 
            Visible="False"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
            style="font-size: x-large; text-align: center">Back</asp:HyperLink>
    </p>
    </form>
</body>
</html>
