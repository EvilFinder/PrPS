<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Registration.aspx.cs" Inherits="LogApplication.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />  
    <link rel="stylesheet" href="~/css/site.css" />
    <link href="Styles/Header.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <%--<header>
            <asp:Image ID="Image1" ImageUrl="~/BibTeX_logo.svg.png" runat="server" CssClass="img" />
            <p>Bibliographic System</p>
        </header>--%>
        <div>
            <p id="RegistrationLabel" style="margin-left: 460px; font-size:25px; ">Registration</p>
            </div>
        <div style=" width: auto;">
            
            <p id="LoginLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 150px; margin-left: 400px;">Login</p>

            <input id="LoginInput" name="UserLogin" type="text" style="display:inline;" />
        </div>
        <div>
            
            <p id="PasswordLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 114px; margin-left: 400px;">Password</p>

            <input id="PasswordInput" name="UserPassword" type="password" style="display:inline;" />
        </div>
        <div>
            
            <p id="ConfirmPasswordLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 25px; margin-left: 400px;">Confirm password</p>

            <input id="ConfirmPasswordInput" name="ConfirmPassword" type="password" style="display:inline;" />
        </div>
        <div>
            
            <p id="EmailLabel" style="text-align: center; font-size: 25px; display:inline; margin-right: 150px; margin-left: 400px;">Email</p>

            <input id="EmailInput" name="UserEmail" type="email" style="display:inline;" />
        </div>
        <div>
            <a href="Login.aspx" style="margin-left: 400px;">Login</a>
            <asp:Button ID="Button2" runat="server" style="margin-left: 142px; margin-top: 10px;" Height="35" Width="90" Text="Register" OnClick="Button1_Click" />
        </div>
            <%--<asp:Table ID="Table1" runat="server">
               
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label ID="Label1" runat="server" Text="Registration"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
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
                        <asp:Label ID="Label4" runat="server" Text="Confirm password"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow> 
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox4" TextMode="Email" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow> 
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">Login</asp:HyperLink>
                    </asp:TableCell>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                        <asp:Button ID="Button1" runat="server" Height="35" Width="90" Text="Register" OnClick="Button1_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>--%>
    </form>
</body>
</html>
