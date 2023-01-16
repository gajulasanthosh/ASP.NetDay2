<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoDataCache.aspx.cs" Inherits="ASP.NetDay2.DemoDataCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Welcome, </label><asp:Label Text="" ID="LblName" runat="server" />
        </div>
        <div>
            <asp:GridView ID="GridCustomers" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
