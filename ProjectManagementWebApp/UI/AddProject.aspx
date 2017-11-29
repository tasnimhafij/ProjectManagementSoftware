<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="ProjectManagementWebApp.UI.AddProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#startDateTextbox").datepicker()


          $("#endDateTextbox").datepicker();
      });
  
</script> --%>
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <center><h1>ADD PROJECT</h1></center>
    </div>
        <br/>
        <br/>
        <div>
            <center>
                <table>
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
                        <asp:Label ID="Label2" runat="server" Text="Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="codeTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox id="descriptionTextArea" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                    </td>
                </tr>
                <tr>
                   <td>
                       <asp:Label ID="Label4" runat="server" Text="Possible Start Date"></asp:Label>

                   </td> 
                    <td>
                       
                        <asp:TextBox ID="startDateTextbox" runat="server"></asp:TextBox>  
                <ajaxToolkit:CalendarExtender ID="startDateTextboxCalendarExtender" runat="server" Enabled="True"  
                    TargetControlID="startDateTextbox" Format="yyyy/MM/dd">  
                </ajaxToolkit:CalendarExtender>  
                    </td>
                </tr>
                 <tr>
                   <td>
                       <asp:Label ID="Label5" runat="server" Text="Possible End Date"></asp:Label>

                   </td> 
                    <td>
                        
                        <asp:TextBox ID="endDateTextbox" runat="server"></asp:TextBox>  
                <ajaxToolkit:CalendarExtender ID="endDateTextbox_CalendarExtender" runat="server" Enabled="True"  
                    TargetControlID="endDateTextbox" Format="yyyy/MM/dd">  
                </ajaxToolkit:CalendarExtender> 
                    </td>
                </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Duration(In Dayes)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="durationTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                        <td colspan="2">
                            
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            
                        </td>
                    </tr>
                    <td>
                    <asp:Label ID="Label7" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                   <asp:RadioButton ID="notStartedRadioButton" runat="server" Text="Not Started" GroupName="pgms"></asp:RadioButton>
                    <br/>
                    <asp:RadioButton ID="startedRadioButton2" runat="server" Text="Started" GroupName="pgms"></asp:RadioButton>
                    <br/>
                    <asp:RadioButton ID="completedRadioButton3" runat="server" Text="Completed" GroupName="pgms"></asp:RadioButton>
                    <br/>
                    <asp:RadioButton ID="cancelledRadioButton4" runat="server" Text="Cancelled" GroupName="pgms"></asp:RadioButton>
                
                </td>
                    <tr>
                        <td colspan="2">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Width="66px"></asp:Button> 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="messagelabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
            </table>
            </center>
        </div>
        
    </form>
</body>
</html>
