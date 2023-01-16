<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ASP.NetDay2.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>Enter User ID</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEmailId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Enter Password</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" />  
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button Text="SignIn" ID="BtnSignIn" OnClick="BtnSignIn_Click" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
