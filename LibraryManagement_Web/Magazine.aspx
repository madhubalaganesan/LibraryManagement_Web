<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Magazine.aspx.cs" Inherits="Magazine" %>

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
            width: 100%;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
            text-align: right;
            width: 353px;
            height: 34px;
        }
        .style6
        {
            height: 34px;
            width: 243px;
            text-align: center;
        }
        .style5
        {
            height: 34px;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="monitor-blue-background.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>
        <br />
        Add Magazine to the Database<br />
        </strong>
    
    </div>
    <table class="style2">
        <tr>
            <td class="style4">
                Enter the Name of the Magazine:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Invalid Name!" 
                    style="font-weight: 700" ValidationExpression="^[a-z A-Z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter the Date of Issue:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Invalid Date!" 
                    style="font-weight: 700" ValidationExpression="^[0-9/]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Select the Type of Issue:</td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    <asp:ListItem>Daily</asp:ListItem>
                    <asp:ListItem>Weekly</asp:ListItem>
                    <asp:ListItem>Monthly</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
                Select the Category of Magazine:</td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                    <asp:ListItem>Health</asp:ListItem>
                    <asp:ListItem>Music</asp:ListItem>
                    <asp:ListItem>Entertainment</asp:ListItem>
                    <asp:ListItem>Yoga</asp:ListItem>
                    <asp:ListItem>Travel</asp:ListItem>
                    <asp:ListItem>Lifestyle</asp:ListItem>
                    <asp:ListItem>Art</asp:ListItem>
                    <asp:ListItem>Science &amp; Technology</asp:ListItem>
                    <asp:ListItem>Sports</asp:ListItem>
                    <asp:ListItem>News</asp:ListItem>
                    <asp:ListItem>Politics</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
        style="font-weight: 700" Text="Add" Width="104px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
&nbsp;<p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-size: x-large" 
            Text="Magazine Successfully added to the Database!" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="font-weight: 700" Text="OK" Visible="False" Width="101px" />
    </p>
    </form>
</body>
</html>
