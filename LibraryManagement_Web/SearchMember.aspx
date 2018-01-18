<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchMember.aspx.cs" Inherits="SearchMember" %>

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
            font-size: large;
            font-weight: normal;
            text-align: center;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="checkedgreenback.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Search a Member here!</strong></div>
    <p>
        <span class="style2">Search by typing the MemberID 
                    </span>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="27px" 
                        style="text-align: left; margin-left: 0px" Width="382px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;
                    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Search" 
                        Width="81px" />
                </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataKeyNames="UserID" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" 
                    SortExpression="UserID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID" />
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                    SortExpression="MemberID" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Course" HeaderText="Course" 
                    SortExpression="Course" />
                <asp:BoundField DataField="Year" HeaderText="Year" 
                    SortExpression="Year" />
                <asp:BoundField DataField="Department" HeaderText="Department" 
                    SortExpression="Department" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                    SortExpression="PhoneNo" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count" />
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
            
            SelectCommand="SELECT * FROM [StudentRegg] WHERE ([MemberID] = @MemberID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="MemberID" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="text-align: center; font-weight: 700; font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
