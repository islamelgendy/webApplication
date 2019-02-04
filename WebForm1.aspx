<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Web Application</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <%=xx %>
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
&nbsp;<asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="Num1TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Age:&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
        &nbsp;<asp:TextBox ID="Num2TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Select Item" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Item1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Item2" Value="2"></asp:ListItem>
            <asp:ListItem Text="Item3" Value="3"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="ResultTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    
    &nbsp;
        <asp:Button ID="SumButton" runat="server" OnClick="SumButton_Click" Text="Sum" />
    
    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm2.aspx?query1=0&query2=5">Test Web Form</asp:HyperLink>
    
    &nbsp;<a id="HyperLink2" href="WebForm3.aspx">Another Link</a></div>
    </form>
</body>
</html>