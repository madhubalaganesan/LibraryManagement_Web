<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateform.aspx.cs" Inherits="updateform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 61px;
            width: 898px;
            text-align: left;
        }
        .style1
        {
            font-size: xx-large;
        }
    </style>
</head>
<body style="width: 877px; height: 40px; text-align: center" 
    background="background2.jpg">
    <form id="form1" runat="server">
    <p class="style1">
        <strong>UPDATE YOUR ACCOUNT HERE!</strong></p>
    <asp:Panel ID="Panel2" runat="server" style="text-align: left">
        <asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="text-align: left">
        Select The Field To be Updated:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="200px">
            <asp:ListItem Selected="True">-Select One-</asp:ListItem>
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Year</asp:ListItem>
            <asp:ListItem>Category</asp:ListItem>
            <asp:ListItem>Course</asp:ListItem>
            <asp:ListItem>Department</asp:ListItem>
            <asp:ListItem>Password</asp:ListItem>
            <asp:ListItem>PhoneNo</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            Text="Go" />
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Please Select at least one!!!" 
            ForeColor="#339933"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/useraction.aspx" 
            style="font-size: large">Back</asp:HyperLink>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" style="text-align: left">
        Enter The Name To Be Updated :<asp:TextBox ID="TextBox13" runat="server" 
            Height="22px" Width="128px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" 
            runat="server" Text="Update" Width="100px" onclick="Button4_Click" />
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
            runat="server" ControlToValidate="TextBox13" 
            ErrorMessage="Please Enter Only Alphabets!!!" ForeColor="#339933" 
            ValidationExpression="^[A-Z a-z ]+$"></asp:RegularExpressionValidator>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel12" runat="server" style="text-align: left">
        Enter The Year To Be Updated :&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" 
            runat="server" Height="16px" Width="93px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:Button ID="Button13" runat="server" onclick="Button13_Click" 
            Text="Update" Width="100px" />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="DropDownList5" ErrorMessage="Please Select at least one!!!" 
            ForeColor="#339933"></asp:RequiredFieldValidator>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel15" runat="server" style="text-align: left">
        Enter The Email ID To Be Updated :<asp:TextBox ID="TextBox22" runat="server" 
            Width="202px"></asp:TextBox>
       
            &nbsp; &nbsp;&nbsp;<asp:Button ID="Button16" runat="server" onclick="Button13_Click" 
            Text="Update" Width="100px" />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
            runat="server" ControlToValidate="TextBox22" 
            ErrorMessage="Please Enter a valid Email ID!!" ForeColor="#339933" 
            ValidationExpression="^[A-Z a-z @.]+$"></asp:RegularExpressionValidator>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server" style="text-align: left">
        Enter The Category To Be Updated :<asp:DropDownList ID="DropDownList2" 
            runat="server">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:Button ID="Button7" runat="server" Text="Update" Width="100px" 
            onclick="Button7_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownList2" ErrorMessage="Please Select at least one!!!" 
            ForeColor="#339933"></asp:RequiredFieldValidator>
&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" style="text-align: left">
        Enter The Course To Be Updated :<asp:DropDownList ID="DropDownList3" 
            runat="server">
            <asp:ListItem>B.Tech</asp:ListItem>
            <asp:ListItem>M.Tech</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" 
            Text="Update" Width="100px" onclick="Button8_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownList3" ErrorMessage="Please Select at least one!!!" 
            ForeColor="#339933"></asp:RequiredFieldValidator>
    </asp:Panel>
    <asp:Panel ID="Panel9" runat="server" style="text-align: left">
        Enter The Department To Be Updated :<asp:DropDownList ID="DropDownList4" 
            runat="server">
            <asp:ListItem>Information Technology</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>CSC</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>Mechanical</asp:ListItem>
            <asp:ListItem>Civil</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" 
            Text="Update" Width="100px" onclick="Button9_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="DropDownList4" ErrorMessage="Please Select at least one!!!" 
            ForeColor="#339933"></asp:RequiredFieldValidator>
    </asp:Panel>
    <asp:Panel ID="Panel11" runat="server" style="text-align: left" Width="894px">
        Enter The Password :<asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button11" runat="server" Text="Update" Width="100px" 
            onclick="Button11_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel13" runat="server" style="text-align: left">
        Enter The Phone Number :<asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button14" runat="server" onclick="Button14_Click" Text="Update" 
            Width="95px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel14" runat="server" style="text-align: center" 
        Visible="False">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-size: x-large" 
            Text="Your Account has been Updated Successfully!"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button15" runat="server" Height="30px" onclick="Button15_Click" 
            style="font-weight: 700" Text="OK" Width="98px" />
    </asp:Panel>
    </form>
</body>
</html>
