<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Login.aspx.cs" Inherits="LogApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/Header.css" rel="stylesheet" />
    <%--<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <meta name="description" content="" >
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" >
    <meta name="generator" content="Hugo 0.83.1" >
    <title>Signin Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/" >--%>

    

    <!-- Bootstrap core CSS -->
<%--<link href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" >

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180" >
<link rel="icon" href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png" >
<link rel="icon" href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png" >
<link rel="manifest" href="https://getbootstrap.com/docs/5.0/examples/sign-in//docs/5.0/assets/img/favicons/manifest.json" >
<link rel="mask-icon" href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3" >
<link rel="icon" href="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/img/favicons/favicon.ico" >
<meta name="theme-color" content="#7952b3" >
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="Styles/signin.css" rel="stylesheet" >--%>
</head>
<body class="text-center">
    <form id="form1" runat="server">
        <%--<header> 
            <asp:Image ID="Image1" ImageUrl="~/BibTeX_logo.svg.png" runat="server" CssClass="img" />
            <p>Bibliographic System</p>
        </header>--%>
        <div>
            <p id="FormLabel" style="margin-left: 460px; font-size:25px; ">Entrance form</p>
            </div>
        <div style=" width: auto;">
            
            <p id="LoginLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 70px; margin-left: 400px;">Login</p>

            <input id="LoginInput" name="UserLogin" type="text" style="display:inline;" />
        </div>
        <div>
            
            <p id="PasswordLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 35px; margin-left: 400px;">Password</p>

            <input id="PasswordInput" name="UserPassword" type="password" style="display:inline;" />
        </div>
        <div>
            <a href="Registration.aspx" style="margin-left: 400px;">Register</a>
            <asp:Button ID="Button1" runat="server" style="margin-left: 142px; margin-top: 10px;" Height="35" Width="90" Text="Sign in" OnClick="Button1_Click" />
        </div>
            <%--<asp:Table ID="Table1" runat="server">
            
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow> 
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registration.aspx" runat="server">Register</asp:HyperLink>
                    </asp:TableCell>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                        </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>--%>
    </form>
    <%--<main class="form-signin">
  <form>
    <img class="mb-4" src="https://getbootstrap.com/docs/5.0/examples/sign-in/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57" />
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" name="UserLogin" class="form-control" id="floatingInput" placeholder="name@example.com" />
      <label for="floatingInput">Login</label>
    </div>
    <div class="form-floating">
      <input type="password" name="UserPassword" class="form-control" id="floatingPassword" placeholder="Password" />
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me" /> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit" onclick="Button1_Click">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>
    <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>--%>
</body> 
</html>
