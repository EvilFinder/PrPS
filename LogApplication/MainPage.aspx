<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LogApplication.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Header.css" rel="stylesheet" />
    <link href="Styles/mainPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <%--<header>
            <asp:Image ID="Image1" ImageUrl="~/BibTeX_logo.svg.png" runat="server" CssClass="img" />
            <p>Bibliographic System</p>
        </header>--%>
    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="UserPage.aspx">Account</a>
        <a href="#contact">Contact</a>
        <div class="search-container" >
            <form action="/action_page.php">
            <input type="text" placeholder="Search.." name="search" />
            <button type="submit"><i class="fa fa-search" onclick="Search_Click"></i></button>
            </form>
        </div>
    </div>
    <div>
        <b style="font-size: 30px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Latest publications</b>
    </div>
        <div>

        </div>
    </form>
</body>
</html>
