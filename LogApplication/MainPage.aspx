<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LogApplication.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Header.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Image ID="Image1" ImageUrl="~/BibTeX_logo.svg.png" runat="server" CssClass="img" />
            <p>Bibliographic System</p>
        </header>
        <div>
            <button id="Button1"></button>
        </div>
    </form>
</body>
</html>
