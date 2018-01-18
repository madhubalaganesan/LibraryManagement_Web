<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoDueCert.aspx.cs" Inherits="NoDueCert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style4
        {
            width: 223px;
        }
        .style5
        {
            width: 323px;
            font-size: large;
            font-weight: 700;
            text-align: right;
        }
        #form1
        {
            text-align: center;
        }
        .style6
        {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 73px" background="Sonic-Free-Riders-background-art.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>
        <br />
        <span class="style6">No Due - Verification</span><br />
        </strong>
    
    </div>
    <table class="style2">
        <tr>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter the Member ID:</td>
            <td class="style4" style="text-align: center">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" 
                    style="text-align: center" Width="177px"></asp:TextBox>
            </td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Invalid Member ID!" 
                    ValidationExpression="^[A-Z a-z 0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
        style="font-weight: 700; margin-left: 0px" Text="Verify" Width="95px" />
    <br />
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="SqlDataSource1" 
        GridLines="Both" Width="181px">
        <EditItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            EmailID:
            <asp:TextBox ID="EmailIDTextBox" runat="server" 
                Text='<%# Bind("EmailID") %>' />
            <br />
            MemberID:
            <asp:TextBox ID="MemberIDTextBox" runat="server" 
                Text='<%# Bind("MemberID") %>' />
            <br />
            Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" 
                Text='<%# Bind("Category") %>' />
            <br />
            Course:
            <asp:TextBox ID="CourseTextBox" runat="server" 
                Text='<%# Bind("Course") %>' />
            <br />
            Year:
            <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" 
                Text='<%# Bind("Department") %>' />
            <br />
            PhoneNo:
            <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
            <br />
            Count:
            <asp:TextBox ID="CountTextBox" runat="server" Text='<%# Bind("Count") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            EmailID:
            <asp:TextBox ID="EmailIDTextBox" runat="server" 
                Text='<%# Bind("EmailID") %>' />
            <br />
            MemberID:
            <asp:TextBox ID="MemberIDTextBox" runat="server" 
                Text='<%# Bind("MemberID") %>' />
            <br />
            Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" 
                Text='<%# Bind("Category") %>' />
            <br />
            Course:
            <asp:TextBox ID="CourseTextBox" runat="server" 
                Text='<%# Bind("Course") %>' />
            <br />
            Year:
            <asp:TextBox ID="YearTextBox" runat="server" 
                Text='<%# Bind("Year") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" 
                Text='<%# Bind("Department") %>' />
            <br />
            PhoneNo:
            <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
            <br />
            Count:
            <asp:TextBox ID="CountTextBox" runat="server" Text='<%# Bind("Count") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            EmailID:
            <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' />
            <br />
            MemberID:
            <asp:Label ID="MemberIDLabel" runat="server" Text='<%# Bind("MemberID") %>' />
            <br />
            Category:
            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>' />
            <br />
            Course:
            <asp:Label ID="CourseLabel" runat="server" Text='<%# Bind("Course") %>' />
            <br />
            Year:
            <asp:Label ID="YearLabel" runat="server" 
                Text='<%# Bind("Year") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" 
                Text='<%# Bind("Department") %>' />
            <br />
            PhoneNo:
            <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Bind("PhoneNo") %>' />
            <br />

            Count:
            <asp:Label ID="CountLabel" runat="server" Text='<%# Bind("Count") %>' />
            <br />

        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        
        
        SelectCommand="SELECT [Name], [EmailID], [MemberID], [Category], [Course], [Year], [Department], [PhoneNo], [Count] FROM [StudentRegg] WHERE ([MemberID] = @MemberID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MemberID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" 
        style="font-size: x-large; font-weight: 700" 
        Text="Membership Verified! No Dues Left! " Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" 
        style="font-weight: 700; font-size: x-large" 
        Text="You have books to be returned! " Visible="False"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-weight: 700; font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
