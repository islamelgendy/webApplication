<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form Application Redirect</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Test Label:"></asp:Label>
&nbsp;<asp:TextBox ID="DataTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="First" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Second" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Third" />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="No.1" GroupName="image" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No.2" GroupName="image" />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="No.3" GroupName="image" />
        <br />
        <asp:Button ID="HomeButton" runat="server" OnClick="HomeButton_Click" Text="Display" />
    
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
    
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/photo.jpg" Height="300px" />
    
    </div>
    </form>
</body>
</html>
