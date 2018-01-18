<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
        .style3
        {
            width: 466px;
            text-align: right;
        }
        .style4
        {
            width: 198px;
            text-align: center;
        }
        .style5
        {
            width: 466px;
            text-align: right;
            height: 40px;
            color: #FFFFFF;
            font-size: large;
        }
        .style6
        {
            width: 198px;
            text-align: center;
            height: 40px;
        }
        .style7
        {
            height: 40px;
        }
        .style8
        {
            color: #FFFFFF;
        }
        .style9
        {
            width: 466px;
            text-align: right;
            color: #FFFFFF;
            font-size: large;
        }
        .style10
        {
            font-size: larger;
        }
        .style11
        {
            text-decoration: underline;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="text-align: left" bgcolor="#333300" 
    
    
    background="2013-03-05%2004_01_34-Cool-Backgrounds-Wooden-Design-HD-Wallpaper.png">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong style="font-size: xx-large">
        <br />
        <em>
        <span class="style8">
        <br />
        </span></em>
        </strong><em>
        <span class="style8"><span class="style10">
    
        <strong>
        PONDICHERRY ENGINEERING COLLEGE</strong></span><strong style="font-size: xx-large"><br />
        <br />
        </strong>
    
        <strong>
        DEPARTMENT OF INFORMATION TECHNOLOGY</strong></span></em><strong style="font-size: xx-large"><br 
            class="style8" />
        </strong><strong>
        <br />
        <span class="style8"><em><span class="style11">DEPARTMENT LIBRARY</span>
        <br />
        <br />
        </em></span></strong>
    
    </div>
    <table class="style2" align="center">
        <tr>
            <td class="style9">
                <strong>Member ID</strong></td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="150px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Studentname!!!" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Password</strong></td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password" 
                    Width="150px" style="text-align: left"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter password!!!" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/ForgotPassword.aspx" ForeColor="#FFCC00" 
                    style="font-size: large">Forgot Password?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    Width="99px" 
                    style="font-weight: 700; font-size: small; font-style: italic" />
            </td>
            <td>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                    ForeColor="#FFCC00" style="font-size: x-large">Click here to register!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p style="text-align: center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="text-align: left; font-size: x-large" Text="Label" Visible="False" 
            BackColor="Black" ForeColor="White"></asp:Label>
    
        </p>
    </form>
</body>
</html>
