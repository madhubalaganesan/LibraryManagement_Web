<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Journals.aspx.cs" Inherits="Journals" %>

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
        .style5
        {
            height: 34px;
        }
        .style6
        {
            height: 34px;
            width: 243px;
            text-align: center;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="lightredback.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>
        <br />
        Add a Journal to the Database<br />
        </strong>
    
    </div>
    <table class="style2">
        <tr>
            <td class="style4">
                Enter the Name of the Journal:</td>
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
                    <asp:ListItem>Monthly</asp:ListItem>
                    <asp:ListItem>Quarterly</asp:ListItem>
                    <asp:ListItem>Half yearly</asp:ListItem>
                    <asp:ListItem>Annual</asp:ListItem>
                    <asp:ListItem>Once</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter the ISSN Code:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Select the Category of Journal:</td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                    <asp:ListItem>Electonics &amp; Communication</asp:ListItem>
                    <asp:ListItem>Electrical &amp; Electronics</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Information  Technology</asp:ListItem>
                    <asp:ListItem>Chemical Engineering</asp:ListItem>
                    <asp:ListItem>Civil Engineering</asp:ListItem>
                    <asp:ListItem>Electronics &amp; Instrumentation</asp:ListItem>
                    <asp:ListItem>Mechanical </asp:ListItem>
                    <asp:ListItem>Economics</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button2" runat="server" Height="33px" onclick="Button2_Click" 
        style="font-weight: 700" Text="Add" Width="100px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-size: x-large">Back</asp:HyperLink>
&nbsp;<p>
        &nbsp;</p>
    <asp:Label ID="Label1" runat="server" 
        style="font-weight: 700; font-size: x-large" 
        Text="Journal Successfully added to the Database!" Visible="False"></asp:Label>
    <p>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="font-weight: 700" Text="OK" Visible="False" Width="86px" />
    </p>
    </form>
</body>
</html>
