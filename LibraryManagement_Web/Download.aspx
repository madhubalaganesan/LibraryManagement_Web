<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

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
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="Blue_computer_background.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>
        <br />
        Download E-Books here! </strong>
    
    </div>
    <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="267px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Search" 
        Width="74px" onclick="Button1_Click" />
&nbsp;
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/useraction.aspx" 
        style="font-weight: 700; font-size: x-large">Back</asp:HyperLink>
    <br />
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="ID" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                    InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="FileName" HeaderText="FileName" 
                    SortExpression="FileName" />
                    <asp:ButtonField CommandName="Download" HeaderText="Download" 
                    Text="Download" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
        
        SelectCommand="SELECT * FROM [download] WHERE ([FileName] LIKE '%' + @FileName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="FileName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
