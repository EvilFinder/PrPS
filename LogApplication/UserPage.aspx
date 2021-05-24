<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="LogApplication.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    


    

    <form id="form1" runat="server">
        <div id="Menu">
             <ul>
                 <li> <a href="MainPage.aspx">Home</a></li>
                 <li> <a href="UserPage.aspx">Account</a></li>
             </ul>    
      
        </div>
        <div>
            <asp:Table ID="Table1" runat="server" style="width: 300px; margin-left: 20px; margin-top: 15px;" HorizontalAlign="Right">
                <asp:TableRow>
                    <asp:TableCell style="padding-left: 40px;">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click"></asp:Button>
                    </asp:TableCell>
                </asp:TableRow>
                
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Image ID="Image1" ImageUrl="~/no-avatar.jpg" Height="150" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
