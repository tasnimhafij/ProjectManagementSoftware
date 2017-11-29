<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInUser.aspx.cs" Inherits="ProjectManagementWebApp.UI.LogInUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <h1>
                WELCOME TO PROJECT MANAGEMENT SOFTWARE
            </h1>
        </center>
    </div>
        <br/>
        <br/>
        <br/>
        <div>
            <center>
                <h3>Please LogIn</h3>
            </center>
        </div>
        <br/>
        <br/>
        <br/>
        <div>
            <center>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="logInButton1" runat="server" Text="LogIn" OnClick="logInButton1_Click"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
                    <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
