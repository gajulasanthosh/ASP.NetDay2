<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo2.aspx.cs" Inherits="ASP.NetDay2.Demo2" %>

<%@ Register Src="~/LoginPageControl.ascx" TagPrefix="uc1" TagName="LoginPageControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:LoginPageControl runat="server" id="LoginPageControl" />
        </div>
    </form>
</body>
</html>
