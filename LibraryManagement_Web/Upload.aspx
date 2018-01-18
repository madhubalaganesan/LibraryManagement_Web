<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Upload.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="Light-Greenback.jpg">
    <form id="form1" runat="server">
    <div>
    
        <div class="style2">
            <br />
            <strong><span class="style1">
            <br />
            <br />
            Upload E-Books!</span></strong><br />
            <br />
            <br />
    
        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="217px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
            Text="Upload" />
        <br />
        <br />
            <br />
        <asp:Label ID="lblMessage" runat="server" 
                style="font-size: x-large; font-weight: 700;"></asp:Label>
        <br />
        <br />
        </div>
    
    </div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Actions.aspx" 
        style="font-weight: 700; font-size: x-large">Back</asp:HyperLink>
    </form>
</body>
</html>
