<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addremovebooks.aspx.cs" Inherits="addremovebooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            font-weight: bold;
            text-align: right;
            width: 311px;
            height: 37px;
        }
        .style5
        {
            text-align: left;
            height: 37px;
            width: 355px;
        }
        .style6
        {
            font-weight: bold;
            text-align: right;
            width: 311px;
            height: 42px;
        }
        .style7
        {
            text-align: left;
            height: 42px;
            width: 355px;
        }
        .style8
        {
            font-weight: bold;
            text-align: right;
            width: 311px;
            height: 59px;
        }
        .style9
        {
            text-align: left;
            height: 59px;
            width: 355px;
        }
        .style10
        {
            font-weight: bold;
            text-align: right;
            width: 311px;
            height: 45px;
        }
        .style11
        {
            text-align: left;
            height: 45px;
            width: 355px;
        }
        .style12
        {
            font-weight: bold;
            text-align: right;
            width: 311px;
            height: 44px;
        }
        .style13
        {
            text-align: left;
            height: 44px;
            width: 355px;
        }
        .style14
        {
            font-size: xx-large;
        }
        .style15
        {
            text-align: left;
            height: 37px;
            width: 264px;
        }
        .style16
        {
            text-align: left;
            height: 42px;
            width: 264px;
        }
        .style17
        {
            text-align: left;
            height: 59px;
            width: 264px;
        }
        .style18
        {
            text-align: left;
            height: 45px;
            width: 264px;
        }
        .style19
        {
            text-align: left;
            height: 44px;
            width: 264px;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="abstract-waves-on-a-blue-background.jpg">
    <form id="form1" runat="server">
    <div style="font-weight: 700; text-align: center; font-size: x-large">
    
        <br />
        <span class="style14">Add / Remove Books 
        <br />
        </span>
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style4">
                Book Name
            </td>
            <td class="style15">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" style="text-align: left" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Invalid Book Name!" 
                    ValidationExpression="^[a-z A-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Author</td>
            <td class="style16">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Invalid Author Name!" 
                    ValidationExpression="^[a-z A-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Category</td>
            <td class="style17">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
                    style="text-align: center" Width="200px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource1" DataTextField="Category" 
                    DataValueField="Category">
                </asp:DropDownList>
            </td>
            <td class="style9">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    SelectCommand="SELECT [Category] FROM [BookCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Publisher</td>
            <td class="style18">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid Publisher Name!" 
                    ValidationExpression="^[a-z A-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Edition</td>
            <td class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Invalid Edition!" 
                    ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Quantity</td>
            <td class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Invalid Quantity!" 
                    ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Book Type:</td>
            <td class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Height="31px" Width="198px">
                    <asp:ListItem>Reference</asp:ListItem>
                    <asp:ListItem>Stack</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                Enter Book ID to Remove from Database:</td>
            <td class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Invalid BookID!" 
                    ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Add" 
        Width="71px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" 
        style="font-weight: 700; text-align: center" Text="Remove" 
        onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-weight: 700; font-size: x-large">Back</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" 
        style="font-size: x-large; font-weight: 700" 
        Text="Book Added Successfully to the Database!" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" 
        style="font-weight: 700; font-size: x-large" 
        Text="Book Removed from the Database!" Visible="False"></asp:Label>
    <br />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        style="font-weight: 700" Text="OK" Visible="False" Width="76px" />
    </form>
</body>
</html>
