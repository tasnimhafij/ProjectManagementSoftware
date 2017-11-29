<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignResourcePerson.aspx.cs" Inherits="ProjectManagementWebApp.UI.AssaignResourcePerson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <h1>Assign Resource Person </h1>
        </center>
    </div>
        <div>
            <center>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Select Project"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="projectDropDownList" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Select Resource Person"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="resourcePersonDropDownList" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            
                            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click"></asp:Button>
                            <br />
                            <asp:Label ID="messageLabel" runat="server" Text="L"></asp:Label>
                        </td>
                    </tr>
                </table>
                
            </center>
        </div>
    </form>
</body>
</html>
