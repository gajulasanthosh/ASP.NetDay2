<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="ASP.NetDay2.Demo1" %>
<%--<%@ OutputCache Duration="60" VaryByParam="none" %>--%>
<%@ OutputCache Duration="120" VaryByControl="DdlCountries" Location="Server" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            <h1>
                <asp:Label Text="" ID="LblDate" runat="server" />
            </h1>
            <asp:Button Text="Change Text" ID="date" OnClick="date_Click" runat="server" />
        </div>--%>
        <div>
            <asp:Label Text="Select a Country" runat="server" />
            <asp:DropDownList ID="DdlCountries" runat="server">
                <asp:ListItem Text="Germany" />
                <asp:ListItem Text="UK" />
                <asp:ListItem Text="Mexico" />
                <asp:ListItem Text="USA" />
            </asp:DropDownList>
            <asp:Button Text="GetData" ID="BtnGetData" OnClick="BtnGetData_Click" runat="server" />
        </div>
        <div>
            <asp:GridView ID="GridCustomers" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
