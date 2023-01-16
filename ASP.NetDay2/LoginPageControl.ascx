    <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginPageControl.ascx.cs" Inherits="ASP.NetDay2.LoginPageControl" %>

<table>
    <tr>
        <td>
            <Label>Enter Email Id</Label> </td>
        <td>
            <asp:TextBox ID="TxtEmailId" runat="server" /></td>
    </tr>
    <tr>
        <td>
            <label>Enter Password</label></td>
        <td>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" /></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button Text="Signin" ID="BtnSignIn" runat="server" />
        </td>
        
    </tr>
</table>
