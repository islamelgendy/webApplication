<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="NamesDropDownList" runat="server">
        </asp:DropDownList>
&nbsp;<asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/WebForm1.aspx">Home</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
