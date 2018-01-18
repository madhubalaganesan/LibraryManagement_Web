<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Issue.aspx.cs" Inherits="Issue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style3
        {
            font-size: large;
            font-weight: normal;
            text-align: center;
        }
        #form1
        {
            text-align: center;
        }
        .style4
        {
            font-size: large;
        }
    </style>
</head>
<body style="font-weight: 700; font-size: large" 
    background="katerva-sustainability-innovation.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        ISSUE A BOOK</div>
    <p class="style3">
        <span class="style4">Enter the Book ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
            ontextchanged="TextBox1_TextChanged" Width="154px" CssClass="style4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid Book ID!" 
            ValidationExpression="^[A-Z a-z 0-9]*$"></asp:RegularExpressionValidator>
    </p>
    <p class="style3">
        Enter the Member ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="155px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Invalid Member ID!" 
            ValidationExpression="^[A-Z a-z 0-9]*$"></asp:RegularExpressionValidator>
    </p>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        style="font-weight: 700" Text="Issue" Width="83px" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                SortExpression="MemberID" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="Count" HeaderText="Count" 
                SortExpression="Count" />
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
        
        SelectCommand="SELECT [Name], [MemberID], [Category], [Course], [Department], [Count] FROM [StudentRegg] WHERE ([MemberID] = @MemberID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="MemberID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" 
                SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Type" HeaderText="Type" 
                SortExpression="Type" />
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
        
        SelectCommand="SELECT [ID], [BookName], [Author], [Category], [Type] FROM [book] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" 
        Text="This is a Reference Book. It will not be Issued!" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Invalid User!" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Book Issued Successfully!" 
        Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" 
        Text="You cannot take anymore books. Sorry! :(" Visible="False"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Book Currently Unavailable!" 
            Visible="False"></asp:Label>
    </p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
