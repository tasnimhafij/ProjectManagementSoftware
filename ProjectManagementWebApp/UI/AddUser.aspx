<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="ProjectManagementWebApp.UI.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function updateTextbox() {
            var txt1 = document.getElementById('<%= emailTextBox.ClientID %>');
            var txt2 = document.getElementById('<%= defaultPasswordTextBox.ClientID %>');
            txt2.value = txt1.value+"123";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <div>
            <h1>ADD USER</h1>
        </div>
            <div>
        <table style="width: 295px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox"  runat="server" Text="" CssClass="txtBox" CausesValidation="True" onBlur="updateTextbox()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Default Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="defaultPasswordTextBox" runat="server" CssClass="txtBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                   <asp:RadioButton ID="RadioButton1" runat="server" Text="Active" GroupName="pgms"></asp:RadioButton>
                    <asp:RadioButton ID="RadioButton2" runat="server"  Text="Inactive" GroupName="pgms" />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Designation"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="designationDropDownList" runat="server" Height="17px" Width="122px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
               <td colspan="2">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click"></asp:Button>
               </td> 
            </tr>
            </table>
                <center>  <asp:Label ID="messageLabel" runat="server"></asp:Label></center>  
                
        
                <asp:GridView ID="usersGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowPaging="True" OnPageIndexChanging="usersGridView_PageIndexChanging" PageSize="5">
                <Columns>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="idHiddenField" Value='<%#Eval("UserId") %>'/>
                            <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("Designation") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Reset Password">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("DefaultPassword") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="updateLinkButton" Text="Update" OnClick="updateLinkButton_Click"></asp:LinkButton>
                            <asp:LinkButton runat="server" ID="deleteLinkButton" Text="Delete" OnClick="deleteLinkButton_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
     </div>
    </div>
        </center>
    </form>
</body>
</html>
