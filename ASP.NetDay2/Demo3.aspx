<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo3.aspx.cs" Inherits="ASP.NetDay2.Demo3" %>

<%@ Register Src="~/MyDateControl.ascx" TagPrefix="uc1" TagName="MyDateControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:MyDateControl runat="server" id="MyDateControl" />
        </div>
        <div>
            <table border="1" cellspacing="5">
    <tr>
        <td>
            <h2>Demo3</h2>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label Text="" ID="LblDateTime" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button Text="Change Date and Time" ID="BtnChange" OnClick="BtnChange_Click" runat="server" />
        </td>
    </tr>
</table>    
        </div>
    </form>
</body>
</html>
