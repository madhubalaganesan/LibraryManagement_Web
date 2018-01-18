<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewuserdetails.aspx.cs" Inherits="viewuserdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 370px;
        }
        .style3
        {
            width: 155px;
        }
        .style4
        {
            font-size: xx-large;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            color: #FFFFFF;
        }
        .style7
        {
            width: 200px;
            height: 141px;
        }
    </style>
</head>
<body background="abstract-waves-on-a-blue-background.jpg">
    <form id="form1" runat="server">
    <div>
    
        <div class="style5">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <strong><span class="style4"><span class="style6">USER DETAILS</span> </span></strong>
        </div>
        <table class="style1">
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                        style="text-align: center" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <img alt="" class="style7" src="viewprofile.jpg" /></td>
            </tr>
        </table>
&nbsp;&nbsp;
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FormView 
        ID="FormView1" runat="server" DataKeyNames="UserID" 
        DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        GridLines="Both" Width="205px">
        <EditItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
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
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" 
                Text='<%# Bind("Password") %>' />
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
            <asp:TextBox ID="PhoneNoTextBox" runat="server" 
                Text='<%# Bind("PhoneNo") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" 
                Text='<%# Bind("Password") %>' />
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
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
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
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Count:
            <asp:Label ID="CountLabel" runat="server" Text='<%# Bind("Count") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        SelectCommand="SELECT * FROM [StudentRegg] WHERE ([MemberID] = @MemberID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MemberID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="font-weight: 700" Text="Back" Width="80px" />
    </form>
</body>
</html>
