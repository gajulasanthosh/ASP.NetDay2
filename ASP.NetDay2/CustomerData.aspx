<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerData.aspx.cs" Inherits="ASP.NetDay2.CustomerData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Country Name : <asp:TextBox ID="TxtCountry" runat="server" />
            <asp:Button Text="Get Customers" ID="BtnGetData" OnClick="BtnGetData_Click" runat="server" />
        </div>
        <div>
            <asp:GridView ID="GridCustomers" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
