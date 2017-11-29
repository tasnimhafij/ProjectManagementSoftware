<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectManagerUI.aspx.cs" Inherits="ProjectManagementWebApp.UI.ProjectManagerUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <center>
        <h1>Hello Project Manager!</h1>
        <h2>Please Select One</h2>
    </center>
        </div>
        <div>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                    </div>
                    <ul class="nav navbar-nav">
                             <li class="active"><a href="AddProject.aspx">ADD USER</a></li>
                             <li><a href="AssignResourcePerson.aspx">Assign User</a></li>
                             
                    </ul>

                </div>
            </nav>
        </div>
    </form>
</body>
</html>
