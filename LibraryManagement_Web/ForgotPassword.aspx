<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

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
            margin-top: 0px;
            margin-bottom: 15px;
        }
        #form1
        {
            text-align: center;
        }
        .style3
        {
            font-size: x-large;
            font-weight: 700;
        }
    </style>
</head>
<body background="greenback.jpg">
    <form id="form1" runat="server">
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <strong>Password Retrieval</strong></p>
    <strong>
    <br />
    <asp:Panel ID="Panel1" runat="server" CssClass="style2" Height="30px">
        &nbsp;&nbsp;&nbsp; Enter your Member ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
            style="text-align: left" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid Member ID!" 
            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="style2" Height="30px">
        &nbsp;Enter the Name : <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Invalid Name!" 
            ValidationExpression="^[a-z A-Z]*$"></asp:RegularExpressionValidator>
        </strong>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="style2" Height="30px">
        Enter your Phone number :<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Invalid Phone no!" 
            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </strong>
    </asp:Panel>
    <br />
    </strong>
    <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
        style="font-weight: 700; text-align: center" Text="Check" Width="94px" />
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="31px" Visible="False">
        <span class="style3">Your Password is :&nbsp; </span>
        <asp:Label ID="Label1" runat="server" ForeColor="#000066" Text="Label" 
            CssClass="style3"></asp:Label>
    </asp:Panel>
    <br />
    <asp:Label ID="Label2" runat="server" 
        style="font-size: x-large; font-weight: 700" Text="Your Phone Number is Wrong!" 
        Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" 
        style="font-weight: 700; font-size: x-large" Text="Your Username is Wrong!" 
        Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" 
        style="font-weight: 700; font-size: x-large" 
        Text="Your Member ID is Wrong! Password cannot be retrieved!" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
