<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewCategory.aspx.cs" Inherits="NewCategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-weight: 700; font-size: xx-large; text-align: center" 
    background="Sonic-Free-Riders-background-art.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        Add New Category of Books</div>
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="259px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
        ErrorMessage="*" ForeColor="Red" style="font-size: large"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Invalid Category!" 
        style="font-size: large" ValidationExpression="^[a-z A-Z]*$"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="font-weight: 700" Text="Add" Width="83px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx">Back</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Category of Book added!" 
        Visible="False" style="font-size: x-large"></asp:Label>
    </form>
</body>
</html>
