<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ASP.NetDay2.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Home Page</h1>
        </div>
        <div>
            <asp:Button Text="Sign Out" ID="BtnSignOut" OnClick="BtnSignOut_Click" runat="server" />
        </div>
    </form>
</body>
</html>
