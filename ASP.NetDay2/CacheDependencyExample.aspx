<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheDependencyExample.aspx.cs" Inherits="ASP.NetDay2.CacheDependencyExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="" ID="LblText" runat="server" />
        </div>
        <div>
            <asp:Button Text="Get Text" ID="BtnGet" OnClick="BtnGet_Click" runat="server" />
        </div>
    </form>
</body>
</html>
