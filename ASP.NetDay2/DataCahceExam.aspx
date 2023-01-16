<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCahceExam.aspx.cs" Inherits="ASP.NetDay2.DataCahceExam" %>

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
                        <label>Enter your Name :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="StoreData" ID="BtnSubmit" OnClick="BtnSubmit_Click" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
