<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyDateControl.ascx.cs" Inherits="ASP.NetDay2.MyDateControl" %>

<%@ OutputCache Duration="60" VaryByParam="none" %>

<table border="1" cellspacing="5">
    <tr>
        <td>
            <h2>User Control</h2>
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