<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/HomeController.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div ng-app="demoApp" ng-controller="homeController">
        <h1>Welcome {{username}} to test application !!</h1>
        <table>

            <tr><td><a href="#" ng-click="profileedit()"  title="Profile">Profile</a></td></tr>
            <tr><td><a href="#" ng-click="messages()"  title="Messages">Messages</a></td></tr>
            <tr><td><a href="#" ng-click="logout()" title="Logout">Logout</a></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
